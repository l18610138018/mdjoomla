<?php


if (isset($_SESSION['auth']["username"]))
{ echo "Welcome <a href='index.php?option=com_user&view=user&task=edit'>" . $_SESSION['auth']["username"] . "</a>!"; }
else
{ echo "<a href='index.php?option=com_user&view=login'>Log in</a>"; }


 //session_start();
////$_COOKIE['joomla_user_state']="logged_in";
 //   print_r($_SESSION);
  //  print_r($_COOKIE);
///header('location:index.php');*/
    $cookie_path = './';
    $vars['username'] = 'admin';
    $vars['password'] = 'admin123';
    $vars['return'] = 'MTAx';
    $method_post = true;
    $url = 'hppts://mdtest.mindme.com.cn/mdjoonla/index.php/2018-07-20-03-22-33?task=user.login';
    $ch = curl_init();
    $params[CURLopt_URL] = $url;
    $params[CURLOPT_HEADER] = true;
    $params[CURL_RETURNTRANSFER] = true;
    $params[CURLOPT_FOLLOWLOCATION] = true;
    $params[CURLOPT_USERAGENT] = 'Mozilla/5.0 (Windows NT 5.1;rv:9.0.1) Gecko/20100101 Firefox/9.0.1';
    $postfields = '';
    foreach ($vars as $key => $value){
            $postfields .= urlencode($key).'='.urlencode($value).'&';

            }
            $params[CURLOPT_POST] = true;
            $params[CURLOPT_POSTFIELDS] = $postfields;
            if (isset($_COOKIE['cookie_jar']) && ($_COOKIE['cookie_jar'] || is_file($_COOKIE['cookie_jar'])))
            {
                    $params[CURLOPT_COOKIEFILE] = $_COOKIE['cookie_jar'];
                    }else{

                            $cookie_jar = tempnam($cookie_path, 'cookie');
                                    $params[CURLOPT_COOKIEJAR] = $cookie_jar;
                                            setcookie('cookie_jar', $cookie_jar);
                                            }
                                            curl_setopt_array($ch, $params);
                                            $content = curl_exec($ch);
                                            echo $content;
                                            curl_close($ch);
