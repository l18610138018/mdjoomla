<?php

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );
 /*
 * @package    miniOrange
 * @subpackage Plugins
 * @license    GNU/GPLv3
 * @copyright  Copyright 2015 miniOrange. All Rights Reserved.
*/
jimport( 'joomla.plugin.plugin' );
 
/**
 * miniOrange SAML System plugin
 */
class plgSystemSamlredirect extends JPlugin
{
	
	public function onAfterRoute(){
		
		$user = JFactory::getUser();
		$app = JFactory::getApplication('site');
		$app->initialise();
		if (!$app->isAdmin()){
			if(!$user->id) {
				jimport('miniorangesamlplugin.utility.Utilities');
		
				$customerResult = Utilities::getCustomerDetails();
				
			}
		}   
	}
	
	public function onAfterInitialise()
	{
		$get = JFactory::getApplication()->input->get->getArray();
		jimport('miniorangesamlplugin.utility.Utilities');
		
		if (isset($get['morequest']) && $get['morequest']=='sso') {
			$pluginconfig = Utilities::getSAMLConfiguration();
			$this->sendSamlRequest($pluginconfig);
		}
		else if (isset($get['morequest']) && $get['morequest']=='metadata') {
			$pluginconfig = Utilities::getSAMLConfiguration();
			$this->generateMetadata($pluginconfig);
		} else if (isset($get['morequest']) && $get['morequest']=='acs') {
			$pluginconfig = Utilities::getSAMLConfiguration();
			$this->getSamlResponse($pluginconfig);
		} 
		
	}
	
	function sendSamlRequest($pluginconfig){
		
		$sp_base_url = ""; 
		$sp_entity_id = "";
		
		$siteUrl = JURI::root();
		
		$sp_base_url = $siteUrl;
		
			$sp_entity_id = $siteUrl.'plugins/authentication/miniorangesaml/';
		
		if (!defined('_JDEFINES')) {
			require_once JPATH_BASE . '/includes/defines.php';
		}
		require_once JPATH_BASE . '/includes/framework.php';
			
		// Instantiate the application.
		$app = JFactory::getApplication('site');
		$app->initialise();
		$login_url = $sp_base_url;
		
		$user = JFactory::getUser(); #Get current user info
		
		$acsUrl = $sp_base_url . '?morequest=acs';
		$ssoUrl = $pluginconfig['single_signon_service_url'];
		$sso_binding_type = $pluginconfig['binding'];
		$name_id_format = $pluginconfig['name_id_format'];
				
		$sendRelayState = $this->getRelayState($sp_base_url, $_REQUEST);
		
		$samlRequest = Utilities::createAuthnRequest($acsUrl, $sp_entity_id, $ssoUrl, 'false', $sso_binding_type, $name_id_format);
		
		$this->sendSamlRequestByBindingType($samlRequest, $sso_binding_type, $sendRelayState,  $ssoUrl);
	}
	
	function sendSamlRequestByBindingType($samlRequest, $sso_binding_type, $sendRelayState, $ssoUrl){
		
		if(empty($sso_binding_type) || $sso_binding_type == 'HttpRedirect') {
						
			$samlRequest = "SAMLRequest=" . $samlRequest . "&RelayState=" . $sendRelayState;
			// . '&SigAlg='. urlencode(XMLSecurityKey::RSA_SHA256);
			$param =array( 'type' => 'private');
			// $key = new XMLSecurityKey(XMLSecurityKey::RSA_SHA256, $param);
			// $certFilePath = JPATH_BASE . DIRECTORY_SEPARATOR. 'plugins'. DIRECTORY_SEPARATOR. 'authentication' . DIRECTORY_SEPARATOR . 'miniorangesaml' . DIRECTORY_SEPARATOR . 'saml2' . DIRECTORY_SEPARATOR .'cert' . DIRECTORY_SEPARATOR . 'sp-key.key';
			// $key->loadKey($certFilePath, TRUE);
			// $objXmlSecDSig = new XMLSecurityDSig();
			// $signature = $key->signData($samlRequest);
			// $signature = base64_encode($signature);
			$redirect = $ssoUrl;
			if (strpos($ssoUrl,'?') !== false) {
				$redirect .= '&';
			} else {
				$redirect .= '?';
			}
			$redirect .=  $samlRequest;
			// . '&Signature=' . urlencode($signature);
			header('Location: '.$redirect);
			exit();
			
		}else{
			
			// $privateKeyPath = JPATH_BASE . DIRECTORY_SEPARATOR. 'plugins'. DIRECTORY_SEPARATOR. 'authentication' . DIRECTORY_SEPARATOR . 'miniorangesaml' . DIRECTORY_SEPARATOR . 'saml2' . DIRECTORY_SEPARATOR .'cert' . DIRECTORY_SEPARATOR . 'sp-key.key';
			// $publicCertPath = JPATH_BASE. DIRECTORY_SEPARATOR. 'plugins'. DIRECTORY_SEPARATOR. 'authentication' . DIRECTORY_SEPARATOR . 'miniorangesaml' . DIRECTORY_SEPARATOR . 'saml2' . DIRECTORY_SEPARATOR . 'cert' . DIRECTORY_SEPARATOR . 'sp-certificate.crt';
			$base64EncodedXML = Utilities::signXML( $samlRequest, $publicCertPath, $privateKeyPath, 'NameIDPolicy' );
			Utilities::postSAMLRequest($ssoUrl, $samlRequest, $sendRelayState);
						
		}
	}
	
	function getRelayState($sp_base_url, $request){
		
		$sendRelayState = $sp_base_url;
		
		if(isset($request['q'])) {
			if($request['q'] == 'test_config'){
				$sendRelayState = 'testValidate';
			}
		}
		
		if(isset($request['RelayState'])){
			$sendRelayState = $request['RelayState'];
		}
		
		return $sendRelayState;
	}
	
	function getSamlResponse($pluginconfig){
		$post = JFactory::getApplication()->input->post->getArray();
		if (!defined('_JDEFINES')) {
			require_once JPATH_BASE . '/includes/defines.php';
		}
		require_once JPATH_BASE . '/includes/framework.php';
		
		$authBase = JPATH_BASE. DIRECTORY_SEPARATOR. 'plugins'. DIRECTORY_SEPARATOR. 'authentication' . DIRECTORY_SEPARATOR .		 'miniorangesaml';
		include_once $authBase . DIRECTORY_SEPARATOR  . 'saml2' . DIRECTORY_SEPARATOR. 'Response.php';
		
		jimport('miniorangesamlplugin.utility.encryption');
		jimport ( 'joomla.application.application' );
		jimport ( 'joomla.html.parameter' );
		
		$sp_base_url = ""; 
		$sp_entity_id = "";
		if(isset($pluginconfig['sp_base_url'])){
			$sp_base_url= $pluginconfig['sp_base_url'];
			$sp_entity_id = $pluginconfig['sp_entity_id'];
		}
		
		$siteUrl = JURI::root();
		
		if(empty($sp_base_url))
			$sp_base_url = $siteUrl;
		if(empty($sp_entity_id))
			$sp_entity_id = $siteUrl.'plugins/authentication/miniorangesaml/';
		
		$app = JFactory::getApplication('site');
		$app->initialise();
		$get = JFactory::getApplication()->input->get->getArray();
		if (array_key_exists ( 'SAMLResponse', $post )) {
			$this->validateSamlResponse($post, $sp_base_url, $sp_entity_id, $pluginconfig, $app);
		}else{
			throw new Exception ( 'Missing SAMLRequest or SAMLResponse parameter.' );
		}
	}
	
	function validateSamlResponse($post, $sp_base_url, $sp_entity_id, $attribute, $app) {
		
		$samlResponse = $post ['SAMLResponse'];
				
		if (array_key_exists ( 'RelayState', $_REQUEST ) && ($_REQUEST['RelayState'] != '')) {
			$relayState = $_REQUEST ['RelayState'];
		} else {
			$relayState = $sp_base_url;
		}
		
		$samlResponse = base64_decode ( $samlResponse );
		$document = new DOMDocument ();
		$document->loadXML ( $samlResponse );
		$samlResponseXml = $document->firstChild;
		
		$doc = $document->documentElement;
		$xpath = new DOMXpath($document);
		$xpath->registerNamespace('samlp', 'urn:oasis:names:tc:SAML:2.0:protocol');
		$xpath->registerNamespace('saml', 'urn:oasis:names:tc:SAML:2.0:assertion');
		
		$status = $xpath->query('/samlp:Response/samlp:Status/samlp:StatusCode', $doc);
		$statusString = $status->item(0)->getAttribute('Value');
		$statusChildString = '';
		if($status->item(0)->firstChild !== null){
			$statusChildString = $status->item(0)->firstChild->getAttribute('Value');
		}
		
		$stat = explode(":",$statusString);
		$status = $stat[7];
		
		if($status!="Success"){
			if(!empty($statusChildString)){
				$stat = explode(":", $statusChildString);
				$status = $stat[7];
			}
			$this->show_error_message($status, $relayState);
		}
		
		
		$acsUrl = $sp_base_url . '?morequest=acs';
		
		$certFromPlugin = $attribute['certificate'];
		if(!empty($certFromPlugin)){
			$certFromPlugin = Utilities::sanitize_certificate ( $certFromPlugin );
		}
		$certfpFromPlugin = XMLSecurityKey::getRawThumbprint ( $certFromPlugin );
		$samlResponse = new SAML2_Response ( $samlResponseXml );
		
		$responseSignatureData = $samlResponse->getSignatureData();
			
		$assertionSignatureData = current($samlResponse->getAssertions())->getSignatureData();
		/* convert to UTF-8 character encoding */
		$certfpFromPlugin = iconv ( "UTF-8", "CP1252//IGNORE", $certfpFromPlugin );
				
		/* remove whitespaces */
		$certfpFromPlugin = preg_replace ( '/\s+/', '', $certfpFromPlugin );
		
		// /* Validate signature */
			if(!empty($certfpFromPlugin)) {
		if(!empty($responseSignatureData)) {
				$validSignature = Utilities::processResponse($acsUrl, $certfpFromPlugin, $responseSignatureData, $samlResponse, $certFromPlugin, $relayState);
				if($validSignature === FALSE) {
					echo "Invalid signature in the SAML Response.<br><br>";
					exit;
				}
		}
			
		if(!empty($assertionSignatureData)) {
				$validSignature = Utilities::processResponse($acsUrl, $certfpFromPlugin, $assertionSignatureData, $samlResponse, $certFromPlugin, $relayState);
				if($validSignature === FALSE) {
					echo "Invalid signature in the SAML Assertion.<br><br>";
					exit;
				}
		}
			}
		
		// if(empty($assertionSignatureData) && empty($responseSignatureData) ) {
			// if(!empty($certFromPlugin)){
				// echo "No signature in SAML Response or Assertion.";
				// exit;
			// }
		// }
		
		// verify the issuer and audience from saml response
		$issuer = $attribute['idp_entity_id']; 
				
		Utilities::validateIssuerAndAudience ( $samlResponse, $sp_entity_id, $issuer, $relayState);
		
		$username = current ( current ( $samlResponse->getAssertions () )->getNameId () );
		$attrs = current ( $samlResponse->getAssertions () )->getAttributes ();
		$attrs ['NAME_ID'] = current ( current ( $samlResponse->getAssertions () )->getNameId () );
		
		if($relayState=='testValidate'){
			Utilities::mo_saml_show_test_result($username,$attrs,$sp_base_url);
		}
					
		$sessionIndex = current ( $samlResponse->getAssertions () )->getSessionIndex ();
		$attrs ['ASSERTION_SESSION_INDEX'] = $sessionIndex;
		
		$email = $username;
		$name = '';
		$saml_groups = '';
		
		$NameMapping = (string) $attribute['name'];
		$usernameMapping = $attribute['username'];
		$mailMapping = $attribute['email'];
		
		if (!empty($usernameMapping) && isset($attrs[$usernameMapping]) && !empty($attrs[$usernameMapping])) {
			$username = $attrs[$usernameMapping];
			if(is_array($username))
				$username = $username[0];
		}
		if (!empty($mailMapping) && isset($attrs[$mailMapping]) && !empty($attrs[$mailMapping])) {
			$email = $attrs[$mailMapping];
			if(is_array($email))
				$email = $email[0];
		}
		
		if (!empty($NameMapping) && isset($attrs[$NameMapping]) && !empty($attrs[$NameMapping])) {
			$name = $attrs[$NameMapping];
		
		}
			if(is_array($name)){
				$name = $name[0];
		}
	
		if (!empty($groupsMapping) && isset($attrs[$groupsMapping]) && !empty($attrs[$groupsMapping])) {
			$saml_groups = $attrs[$groupsMapping];
		} else {
			$saml_groups = array();
		}
		
		if(isset($attribute['enable_email']) && $attribute['enable_email']==0){
			$matcher = 'username';
		}else{
			$matcher = 'email';
		}
		
		
		$result = Utilities::get_user_from_joomla($matcher,$username,$email);
		
		$login_url = isset($relayState) ? $relayState : $sp_base_url;
		
		if($result){
			$this->loginCurrentUser($result, $attrs, $login_url, $name, $username, $email, $matcher, $app);
		}else{
			$this->RegisterCurrentUser($attrs, $login_url, $name, $username, $email, $saml_groups, $matcher, $app);
		}
		
	}
	
	function loginCurrentUser($result, $attrs, $login_url, $name, $username, $email, $matcher, $app){
		
		$user = JUser::getInstance($result->id);
		
		
		Utilities::updateCurrentUserName($user->id, $name);
		
		//$this->updateUserProfileAttributes($user->id, $attrs, $user_profile_attributes);
		
		$session = JFactory::getSession(); #Get current session vars
		// Register the needed session variables
		$session->set('user',$user);
		$session->set('MO_SAML_NAMEID', $attrs['NAME_ID']);
		$session->set('MO_SAML_SESSION_INDEX', $attrs['ASSERTION_SESSION_INDEX']);
		
		$app->checkSession();
		$sessionId = $session->getId();
		Utilities::updateUsernameToSessionId($user->id,$user->username, $sessionId);
		
		$user->setLastVisit();
		
			$app->redirect(urldecode($login_url));
		
	}
	
	function show_error_message($statusCode, $relayState){
		if($relayState=='testValidate'){

			echo '<div style="font-family:Calibri;padding:0 3%;">';
			echo '<div style="color: #a94442;background-color: #f2dede;padding: 15px;margin-bottom: 20px;text-align:center;border:1px solid #E6B3B2;font-size:18pt;"> ERROR</div>
			<div style="color: #a94442;font-size:14pt; margin-bottom:20px;"><p><strong>Error: </strong> Invalid SAML Response Status.</p>
			<p><strong>Causes</strong>: Identity Provider has sent \''.$statusCode.'\' status code in SAML Response. </p>
							<p><strong>Reason</strong>: '.$this->get_status_message($statusCode).'</p><br>
			</div>

			<div style="margin:3%;display:block;text-align:center;">
			<div style="margin:3%;display:block;text-align:center;"><input style="padding:1%;width:100px;background: #0091CD none repeat scroll 0% 0%;cursor: pointer;font-size:15px;border-width: 1px;border-style: solid;border-radius: 3px;white-space: nowrap;box-sizing: border-box;border-color: #0073AA;box-shadow: 0px 1px 0px rgba(120, 200, 230, 0.6) inset;color: #FFF;"type="button" value="Done" onClick="self.close();"></div>';
							exit;
		  }
		  else{
				if($statusCode == 'RequestDenied' ){
					echo 'You are not allowed to login into the site. Please contact your Administrator.';
					exit;
				}else{
					echo 'We could not sign you in. Please contact your Administrator.';
					exit;
				}

		  }
	}
	
	function get_status_message($statusCode){
		switch($statusCode){
			case 'RequestDenied':
				return 'You are not allowed to login into the site. Please contact your Administrator.';
				break;
			case 'Requester':
				return 'The request could not be performed due to an error on the part of the requester.';
				break;
			case 'Responder':
				return 'The request could not be performed due to an error on the part of the SAML responder or SAML authority.';
				break;
			case 'VersionMismatch':
				return 'The SAML responder could not process the request because the version of the request message was incorrect.';
				break;
			default:
				return 'Unknown';
		}
	}
	
	function generateMetadata($attribute){
		
		$sp_base_url = ""; 
		$sp_entity_id = "";
		$name_id_format = "";
		if(isset($attribute['sp_base_url'])){
			$sp_base_url= $attribute['sp_base_url'];
			$sp_entity_id = $attribute['sp_entity_id'];
			$name_id_format = $attribute['name_id_format'];
		}
		
		$siteUrl = JURI::root();
		
		if(empty($sp_base_url))
			$sp_base_url = $siteUrl;
		if(empty($sp_entity_id))
			$sp_entity_id = $siteUrl.'plugins/authentication/miniorangesaml/';
		
		$acs_url = $sp_base_url . '?morequest=acs';
		$logout_url =  $sp_base_url.'index.php?option=com_users&amp;task=logout';
		
		$certificate = JPATH_BASE . DIRECTORY_SEPARATOR. 'plugins'. DIRECTORY_SEPARATOR. 'authentication' . DIRECTORY_SEPARATOR . 'miniorangesaml' . DIRECTORY_SEPARATOR . 'saml2' . DIRECTORY_SEPARATOR .'cert' . DIRECTORY_SEPARATOR . 'sp-certificate.crt';
		
		$certificate = file_get_contents( $certificate );
		$certificate = Utilities::desanitize_certificate($certificate);
		header('Content-Type: text/xml');
		echo '<?xml version="1.0"?>
		<md:EntityDescriptor xmlns:md="urn:oasis:names:tc:SAML:2.0:metadata" validUntil="2020-10-28T23:59:59Z" cacheDuration="PT1446808792S" entityID="' . $sp_entity_id . '">
		  <md:SPSSODescriptor AuthnRequestsSigned="false" WantAssertionsSigned="true" protocolSupportEnumeration="urn:oasis:names:tc:SAML:2.0:protocol">
			<md:NameIDFormat>urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified</md:NameIDFormat>
			<md:NameIDFormat>urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress</md:NameIDFormat>
			<md:NameIDFormat>urn:oasis:names:tc:SAML:1.1:nameid-format:transient</md:NameIDFormat>
			<md:AssertionConsumerService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="' . $acs_url . '" index="1"/>
		  </md:SPSSODescriptor>
		  <md:Organization>
			<md:OrganizationName xml:lang="en-US">miniOrange</md:OrganizationName>
			<md:OrganizationDisplayName xml:lang="en-US">miniOrange</md:OrganizationDisplayName>
			<md:OrganizationURL xml:lang="en-US">http://miniorange.com</md:OrganizationURL>
		  </md:Organization>
		  <md:ContactPerson contactType="technical">
			<md:GivenName>miniOrange</md:GivenName>
			<md:EmailAddress>info@miniorange.com</md:EmailAddress>
		  </md:ContactPerson>
		  <md:ContactPerson contactType="support">
			<md:GivenName>miniOrange</md:GivenName>
			<md:EmailAddress>info@miniorange.com</md:EmailAddress>
		  </md:ContactPerson>
		</md:EntityDescriptor>';
		exit();
	}

	function RegisterCurrentUser($attrs, $login_url, $name, $username, $email, $saml_groups, $matcher, $app){
		
		$role_mapping = Utilities::getRoleMapping();
		$default_group  = 2;
		if(isset($role_mapping['mapping_value_default']))
			$default_group = $role_mapping['mapping_value_default'];
		
		$role_mapping_key_value = array();
		if(isset($role_mapping['role_mapping_key_value']))
			$role_mapping_key_value = json_decode($role_mapping['role_mapping_key_value']);
		
		$enable_saml_role_mapping = 0;
		if(isset($role_mapping['enable_saml_role_mapping']))
			$enable_saml_role_mapping = json_decode($role_mapping['enable_saml_role_mapping']);
		
		// user data
		$data['name'] = (isset($name) && !empty($name)) ? $name : $username;
		$data['username'] = $username;
		$data['email'] = $data['email1'] = $data['email2'] = JStringPunycode::emailToPunycode($email);
		$data['password'] = $data['password1'] = $data['password2'] = JUserHelper::genRandomPassword();
		$data['activation'] = '0';
		$data['block'] = '0';
		
		if($enable_saml_role_mapping==1){
			$groups = Utilities::get_mapped_groups($role_mapping_key_value , $saml_groups);
			if (empty($groups)) {
				$data['groups'][] = $default_group;
			}else{
				foreach ($groups as $group) {
					$data['groups'][] = $group;
				}
			}
		}
		
		// Get the model and validate the data.
		jimport('joomla.application.component.model');

		if (!defined('JPATH_COMPONENT')) {
			define('JPATH_COMPONENT', JPATH_BASE . '/components/');
		}
		
		$user = new JUser;
		//Write to database
		if(!$user->bind($data)) {
			//print_r($user->getError());exit;
			throw new Exception("Could not bind data. Error: " . $user->getError());
		}
		if (!$user->save()) {
			//print_r($user->getError());exit;
			$siteUrl = JURI::root();
			ob_end_clean();
			$siteUrl = $siteUrl. '/plugins/authentication/miniorangesaml/';
			echo '<div style="font-family:Calibri;padding:0 3%;">';
			echo '<div style="color: #a94442;background-color: #f2dede;padding: 15px;margin-bottom: 20px;text-align:center;border:1px solid #E6B3B2;font-size:18pt;">
			<img style="width:15;"src="'. $siteUrl . 'images/wrong.png"> ERROR</div>
			<div style="color: #a94442;font-size:14pt; margin-bottom:20px;"><p><strong>Error: </strong>Could not save user. '. $user->getError().'</p>
			<p>You are receiving this error because your email address is invalid.</p>
			<p>If you have checked your email address and the error still persists then please report following error to your System Administrator:
					<ul>
					<li>Attribute name for e-mail should be NAME_ID only.</li>
					<li>Please change the attribute name in your IdP.</li> <li>You can Upgrade to <b>Premium</b> version if you wish to create custom attribute name for e-mail.</li></ul>
					</p>

				</div>
				<div style="text-align:center;"><a href="index.php" target="_blank">Back to Home</a></div>';
			exit;
			
		}
		
		
		//Utilities::updateActivationStatusForUser($username);
		
		$result = Utilities::get_user_from_joomla($matcher,$username,$email);
		if($result){
			$user = JUser::getInstance($result->id);
			
			//$this->updateUserProfileAttributes($user->id, $attrs, $user_profile_attributes);
			
			$session = JFactory::getSession(); #Get current session vars
			// Register the needed session variables
			$session->set('user',$user);
			$session->set('MO_SAML_NAMEID', $attrs['NAME_ID']);
			$session->set('MO_SAML_SESSION_INDEX', $attrs['ASSERTION_SESSION_INDEX']);
			
			$app->checkSession();
			$sessionId = $session->getId();
			Utilities::updateUsernameToSessionId($user->id,$user->username, $sessionId);
			
			/* Update Last Visit Date */
			$user->setLastVisit();
			$app->redirect(urldecode($login_url), "Welcome $user->username", 'message');
		}
		
	}
	
	
}