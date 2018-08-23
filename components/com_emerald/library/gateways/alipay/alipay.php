<?php
/**
 * Emerald Payment Plugin by MintJoomla
 * a plugin for Joomla! 1.7 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 *
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license   GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.menu');

class EmeraldGatewayAlipay extends EmeraldGateway
{
	function accept(&$subscription, $plan)
	{
		$this->log('Start check AliPay');

		if(!$this->_verifySign($_POST))
		{
			$this->setError(JText::_('EMR_CANNOT_VERYFY'));
			$this->log('Alipay: Verification of sign failed', $_POST);

			return FALSE;
		}
		if(!$this->_verifyNotification($_POST))
		{
			$this->setError(JText::_('EMR_CANNOT_VERYFY'));
			$this->log('Alipay: Verification of notification failed', $_POST);

			return FALSE;
		}

		$subscription->gateway_id = $this->get_gateway_id();

		$post = JFactory::getApplication()->input->post;
		if($post->get('trade_status') == 'TRADE_FINISHED')
		{
			$subscription->published = 1;
		}
		if($post->get('trade_status') == 'TRADE_CLOSED')
		{
			$subscription->published = 0;
		}

		$this->log('End alipay check', $subscription);

		return TRUE;
	}

	function pay($amount, $name, $subscription, $plan)
	{
		if(!$this->params->get('partner'))
		{
			$this->setError(JText::_('AP_ERR_NOPARENT'));

			return FALSE;
		}
		if(!JFile::exists($this->_getCertFile()))
		{
			$this->setError(JText::_('AP_ERR_NOCERT'));

			return FALSE;
		}

		$param = array(
			"service"        => $this->params->get('service'),
			"partner"        => $this->params->get('partner'),
			"return_url"     => $this->_get_return_url($subscription->id),
			"notify_url"     => $this->_get_notify_url($subscription->id),
			"subject"        => $name,
			"body"           => $name,
			"out_trade_no"   => $subscription->id,
			"currency"       => $this->params->get('currency'),
			"_input_charset" => $this->params->get('charset', 'utf-8'),
			"seller_email"   => $this->params->get('email'),
			"payment_type"   => "1",
		);
		switch($this->params->get('service'))
		{
			case "create_partner_trade_by_buyer":

				$param["price"]             = $amount;
				$param["quantity"]          = "1";
				$param["logistics_type"]    = "EXPRESS";
				$param["logistics_fee"]     = "0.00";
				$param["logistics_payment"] = "BUYER_PAY";
				$param["receive_name"]      = JFactory::getUser()->get('username');


				$invoice = new EmeraldModelsEmInvoiceTo();
				$data    = $invoice->getText($subscription->invoice_id);

				$param['receive_address'] = $data->fields->get('address', 'n/a') . ', ' . $data->fields->get('city') . ', ' . $data->fields->get('country');
				$param['receive_phone']   = $data->fields->get('phone', 'n/a');
				$param['receive_zip']     = $data->fields->get('zip', 'n/a');

				break;
			case "create_direct_pay_by_user":
			case "create_forex_trade":
				$param["total_fee"] = $amount;
				break;
		}


		$param["sign"]      = $this->_getSign($param);
		$param["sign_type"] = 'MD5';

		$url = strtolower($this->params->get('transport')) . "://www.alipay.com/cooperate/gateway.do?";
		if($this->params->get('demo'))
		{
			$url = "https://mapi.alipay.net/gateway.do?";
		}
		JFactory::getApplication()->redirect($url . http_build_query($param));
	}

	function get_gateway_id()
	{
		$post = JFactory::getApplication()->input;

		return trim($post->get('trade_no'));
	}

	private function _getCertUrl()
	{
		return str_replace(JPATH_ROOT . '/', JUri::root(), $this->_getCertFile());
	}

	private function _getCertFile()
	{
		return str_replace('\\', '/', JPATH_ROOT . '/' . ltrim($this->params->get('cert'), '/\\'));
	}

	private function _verifyNotification($array)
	{
		if(empty($array["notify_id"]))
		{
			return FALSE;
		}

		$transport = 'https://www.alipay.com/cooperate/gateway.do?service=notify_verify&';
		if($this->params->get('transport') == 'http')
		{
			$transport = 'http://notify.alipay.com/trade/notify_query.do?';
		}

		$transport .= "partner=" . $this->params->get('partner') . "&notify_id=" . $array['notify_id'];

		$curl = curl_init($transport);

		curl_setopt($curl, CURLOPT_HEADER, 0);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, TRUE);
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 2);
		curl_setopt($curl, CURLOPT_CAINFO, $this->_getCertUrl());
		//curl_setopt($curl, CURLOPT_POST, TRUE);
		//curl_setopt($curl, CURLOPT_POSTFIELDS, $array);

		$response = curl_exec($curl);
		curl_close($curl);

		if(preg_match("/true$/i", $response))
		{
			return TRUE;
		}
		$this->log('Alipay: verification response', $response);

		return FALSE;
	}

	private function _verifySign($array)
	{
		if(strtolower($this->_getSign($array)) == strtolower($array['sign']))
		{
			return TRUE;
		}

		return FALSE;
	}

	private function _getSign($array)
	{
		$array  = $this->_paramsFilter($array);
		$array  = $this->_paramsSort($array);
		$string = $this->_createLinkstring($array);
		$string .= $this->params->get('key');

		return md5($string);
	}

	private function _createLinkstring($para)
	{
		$arg = array();
		foreach($para AS $key => $val)
		{
			$arg[] = $key . "=" . $val;
		}
		$arg = implode("&", $arg);

		if(get_magic_quotes_gpc())
		{
			$arg = stripslashes($arg);
		}

		return $arg;
	}

	private function _paramsFilter($para)
	{
		$para_filter = array();
		while(list ($key, $val) = each($para))
		{
			if($key == "sign" || $key == "sign_type" || $val == "")
				continue;
			else    $para_filter[$key] = $para[$key];
		}

		return $para_filter;
	}

	private function _paramsSort($para)
	{
		ksort($para);
		reset($para);

		return $para;
	}
}