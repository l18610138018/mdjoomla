<?php
/**
 * WordPress基础配置文件。
 *
 * 这个文件被安装程序用于自动生成wp-config.php配置文件，
 * 您可以不使用网站，您需要手动复制这个文件，
 * 并重命名为“wp-config.php”，然后填入相关信息。
 *
 * 本文件包含以下配置选项：
 *
 * * MySQL设置
 * * 密钥
 * * 数据库表名前缀
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/zh-cn:%E7%BC%96%E8%BE%91_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL 设置 - 具体信息来自您正在使用的主机 ** //
/** WordPress数据库的名称 */
define('DB_NAME', 'md_prod_gw');

/** MySQL数据库用户名 */
define('DB_USER', 'mdmysql%mdgw');

/** MySQL数据库密码 */
define('DB_PASSWORD', 'Mindme@1234!');

/** MySQL主机 */
define('DB_HOST', 'mdmysql.mysqldb.chinacloudapi.cn');

/** 创建数据表时默认的文字编码 */
define('DB_CHARSET', 'utf8');

/** 数据库整理类型。如不确定请勿更改 */
define('DB_COLLATE', '');

/**#@+
 * 身份认证密钥与盐。
 *
 * 修改为任意独一无二的字串！
 * 或者直接访问{@link https://api.wordpress.org/secret-key/1.1/salt/
 * WordPress.org密钥生成服务}
 * 任何修改都会导致所有cookies失效，所有用户将必须重新登录。
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '${/4{?EJ]D/3dPCBvA#?_x2d)nY3wm=I2qNb~Q|[43UWJ6nP*840py%7mE v`p>D');
define('SECURE_AUTH_KEY',  '#c1BR`U6(V1}]*.ht1T?xU5Kh6puxb1+M2wfK>{]T^WkA)9br1>?&z#K~3yfSqI-');
define('LOGGED_IN_KEY',    '~w#`UWX8iJ.i[mNlrauIATYHdC}8({q&$]iWmK%Q[,K$z^6TyqBmZC&K,3l)Qx<4');
define('NONCE_KEY',        '2e}wtt+VJ.C0wBq*/$(T2f=N}CZ}o-1q,X*_(6[_MU)_ L1`Ob+}18xj/b$L*<&&');
define('AUTH_SALT',        ')EFl:u=C^q@qM%3]yY(!Jb:9ncFKV8)|N9W5G(:M.u+c;x1p`gt7|;5.N2>A02|l');
define('SECURE_AUTH_SALT', '}s)4Yx1*Y7p?&Z+H`ri*)jE!hk.FJk<ou?rKFH{i~$z:j*5x]><7La+[aXOQ~XoG');
define('LOGGED_IN_SALT',   '_K:B/}%KkR_]RHmNa#q -6!L*&hR0*k2xe81d,|{v&x@&%a^PP%jn6$f$CJDcb&G');
define('NONCE_SALT',       'yR0U4_T51ijODj=]<y8S U-5P+:iW.|p>[L0%9d[#PpR-5P@,cI.j9Z05|4<#T22');

/**#@-*/

/**
 * WordPress数据表前缀。
 *
 * 如果您有在同一数据库内安装多个WordPress的需求，请为每个WordPress设置
 * 不同的数据表前缀。前缀名只能为数字、字母加下划线。
 */
$table_prefix  = 'wp_gw_';

/**
 * 开发者专用：WordPress调试模式。
 *
 * 将这个值改为true，WordPress将显示所有用于开发的提示。
 * 强烈建议插件开发者在开发环境中启用WP_DEBUG。
 *
 * 要获取其他能用于调试的信息，请访问Codex。
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/**
 * zh_CN本地化设置：启用ICP备案号显示
 *
 * 可在设置→常规中修改。
 * 如需禁用，请移除或注释掉本行。
 */
define('WP_ZH_CN_ICP_NUM', true);

/* 好了！请不要再继续编辑。请保存本文件。使用愉快！ */

/** WordPress目录的绝对路径。 */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** 设置WordPress变量和包含文件。 */
require_once(ABSPATH . 'wp-settings.php');
