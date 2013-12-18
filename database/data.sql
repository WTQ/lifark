-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2013 年 12 月 18 日 14:45
-- 服务器版本: 5.5.24-log
-- PHP 版本: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `opencartcn`
--

-- --------------------------------------------------------

--
-- 表的结构 `oc_address`
--

CREATE TABLE IF NOT EXISTS `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `company_id`, `tax_id`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`) VALUES
(1, 1, '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', 44, 685),
(2, 2, '王特', '', '', '', '', '阿斯蒂芬', '', '阿斯蒂芬', '阿斯蒂芬', 44, 685),
(3, 3, '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', 44, 685);

-- --------------------------------------------------------

--
-- 表的结构 `oc_affiliate`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- 表的结构 `oc_attribute_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- 表的结构 `oc_attribute_group`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- 表的结构 `oc_attribute_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- 表的结构 `oc_banner`
--

CREATE TABLE IF NOT EXISTS `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Samsung Tab', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_banner_image`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- 转存表中的数据 `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(101, 7, 'index.php', 'data/banner/11.png'),
(100, 7, 'index.php', 'data/banner/88.png'),
(77, 6, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/demo/hp_banner.jpg'),
(75, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=5', 'data/demo/htc_logo.jpg'),
(73, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=8', 'data/demo/apple_logo.jpg'),
(74, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=9', 'data/demo/canon_logo.jpg'),
(71, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=10', 'data/demo/sony_logo.jpg'),
(72, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=6', 'data/demo/palm_logo.jpg'),
(76, 8, 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'data/demo/hp_logo.jpg'),
(99, 7, 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'data/banner/55.png'),
(98, 7, 'index.php', 'data/banner/99.png'),
(97, 7, 'index.php', 'data/banner/77.png');

-- --------------------------------------------------------

--
-- 表的结构 `oc_banner_image_description`
--

CREATE TABLE IF NOT EXISTS `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(101, 1, 7, 'test5'),
(77, 1, 6, 'HP Banner'),
(75, 1, 8, 'HTC'),
(74, 1, 8, 'Canon'),
(73, 1, 8, 'Apple'),
(72, 1, 8, 'Palm'),
(71, 1, 8, 'Sony'),
(76, 1, 8, 'Hewlett-Packard'),
(100, 2, 7, 'test4'),
(77, 2, 6, 'HP Banner'),
(75, 2, 8, 'HTC'),
(74, 2, 8, 'Canon'),
(73, 2, 8, 'Apple'),
(72, 2, 8, 'Palm'),
(71, 2, 8, 'Sony'),
(76, 2, 8, 'Hewlett-Packard'),
(100, 1, 7, 'test4'),
(99, 2, 7, 'test'),
(99, 1, 7, 'test'),
(98, 2, 7, 'test3'),
(98, 1, 7, 'test3'),
(97, 2, 7, 'Samsung Tab 10.1'),
(97, 1, 7, 'Samsung Tab 10.1'),
(101, 2, 7, 'test5');

-- --------------------------------------------------------

--
-- 表的结构 `oc_category`
--

CREATE TABLE IF NOT EXISTS `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- 转存表中的数据 `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(60, '', 59, 0, 1, 1, 1, '2013-12-18 16:46:14', '2013-12-18 16:54:12'),
(61, '', 59, 0, 1, 2, 1, '2013-12-18 16:47:01', '2013-12-18 16:54:32'),
(59, '', 0, 0, 1, 0, 1, '2013-12-18 16:44:03', '2013-12-18 16:44:03');

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_description`
--

CREATE TABLE IF NOT EXISTS `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(61, 1, '其他配件', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', ''),
(60, 1, '智能腕带', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', ''),
(61, 2, 'Accessories', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', ''),
(60, 2, 'Smart Wristband', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', ''),
(59, 1, '全部商品', '&lt;p&gt;&amp;nbsp;\r\n&lt;p&gt;&amp;nbsp;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;/p&gt;\r\n&lt;/p&gt;\r\n', '', ''),
(59, 2, 'ALL Goods', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_filter`
--

CREATE TABLE IF NOT EXISTS `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_path`
--

CREATE TABLE IF NOT EXISTS `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(61, 61, 1),
(61, 59, 0),
(60, 60, 1),
(60, 59, 0),
(59, 59, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_category_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(60, 0),
(61, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_country`
--

CREATE TABLE IF NOT EXISTS `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(44, '中国 ', 'CN', 'CHN', '', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_coupon`
--

CREATE TABLE IF NOT EXISTS `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2011-01-01', '2012-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2009-03-01', '2009-08-31', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '1970-11-01', '2020-11-01', 100000, '10000', 1, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- 表的结构 `oc_coupon_category`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_coupon_history`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_coupon_product`
--

CREATE TABLE IF NOT EXISTS `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_currency`
--

CREATE TABLE IF NOT EXISTS `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, '人民币', 'CNY', '￥', '', '2', 1.00000000, 1, '2013-12-05 20:56:21');

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer`
--

CREATE TABLE IF NOT EXISTS `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `customer_group_id`, `ip`, `status`, `approved`, `token`, `date_added`) VALUES
(1, 0, '王格', '', 'wangte168@sina.com', '13433113412', '', '5902df929aa939c4dcd39d6e4de86d9019bb5ecb', 'fa0d4a0ee', 'a:2:{s:43:"47:YToxOntpOjIyNTtzOjEwOiIyMDExLTA0LTIyIjt9";i:5;i:43;i:1;}', 'a:1:{i:0;s:2:"43";}', 0, 1, 1, '202.204.81.57', 1, 1, '', '2013-12-05 00:39:29'),
(2, 0, '王特', '', 'wangte1688@sina.com', '1231111123', '', 'ea25422c9fc2368279f760e9dfa9ad1ae2b2a389', '9f3e77cd0', 'a:1:{i:40;i:1;}', 'a:0:{}', 0, 0, 1, '127.0.0.1', 1, 1, '', '2013-12-05 19:50:15'),
(3, 0, '特警', '', 'asdf@sina.com', '1231111123', '', '62e438e394f59ce2e067e00153ccf693cb7daa7d', 'f15a78208', 'a:0:{}', 'a:0:{}', 0, 0, 1, '127.0.0.1', 1, 1, '', '2013-12-05 19:55:15'),
(4, 0, 'zzy', '', 'zhouyang.zhao.2011@gmail.com', '15120074119', '', 'dd201e42616280cf76701c24db36b63f8a418da9', 'f02137f51', 'a:1:{s:43:"47:YToxOntpOjIyNTtzOjEwOiIyMDExLTA0LTIyIjt9";i:1;}', 'a:0:{}', 0, 0, 1, '202.204.81.57', 1, 1, '', '2013-12-12 11:33:36');

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_field`
--

CREATE TABLE IF NOT EXISTS `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `company_id_display`, `company_id_required`, `tax_id_display`, `tax_id_required`, `sort_order`) VALUES
(1, 0, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_history`
--

CREATE TABLE IF NOT EXISTS `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_ip`
--

CREATE TABLE IF NOT EXISTS `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '127.0.0.1', '2013-12-05 00:39:30'),
(2, 2, '127.0.0.1', '2013-12-05 19:50:16'),
(3, 3, '127.0.0.1', '2013-12-05 19:55:16'),
(4, 1, '202.204.81.57', '2013-12-11 12:29:07'),
(5, 4, '202.204.81.57', '2013-12-12 11:33:37');

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_online`
--

CREATE TABLE IF NOT EXISTS `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_reward`
--

CREATE TABLE IF NOT EXISTS `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_customer_transaction`
--

CREATE TABLE IF NOT EXISTS `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field_value`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_download`
--

CREATE TABLE IF NOT EXISTS `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_download_description`
--

CREATE TABLE IF NOT EXISTS `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_extension`
--

CREATE TABLE IF NOT EXISTS `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=437 ;

--
-- 转存表中的数据 `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(433, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(434, 'total', 'total'),
(410, 'module', 'banner'),
(426, 'module', 'carousel'),
(430, 'module', 'filter'),
(435, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(413, 'module', 'category'),
(411, 'module', 'affiliate'),
(428, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(427, 'module', 'featured'),
(419, 'module', 'slideshow'),
(429, 'payment', 'alipay'),
(431, 'module', 'welcome'),
(436, 'shipping', 'free');

-- --------------------------------------------------------

--
-- 表的结构 `oc_filter`
--

CREATE TABLE IF NOT EXISTS `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_filter_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_filter_group`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_filter_group_description`
--

CREATE TABLE IF NOT EXISTS `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, '上海浦东', '上海浦东', '2012-09-01 21:10:57', '2009-01-06 23:26:25'),
(4, '四川成都', '四川成都', '2012-09-01 21:10:07', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- 表的结构 `oc_information`
--

CREATE TABLE IF NOT EXISTS `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_information_description`
--

CREATE TABLE IF NOT EXISTS `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`) VALUES
(4, 1, '关于我们', '&lt;p&gt;\r\n	关于我们&lt;/p&gt;\r\n'),
(5, 2, '政策&amp;条款', '&lt;p&gt;政策 &amp;amp; 条款&lt;/p&gt;\r\n'),
(3, 1, '隐私权声明', '&lt;p&gt;\r\n	隐私权声明&lt;/p&gt;\r\n'),
(6, 2, '投递 信息', '&lt;p&gt;投递 信息&lt;/p&gt;\r\n'),
(4, 2, '关于我们', '&lt;p&gt;\r\n	关于我们&lt;/p&gt;\r\n'),
(5, 1, '政策条款', '&lt;p&gt;政策 &amp;amp; 条款&lt;/p&gt;\r\n'),
(3, 2, '隐私权声明', '&lt;p&gt;\r\n	隐私权声明&lt;/p&gt;\r\n'),
(6, 1, '投递信息', '&lt;p&gt;投递 信息&lt;/p&gt;\r\n'),
(7, 1, '公司简介', '&lt;p&gt;公司简介&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;/p&gt;\r\n'),
(7, 2, '公司简介', '&lt;p&gt;公司简介&lt;/p&gt;\r\n');

-- --------------------------------------------------------

--
-- 表的结构 `oc_information_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(7, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_information_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_language`
--

CREATE TABLE IF NOT EXISTS `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `filename`, `sort_order`, `status`) VALUES
(1, '简体中文', 'zh-CN', 'zh_CN.utf-8,zh-cn,china', 'cn.png', 'zh-CN', 'zh-CN', 1, 1),
(2, 'english', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 'english', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_layout`
--

CREATE TABLE IF NOT EXISTS `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, '首页'),
(2, '产品'),
(3, '目录'),
(4, '默认'),
(5, '厂商'),
(6, '帐户'),
(7, '结账'),
(8, '联系'),
(9, '导航'),
(10, '分销商'),
(11, '信息');

-- --------------------------------------------------------

--
-- 表的结构 `oc_layout_route`
--

CREATE TABLE IF NOT EXISTS `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(30, 6, 0, 'account'),
(17, 10, 0, 'affiliate/'),
(29, 3, 0, 'product/category'),
(26, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(22, 5, 0, 'product/manufacturer'),
(23, 7, 0, 'checkout/'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap');

-- --------------------------------------------------------

--
-- 表的结构 `oc_length_class`
--

CREATE TABLE IF NOT EXISTS `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- 表的结构 `oc_length_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, '公分', 'cm'),
(2, 1, '公尺', 'mm'),
(3, 1, '英尺', 'in'),
(1, 2, '公分', 'cm'),
(2, 2, '公尺', 'mm'),
(3, 2, '英尺', 'in');

-- --------------------------------------------------------

--
-- 表的结构 `oc_manufacturer`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'data/demo/htc_logo.jpg', 0),
(6, 'Palm', 'data/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'data/demo/hp_logo.jpg', 0),
(8, 'Apple', 'data/demo/apple_logo.jpg', 0),
(9, 'Canon', 'data/demo/canon_logo.jpg', 0),
(10, 'Sony', 'data/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_option`
--

CREATE TABLE IF NOT EXISTS `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 2),
(2, 'checkbox', 3),
(4, 'text', 4),
(5, 'select', 1),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 1),
(12, 'date', 1),
(13, 'image', 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_option_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, '单选框'),
(2, 1, '复选框'),
(4, 1, '文本'),
(6, 1, '多行文本'),
(8, 1, '日期'),
(7, 1, '文档'),
(5, 1, '选择'),
(9, 1, '时间'),
(10, 1, '日期 &amp; 时间'),
(12, 1, '交货日期'),
(11, 1, '尺寸'),
(1, 2, '单选框'),
(2, 2, '复选框'),
(4, 2, '文本'),
(6, 2, '多行文本'),
(8, 2, '日期'),
(7, 2, '文档'),
(5, 2, '选择'),
(9, 2, '时间'),
(10, 2, '日期 &amp; 时间'),
(12, 2, '交货日期'),
(11, 2, '尺寸'),
(13, 1, '图片'),
(13, 2, '图片');

-- --------------------------------------------------------

--
-- 表的结构 `oc_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(49, 13, 'data/demo/sony_logo.jpg', 1),
(50, 13, 'data/logo.png', 2);

-- --------------------------------------------------------

--
-- 表的结构 `oc_option_value_description`
--

CREATE TABLE IF NOT EXISTS `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, '大号'),
(32, 1, 1, '小号'),
(45, 1, 2, '复选 4'),
(44, 1, 2, '复选 3'),
(31, 1, 1, '中号'),
(42, 1, 5, '黄色'),
(41, 1, 5, '绿色'),
(39, 1, 5, '红色'),
(40, 1, 5, '蓝色'),
(23, 1, 2, '复选 1'),
(24, 1, 2, '复选 2'),
(48, 1, 11, '大号'),
(47, 1, 11, '中号'),
(46, 1, 11, '小号'),
(43, 2, 1, '大号'),
(32, 2, 1, '小号'),
(45, 2, 2, '复选 4'),
(44, 2, 2, '复选 3'),
(31, 2, 1, '中号'),
(42, 2, 5, '黄色'),
(41, 2, 5, '绿色'),
(39, 2, 5, '红色'),
(40, 2, 5, '蓝色'),
(23, 2, 2, '复选 1'),
(24, 2, 2, '复选 2'),
(48, 2, 11, '大号'),
(47, 2, 11, '中号'),
(46, 2, 11, '小号'),
(49, 1, 13, '红色'),
(49, 2, 13, '红色'),
(50, 1, 13, '白色'),
(50, 2, 13, '白色');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order`
--

CREATE TABLE IF NOT EXISTS `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_company_id`, `payment_tax_id`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 2, 1, '王特', '', 'wangte1688@sina.com', '1231111123', '', '王特', '', '', '', '', '阿斯蒂芬', '', '阿斯蒂芬', '阿斯蒂芬', '中国 ', 44, '北京', 685, '', 'Cash On Delivery', 'cod', '王特', '', '', '阿斯蒂芬', '', '阿斯蒂芬', '阿斯蒂芬', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '106.0000', 1, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 19:51:33', '2013-12-05 19:51:36'),
(2, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 1, 1, '王格', '', 'wangte168@sina.com', '13433113412', '', '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', 'Cash On Delivery', 'cod', '王格', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '106.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 20:41:37', '2013-12-05 20:41:37'),
(3, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 1, 1, '王格', '', 'wangte168@sina.com', '13433113412', '', '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', 'Cash On Delivery', 'cod', '王格', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 20:55:17', '2013-12-05 20:55:17'),
(4, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 1, 1, '王格', '', 'wangte168@sina.com', '13433113412', '', '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', 'Cash On Delivery', 'cod', '王格', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:01:19', '2013-12-05 21:01:19'),
(5, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 1, 1, '王格', '', 'wangte168@sina.com', '13433113412', '', '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '支付宝', 'alipay', '王格', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:03:56', '2013-12-05 21:03:56'),
(6, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 1, 1, '王格', '', 'wangte168@sina.com', '13433113412', '', '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '支付宝', 'alipay', '王格', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:06:13', '2013-12-05 21:06:13'),
(7, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 1, 1, '王格', '', 'wangte168@sina.com', '13433113412', '', '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '支付宝', 'alipay', '王格', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:09:01', '2013-12-05 21:09:01'),
(8, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 1, 1, '王格', '', 'wangte168@sina.com', '13433113412', '', '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '支付宝', 'alipay', '王格', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:09:10', '2013-12-05 21:09:10'),
(9, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 1, 1, '王格', '', 'wangte168@sina.com', '13433113412', '', '王格', '', '', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '货到付款', 'cod', '王格', '', '', '中关村南大街5号', '', '北京市', '100081', '中国 ', 44, '北京', 685, '', '固定运费率', 'flat.flat', '', '101.0000', 1, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:09:31', '2013-12-05 21:09:32'),
(10, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 3, 1, '特警', '', 'asdf@sina.com', '1231111123', '', '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', '中国 ', 44, '北京', 685, '', '货到付款', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:18:01', '2013-12-05 21:18:01'),
(11, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 3, 1, '特警', '', 'asdf@sina.com', '1231111123', '', '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', '中国 ', 44, '北京', 685, '', '支付宝', 'alipay', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:18:58', '2013-12-05 21:18:58'),
(12, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 3, 1, '特警', '', 'asdf@sina.com', '1231111123', '', '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', '中国 ', 44, '北京', 685, '', '货到付款', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:22:26', '2013-12-05 21:22:26'),
(13, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 3, 1, '特警', '', 'asdf@sina.com', '1231111123', '', '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', '中国 ', 44, '北京', 685, '', '支付宝', 'alipay', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '101.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-05 21:26:20', '2013-12-05 21:26:20'),
(14, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 3, 1, '特警', '', 'asdf@sina.com', '1231111123', '', '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', '中国 ', 44, '北京', 685, '', '支付宝', 'alipay', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '201.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-06 16:05:07', '2013-12-06 16:05:07'),
(15, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 3, 1, '特警', '', 'asdf@sina.com', '1231111123', '', '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', '中国 ', 44, '北京', 685, '', '支付宝', 'alipay', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '201.0000', 0, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-06 16:05:15', '2013-12-06 16:05:15'),
(16, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 3, 1, '特警', '', 'asdf@sina.com', '1231111123', '', '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', '中国 ', 44, '北京', 685, '', '货到付款', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '201.0000', 1, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-06 16:07:14', '2013-12-06 16:07:17'),
(17, 0, 'INV-2013-00', 0, 'Your Store', 'http://t.te168.cn/opencartcn/', 3, 1, '特警', '', 'asdf@sina.com', '1231111123', '', '测试', '', '', '', '', '中关村南大街5号', '', '海淀区', '100081', '中国 ', 44, '北京', 685, '', '货到付款', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '', '', '', '80.0000', 1, 0, '0.0000', 1, 1, 'CNY', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:25.0) Gecko/20100101 Firefox/25.0', 'zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3', '2013-12-07 09:40:25', '2013-12-07 09:40:27');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_download`
--

CREATE TABLE IF NOT EXISTS `oc_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_field`
--

CREATE TABLE IF NOT EXISTS `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_fraud`
--

CREATE TABLE IF NOT EXISTS `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_history`
--

CREATE TABLE IF NOT EXISTS `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 1, '', '2013-12-05 19:51:36'),
(2, 9, 1, 1, '', '2013-12-05 21:09:32'),
(3, 16, 1, 1, '', '2013-12-06 16:07:17'),
(4, 17, 1, 1, '', '2013-12-07 09:40:27');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_option`
--

CREATE TABLE IF NOT EXISTS `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 17, 20, 226, 15, '选择', '红色', 'select');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_product`
--

CREATE TABLE IF NOT EXISTS `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(2, 2, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(3, 3, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(4, 4, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(5, 5, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(6, 6, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(7, 7, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(8, 8, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(9, 9, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(10, 10, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(11, 11, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(12, 12, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(13, 13, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(14, 14, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(15, 14, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '0.0000', 0),
(16, 15, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(17, 15, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '0.0000', 0),
(18, 16, 40, 'iPhone', 'product 11', 1, '101.0000', '101.0000', '0.0000', 0),
(19, 16, 48, 'iPod Classic', 'product 20', 1, '100.0000', '100.0000', '0.0000', 0),
(20, 17, 30, 'Canon EOS 5D', 'Product 3', 1, '80.0000', '80.0000', '0.0000', 200);

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_status`
--

CREATE TABLE IF NOT EXISTS `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, '待处理'),
(2, 1, '处理中'),
(3, 1, '已配送'),
(7, 1, '已取消'),
(5, 1, '已完成'),
(8, 1, '已拒绝'),
(9, 1, '取消恢复'),
(10, 1, '失败'),
(11, 1, '已退款'),
(12, 1, '已冲销'),
(13, 1, '已扣款'),
(16, 1, '无效'),
(15, 1, '已处理'),
(14, 1, '过期'),
(1, 2, '待处理'),
(2, 2, '处理中'),
(3, 2, '已配送'),
(7, 2, '已取消'),
(5, 2, '已完成'),
(8, 2, '已拒绝'),
(9, 2, '取消恢复'),
(10, 2, '失败'),
(11, 2, '已退款'),
(12, 2, '已冲销'),
(13, 2, '已扣款'),
(16, 2, '无效'),
(15, 2, '已处理'),
(14, 2, '过期'),
(17, 1, '等待付款'),
(17, 2, '等待付款');

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_total`
--

CREATE TABLE IF NOT EXISTS `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `text`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(2, 1, 'shipping', '固定运费率', '￥5.00', '5.0000', 3),
(3, 1, 'total', '订单总额', '￥106.00', '106.0000', 9),
(4, 2, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(5, 2, 'shipping', '固定运费率', '￥5.00', '5.0000', 3),
(6, 2, 'total', '订单总额', '￥106.00', '106.0000', 9),
(7, 3, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(8, 4, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(9, 5, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(10, 6, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(11, 7, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(12, 8, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(13, 9, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(14, 10, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(15, 11, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(16, 12, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(17, 13, 'sub_total', '商品总额', '￥101.00', '101.0000', 1),
(18, 14, 'sub_total', '商品总额', '￥201.00', '201.0000', 1),
(19, 15, 'sub_total', '商品总额', '￥201.00', '201.0000', 1),
(20, 16, 'sub_total', '商品总额', '￥201.00', '201.0000', 1),
(21, 17, 'sub_total', '商品总额', '￥80.00', '80.0000', 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_order_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product`
--

CREATE TABLE IF NOT EXISTS `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- 转存表中的数据 `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `date_added`, `date_modified`, `viewed`) VALUES
(50, 'S100', '', '', '', '', '', '', '', 1000, 7, 'data/product/6.png', 0, 1, '199.0000', 0, 0, '2013-12-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2013-12-18 16:49:24', '2013-12-18 21:51:57', 1),
(51, 'S101', '', '', '', '', '', '', '', 1000, 7, 'data/product/2.png', 0, 1, '199.0000', 0, 0, '2013-12-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2013-12-18 16:50:43', '2013-12-18 21:27:25', 10),
(52, 'S103', '', '', '', '', '', '', '', 1, 7, 'data/product/else1.png', 0, 1, '0.0000', 0, 0, '2013-12-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2013-12-18 21:36:25', '0000-00-00 00:00:00', 2),
(53, 'S104', '', '', '', '', '', '', '', 1, 7, 'data/product/else2.png', 0, 1, '0.0000', 0, 0, '2013-12-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2013-12-18 21:38:25', '2013-12-18 21:54:22', 2),
(55, 'S106', '', '', '', '', '', '', '', 1, 7, 'data/product/else4.png', 0, 1, '0.0000', 0, 0, '2013-12-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2013-12-18 21:44:05', '2013-12-18 22:16:42', 2),
(56, 'S107', '', '', '', '', '', '', '', 1, 7, 'data/product/else5.png', 0, 1, '0.0000', 0, 0, '2013-12-17', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, '2013-12-18 22:03:46', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_attribute`
--

CREATE TABLE IF NOT EXISTS `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_description`
--

CREATE TABLE IF NOT EXISTS `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`, `tag`) VALUES
(50, 1, '生命方舟智能运动腕带', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/1.png&quot; style=&quot;width: 960px; height: 537px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/2.png&quot; style=&quot;width: 960px; height: 539px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/3.png&quot; style=&quot;width: 960px; height: 538px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/4.png&quot; style=&quot;width: 960px; height: 539px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/5.png&quot; style=&quot;width: 960px; height: 541px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/6.png&quot; style=&quot;width: 960px; height: 539px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/7.png&quot; style=&quot;width: 960px; height: 540px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(51, 1, '生命方舟智能健康腕带', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/1.png&quot; style=&quot;width: 1306px; height: 731px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/2.png&quot; style=&quot;width: 960px; height: 539px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/3.png&quot; style=&quot;width: 960px; height: 538px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/4.png&quot; style=&quot;width: 960px; height: 539px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/5.png&quot; style=&quot;width: 960px; height: 541px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/6.png&quot; style=&quot;width: 960px; height: 539px;&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;http://lifark.te168.cn/image/data/contentimg/7.png&quot; style=&quot;width: 960px; height: 540px;&quot; /&gt;&lt;/p&gt;\r\n', '', '', ''),
(51, 2, '生命方舟智能健康腕带', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(50, 2, '生命方舟智能运动腕带', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '', '', ''),
(52, 1, '生命方舟卡路里健康腕带', '&lt;div style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;新产品的设计并没有偏离其前身(Fitbit Flex)太远，但是配备了高度计和更好的显示屏。&lt;/span&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;Fitbit Force用一块显示屏来取代Flex上的5颗LED指示灯，即使事先没有和智能手机或电脑同步，它也能够显示范围更广的信息。外媒The Verge的报道称，Force能够显示时间和计算每天爬的楼层(阶梯)数。&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;div style=&quot;box-sizing: border-box;&quot;&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;新款Force腕带外观与公司的上一款产品Fitbit Flex相似。增加了一个OLED显示屏用以显示时间、步数，里程。像Flex腕带一样，配合配套的裤夹Zip和One追踪器，Force可以记录步数、里程、卡路里、楼梯台阶数甚至睡眠时间。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;大部分信息都能显示在自带的显示屏上，你也可以通过蓝牙4.0，使用Fitbit应用查看。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;不光如此，Fitbit更充分地使用了蓝牙技术，这款设备现在能发送部分手机信息到腕带上。配合iOS7系统的iPhone，你能在腕带屏幕上看见来电提醒。Android手机暂时没有这个功能。不过把腕带靠近配备了NFC的Android手机能自动启动Fitbit应用。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;Force连接了健身设备与智能手表的巨大市场，包括Fitbit自己的一系列产品在内。Fitbit声称：“一个尺寸不能满足所有。”其他很多公司，包括耐克、Jawbone和三星都会同意这个观点。耐克的Fuelband已经是最受欢迎的追踪器之一。Jawbone的Up也是非常时髦的选择。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;但是考虑到我们对于Fitbit Flex只能通过手机看数据的不满，Force可能是现在最好的腕带了。&lt;/span&gt;&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', '', ''),
(52, 2, 'Fitbit Force', '', '', '', ''),
(53, 2, 'Anki Drive', '', '', '', ''),
(56, 1, '耐克运动手带', '&lt;ol style=&quot;box-sizing: border-box; margin: 0px; list-style-position: inside; list-style-image: initial; padding-left: 0px; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;\r\n	&lt;li style=&quot;box-sizing: border-box;&quot;&gt;Nike+ FuelBand SE&amp;nbsp;&lt;/li&gt;\r\n	&lt;li style=&quot;box-sizing: border-box;&quot;&gt;支持 iPhone 5s 的 M7 芯片&lt;/li&gt;\r\n	&lt;li style=&quot;box-sizing: border-box;&quot;&gt;增加定时活动提醒&lt;/li&gt;\r\n	&lt;li style=&quot;box-sizing: border-box;&quot;&gt;支持蓝牙 4.0&lt;/li&gt;\r\n	&lt;li style=&quot;box-sizing: border-box;&quot;&gt;增加时间显示&lt;/li&gt;\r\n	&lt;li style=&quot;box-sizing: border-box;&quot;&gt;支持新的 Nike+ Moves 应用&lt;/li&gt;\r\n	&lt;li style=&quot;box-sizing: border-box;&quot;&gt;优化运动记录，自动过滤非运动的行为信息，防止作弊。&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;div style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;-------------------------分割线-------------------------&lt;/div&gt;\r\n\r\n&lt;div style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;虽然是小改款，但是相比老款来说还是实用很多。&lt;/div&gt;\r\n\r\n&lt;div style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;售价：149刀&lt;/div&gt;\r\n\r\n&lt;div style=&quot;box-sizing: border-box; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;目前是 iOS 独享 App，不支持 Android 和 WP8 。&lt;/div&gt;\r\n', '', '', ''),
(56, 2, 'Nike+ FuelBand SE', '', '', '', ''),
(55, 2, 'Gaming Eyewear by Allure Eyewear', '', '', '', ''),
(55, 1, '防疲劳眼镜', '&lt;p&gt;&lt;span style=&quot;font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;框架版 Allure Eyewear 终于到货了。要提醒一下各位之前下单预订了的是，Knewone 拿到的这一批 Gaming Eyewear 和之前首页放上的产品图有差异。这一批眼镜的型号是 CODG4-K MATTE BLACK 。试用了半天，整体感觉相当不错，可以给 4.5 星。惯例，先上图：关于做工：除了镜片，眼镜整个都是塑料材质的，整体重量很合适。眼镜架部分有橡胶包裹，手感不错。一些使用体验：因为没有像近视眼镜一样的鼻托，直接戴着时主要靠两侧夹紧。因为镜面是弧形的，戴上时镜片离眼球很近（你想贴到睫毛都是可能的），所以两边夹住反而会让你觉得很有紧实感。应该很类似戴墨镜的感觉。总之，戴感舒适。我给它好评最重要的原因是戴上后对屏幕光线的柔和效果感觉非常舒服，比之前用夹片款的效果要好。要说明一下的是，因为我很显然是近视啦，体验的时候都是像看 3D 电影一样，戴两个眼镜…虽然这款眼镜有 +0.20 的屈光度（即 25 度左右），但如果你是中高度近视者，必须佩戴近视眼镜的话，我建议你还是放弃对它的念想吧。 &amp;nbsp;戴上后会明显觉得屏幕光线变「柔和」了，而非变「黄」了。因为使用场景很明确，跟之前的预想也...&lt;/span&gt;&lt;/p&gt;\r\n', '', '', ''),
(53, 1, '安科智能四驱车', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;还记得数月前苹果 WWDC 演讲开始前展示的三次元赛车游戏 Anki Drive 吗？将 iPhone 用作大脑的自指挥智能四驱车。&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;Anki Drive 在外观上和四驱车区别不大，只是没有了四周的转向导轮，赛车内部搭载了光学传感器、AI 组件和一个数据处理器，但具体硬件方面的细节现在还不得而知。这些 AI 方面的优秀性能使得其能以每秒 500 次的速率实时查看更新自己和其他玩具赛车在跑道上的位置，并传输到对应玩家的 iPhone 上。&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;Anki Drive 可以不用玩家的操作自己自动竞赛，但真正的乐趣还是在于亲手操作的体验。在跑道上 Anki Drive 通过自己的 AI 会自动识别跑道和其他赛车，玩家使用 iPhone 控制的是赛车的速度和跑道上赛车的走向位置，比如内道超车、侧面把其他车挤出跑道之类的操作都可以轻松完成，由于 Anki Drive 能够在跑道上自动导向，所以玩家们只要想着该如何废掉其他赛车就好。&amp;nbsp;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 10px; font-family: ''Hiragino Sans GB'', ''Microsoft YaHei'', Helvetica, sans-serif; font-size: 14px; line-height: 20px;&quot;&gt;&lt;span style=&quot;box-sizing: border-box;&quot;&gt;另外一个特色，玩具赛车还配备了电子武器，比如机关枪、轨炮和激光炮等，也是由玩家的 iPhone 操作，如果一辆车被击中的次数太多，就会暂时停下来。每辆车都有一个武器和不同的特殊能力，两者都能够在胜出后升级，并且升级是永久性的，所有资料都储存在赛车内置的存储器中。&lt;/span&gt;&lt;/p&gt;\r\n', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_discount`
--

CREATE TABLE IF NOT EXISTS `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=447 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_filter`
--

CREATE TABLE IF NOT EXISTS `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_image`
--

CREATE TABLE IF NOT EXISTS `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2384 ;

--
-- 转存表中的数据 `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2369, 51, 'data/product/3.png', 0),
(2368, 51, 'data/product/2.png', 0),
(2370, 50, 'data/product/4.png', 0),
(2371, 50, 'data/product/6.png', 0),
(2372, 50, 'data/product/6.png', 0),
(2373, 50, 'data/product/3.png', 0),
(2374, 53, 'data/product/else1-1.png', 0),
(2375, 53, 'data/product/else1-2.png', 0),
(2376, 53, 'data/product/else1-3.png', 0),
(2383, 55, 'data/product/else4.png', 0),
(2379, 56, 'data/product/else5.png', 0),
(2380, 56, 'data/product/else5-1.png', 0),
(2381, 56, 'data/product/else5-2.png', 0),
(2382, 56, 'data/product/else5-3.png', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_option`
--

CREATE TABLE IF NOT EXISTS `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=228 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_option_value`
--

CREATE TABLE IF NOT EXISTS `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_related`
--

CREATE TABLE IF NOT EXISTS `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_reward`
--

CREATE TABLE IF NOT EXISTS `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=573 ;

--
-- 转存表中的数据 `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(557, 51, 1, 0),
(568, 50, 1, 0),
(560, 52, 1, 0),
(569, 53, 1, 0),
(571, 56, 1, 0),
(572, 55, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_special`
--

CREATE TABLE IF NOT EXISTS `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=442 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_to_category`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(50, 59),
(50, 60),
(51, 59),
(51, 60),
(52, 59),
(52, 61),
(53, 59),
(53, 61),
(55, 59),
(55, 61);

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_to_download`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_to_layout`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `oc_product_to_store`
--

CREATE TABLE IF NOT EXISTS `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(55, 0),
(56, 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_return`
--

CREATE TABLE IF NOT EXISTS `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_return_action`
--

CREATE TABLE IF NOT EXISTS `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, '退款'),
(2, 1, '信用问题'),
(3, 1, '补偿'),
(1, 2, '退款'),
(2, 2, '信用问题'),
(3, 2, '补偿');

-- --------------------------------------------------------

--
-- 表的结构 `oc_return_history`
--

CREATE TABLE IF NOT EXISTS `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_return_reason`
--

CREATE TABLE IF NOT EXISTS `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, '商品未送达'),
(2, 1, '收到错误的商品'),
(3, 1, '订单错误'),
(4, 1, '故障，请提供详细资料'),
(5, 1, '其他，请提供详细资料'),
(1, 2, '商品未送达'),
(2, 2, '收到错误的商品'),
(3, 2, '订单错误'),
(4, 2, '故障，请提供详细资料'),
(5, 2, '其他，请提供详细资料');

-- --------------------------------------------------------

--
-- 表的结构 `oc_return_status`
--

CREATE TABLE IF NOT EXISTS `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, '待处理'),
(3, 1, '已完成'),
(2, 1, '等待商品'),
(1, 2, '待处理'),
(3, 2, '已完成'),
(2, 2, '等待商品');

-- --------------------------------------------------------

--
-- 表的结构 `oc_review`
--

CREATE TABLE IF NOT EXISTS `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_setting`
--

CREATE TABLE IF NOT EXISTS `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1953 ;

--
-- 转存表中的数据 `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(141, 0, 'tax', 'tax_sort_order', '5', 0),
(475, 0, 'alipay', 'alipay_seller_email', 'lotuscafe@126.com', 0),
(140, 0, 'tax', 'tax_status', '0', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(476, 0, 'alipay', 'alipay_order_status_id', '9', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(471, 0, 'flat', 'flat_sort_order', '1', 0),
(470, 0, 'flat', 'flat_status', '1', 0),
(469, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(468, 0, 'flat', 'flat_tax_class_id', '0', 0),
(1517, 0, 'carousel', 'carousel_module', 'a:1:{i:0;a:9:{s:9:"banner_id";s:1:"8";s:5:"limit";s:1:"5";s:6:"scroll";s:1:"3";s:5:"width";s:3:"160";s:6:"height";s:3:"160";s:9:"layout_id";s:1:"1";s:8:"position";s:14:"content_bottom";s:6:"status";s:1:"0";s:10:"sort_order";s:2:"-1";}}', 1),
(1950, 0, 'featured', 'product', '生命方舟', 0),
(1951, 0, 'featured', 'featured_product', '50,51,56,53,55,52', 0),
(1952, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"6";s:11:"image_width";s:3:"200";s:12:"image_height";s:3:"200";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(467, 0, 'flat', 'flat_cost', '5', 0),
(1944, 0, 'config', 'config_error_log', '0', 0),
(1943, 0, 'config', 'config_error_display', '1', 0),
(1942, 0, 'config', 'config_compression', '0', 0),
(139, 0, 'reward', 'reward_sort_order', '2', 0),
(138, 0, 'reward', 'reward_status', '0', 0),
(1941, 0, 'config', 'config_encryption', '3dca82aac05b5ab777213ac7b2c0ff9e', 0),
(56, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(136, 0, 'category', 'category_module', 'a:2:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"1";}}', 1),
(1939, 0, 'config', 'config_maintenance', '0', 0),
(1940, 0, 'config', 'config_password', '1', 0),
(1522, 0, 'account', 'account_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:11:"column_left";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(1938, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(472, 0, 'alipay', 'alipay_trade_type', 'create_partner_trade_by_buyer', 0),
(473, 0, 'alipay', 'alipay_partner', '2088112493277314', 0),
(474, 0, 'alipay', 'alipay_security_code', '4t39ubryj7qhkx9sg9a8ujh3a1lwb0zf', 0),
(1946, 0, 'config', 'config_google_analytics', '', 0),
(1936, 0, 'config', 'config_seo_url', '0', 0),
(1937, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(1945, 0, 'config', 'config_error_filename', 'error.txt', 0),
(1516, 0, 'slideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"7";s:5:"width";s:3:"980";s:6:"height";s:3:"510";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(137, 0, 'banner', 'banner_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:1:"6";s:5:"width";s:3:"182";s:6:"height";s:3:"182";s:9:"layout_id";s:1:"3";s:8:"position";s:11:"column_left";s:6:"status";s:1:"0";s:10:"sort_order";s:1:"3";}}', 1),
(1935, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1934, 0, 'config', 'config_shared', '0', 0),
(1933, 0, 'config', 'config_secure', '0', 0),
(1932, 0, 'config', 'config_fraud_status_id', '9', 0),
(1931, 0, 'config', 'config_fraud_score', '', 0),
(1930, 0, 'config', 'config_fraud_key', '', 0),
(1929, 0, 'config', 'config_fraud_detection', '0', 0),
(1928, 0, 'config', 'config_alert_emails', '', 0),
(1927, 0, 'config', 'config_account_mail', '0', 0),
(1926, 0, 'config', 'config_alert_mail', '0', 0),
(1925, 0, 'config', 'config_smtp_timeout', '5', 0),
(1924, 0, 'config', 'config_smtp_port', '25', 0),
(1923, 0, 'config', 'config_smtp_password', '', 0),
(1922, 0, 'config', 'config_smtp_username', '', 0),
(1921, 0, 'config', 'config_smtp_host', '', 0),
(1920, 0, 'config', 'config_mail_parameter', '', 0),
(1919, 0, 'config', 'config_mail_protocol', 'smtp', 0),
(1918, 0, 'config', 'config_ftp_status', '0', 0),
(1917, 0, 'config', 'config_ftp_root', '', 0),
(1916, 0, 'config', 'config_ftp_password', '', 0),
(1915, 0, 'config', 'config_ftp_username', '', 0),
(1914, 0, 'config', 'config_ftp_port', '21', 0),
(1913, 0, 'config', 'config_ftp_host', 't.te168.cn', 0),
(1912, 0, 'config', 'config_image_cart_height', '47', 0),
(1911, 0, 'config', 'config_image_cart_width', '47', 0),
(1910, 0, 'config', 'config_image_wishlist_height', '47', 0),
(1909, 0, 'config', 'config_image_wishlist_width', '47', 0),
(1908, 0, 'config', 'config_image_compare_height', '90', 0),
(1907, 0, 'config', 'config_image_compare_width', '90', 0),
(1906, 0, 'config', 'config_image_related_height', '80', 0),
(1905, 0, 'config', 'config_image_related_width', '80', 0),
(1904, 0, 'config', 'config_image_additional_height', '74', 0),
(1903, 0, 'config', 'config_image_additional_width', '74', 0),
(1902, 0, 'config', 'config_image_product_height', '180', 0),
(1901, 0, 'config', 'config_image_product_width', '180', 0),
(1900, 0, 'config', 'config_image_popup_height', '640', 0),
(1899, 0, 'config', 'config_image_popup_width', '700', 0),
(1898, 0, 'config', 'config_image_thumb_height', '510', 0),
(1897, 0, 'config', 'config_image_thumb_width', '510', 0),
(1896, 0, 'config', 'config_image_category_height', '80', 0),
(1892, 0, 'config', 'config_return_status_id', '2', 0),
(1893, 0, 'config', 'config_logo', 'data/logo.png', 0),
(1894, 0, 'config', 'config_icon', 'data/cart.png', 0),
(1895, 0, 'config', 'config_image_category_width', '80', 0),
(1891, 0, 'config', 'config_return_id', '0', 0),
(1890, 0, 'config', 'config_commission', '5', 0),
(1889, 0, 'config', 'config_affiliate_id', '4', 0),
(1888, 0, 'config', 'config_stock_status_id', '7', 0),
(1887, 0, 'config', 'config_stock_checkout', '0', 0),
(1886, 0, 'config', 'config_stock_warning', '0', 0),
(1885, 0, 'config', 'config_stock_display', '0', 0),
(1884, 0, 'config', 'config_complete_status_id', '5', 0),
(1883, 0, 'config', 'config_order_status_id', '1', 0),
(1882, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(1881, 0, 'config', 'config_order_edit', '100', 0),
(1880, 0, 'config', 'config_checkout_id', '0', 0),
(1879, 0, 'config', 'config_guest_checkout', '0', 0),
(1878, 0, 'config', 'config_cart_weight', '0', 0),
(1877, 0, 'config', 'config_account_id', '3', 0),
(1876, 0, 'config', 'config_customer_price', '0', 0),
(1875, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(1874, 0, 'config', 'config_customer_group_id', '1', 0),
(1873, 0, 'config', 'config_customer_online', '0', 0),
(1872, 0, 'config', 'config_tax_customer', '', 0),
(1871, 0, 'config', 'config_tax_default', '', 0),
(1870, 0, 'config', 'config_vat', '0', 0),
(1869, 0, 'config', 'config_tax', '1', 0),
(1868, 0, 'config', 'config_voucher_max', '1000', 0),
(1867, 0, 'config', 'config_voucher_min', '1', 0),
(1866, 0, 'config', 'config_download', '0', 0),
(1865, 0, 'config', 'config_review_status', '1', 0),
(1864, 0, 'config', 'config_product_count', '1', 0),
(1863, 0, 'config', 'config_admin_limit', '20', 0),
(1862, 0, 'config', 'config_catalog_limit', '16', 0),
(1861, 0, 'config', 'config_weight_class_id', '1', 0),
(1860, 0, 'config', 'config_length_class_id', '1', 0),
(1859, 0, 'config', 'config_currency_auto', '0', 0),
(1856, 0, 'config', 'config_language', 'zh-CN', 0),
(1857, 0, 'config', 'config_admin_language', 'zh-CN', 0),
(1858, 0, 'config', 'config_currency', 'CNY', 0),
(1855, 0, 'config', 'config_zone_id', '', 0),
(1853, 0, 'config', 'config_layout_id', '4', 0),
(1854, 0, 'config', 'config_country_id', '44', 0),
(1850, 0, 'config', 'config_title', '生命方舟', 0),
(1851, 0, 'config', 'config_meta_description', '生命方舟', 0),
(1852, 0, 'config', 'config_template', 'default', 0),
(1849, 0, 'config', 'config_fax', '', 0),
(1848, 0, 'config', 'config_telephone', '123456789', 0),
(1847, 0, 'config', 'config_email', 'wangte168@sina.com', 0),
(1846, 0, 'config', 'config_address', 'Address 1', 0),
(1845, 0, 'config', 'config_owner', '生命方舟', 0),
(1844, 0, 'config', 'config_name', '生命方舟', 0),
(477, 0, 'alipay', 'alipay_status', '1', 0),
(478, 0, 'alipay', 'alipay_sort_order', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `oc_stock_status`
--

CREATE TABLE IF NOT EXISTS `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, '有货'),
(5, 1, '缺货'),
(6, 1, '等待2 - 3天'),
(8, 1, '预购'),
(7, 2, '有货'),
(5, 2, '缺货'),
(6, 2, '等待2 - 3天'),
(8, 2, '预购');

-- --------------------------------------------------------

--
-- 表的结构 `oc_store`
--

CREATE TABLE IF NOT EXISTS `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_tax_class`
--

CREATE TABLE IF NOT EXISTS `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, '交税商品', '征税的商品', '2009-01-06 23:21:53', '2012-06-11 01:12:36'),
(10, '可下载的商品', '可下载', '2011-09-21 22:19:39', '2012-06-11 01:10:52');

-- --------------------------------------------------------

--
-- 表的结构 `oc_tax_rate`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- 转存表中的数据 `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, '增值税 (17.5%)', '17.5000', 'P', '2011-03-09 21:17:10', '2012-06-11 01:06:45'),
(87, 3, '普通税 (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- 表的结构 `oc_tax_rate_to_customer_group`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_tax_rule`
--

CREATE TABLE IF NOT EXISTS `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- 转存表中的数据 `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, '付款', 1),
(120, 10, 87, '商店', 0),
(128, 9, 86, '配送', 1),
(127, 9, 87, '配送', 2);

-- --------------------------------------------------------

--
-- 表的结构 `oc_url_alias`
--

CREATE TABLE IF NOT EXISTS `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=776 ;

--
-- 转存表中的数据 `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us');

-- --------------------------------------------------------

--
-- 表的结构 `oc_user`
--

CREATE TABLE IF NOT EXISTS `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '2755118caf3b9bef8eaf23ef6c12e526586b4042', '1f3b75c57', '', '', 'wangte168@sina.com', '', '127.0.0.1', 1, '2013-12-03 14:57:16');

-- --------------------------------------------------------

--
-- 表的结构 `oc_user_group`
--

CREATE TABLE IF NOT EXISTS `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Top Administrator', 'a:2:{s:6:"access";a:131:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:14:"catalog/review";i:10;s:18:"common/filemanager";i:11;s:13:"design/banner";i:12;s:13:"design/layout";i:13;s:14:"extension/feed";i:14;s:17:"extension/manager";i:15;s:16:"extension/module";i:16;s:17:"extension/payment";i:17;s:18:"extension/shipping";i:18;s:15:"extension/total";i:19;s:16:"feed/google_base";i:20;s:19:"feed/google_sitemap";i:21;s:20:"localisation/country";i:22;s:21:"localisation/currency";i:23;s:21:"localisation/geo_zone";i:24;s:21:"localisation/language";i:25;s:25:"localisation/length_class";i:26;s:25:"localisation/order_status";i:27;s:26:"localisation/return_action";i:28;s:26:"localisation/return_reason";i:29;s:26:"localisation/return_status";i:30;s:25:"localisation/stock_status";i:31;s:22:"localisation/tax_class";i:32;s:21:"localisation/tax_rate";i:33;s:25:"localisation/weight_class";i:34;s:17:"localisation/zone";i:35;s:14:"module/account";i:36;s:16:"module/affiliate";i:37;s:13:"module/banner";i:38;s:17:"module/bestseller";i:39;s:15:"module/carousel";i:40;s:15:"module/category";i:41;s:15:"module/featured";i:42;s:13:"module/filter";i:43;s:18:"module/google_talk";i:44;s:18:"module/information";i:45;s:13:"module/latest";i:46;s:16:"module/slideshow";i:47;s:14:"module/special";i:48;s:12:"module/store";i:49;s:14:"module/welcome";i:50;s:24:"payment/authorizenet_aim";i:51;s:21:"payment/bank_transfer";i:52;s:14:"payment/cheque";i:53;s:11:"payment/cod";i:54;s:21:"payment/free_checkout";i:55;s:14:"payment/liqpay";i:56;s:20:"payment/moneybookers";i:57;s:14:"payment/nochex";i:58;s:15:"payment/paymate";i:59;s:16:"payment/paypoint";i:60;s:13:"payment/payza";i:61;s:26:"payment/perpetual_payments";i:62;s:14:"payment/pp_pro";i:63;s:17:"payment/pp_pro_uk";i:64;s:19:"payment/pp_standard";i:65;s:15:"payment/sagepay";i:66;s:22:"payment/sagepay_direct";i:67;s:18:"payment/sagepay_us";i:68;s:19:"payment/twocheckout";i:69;s:28:"payment/web_payment_software";i:70;s:16:"payment/worldpay";i:71;s:27:"report/affiliate_commission";i:72;s:22:"report/customer_credit";i:73;s:22:"report/customer_online";i:74;s:21:"report/customer_order";i:75;s:22:"report/customer_reward";i:76;s:24:"report/product_purchased";i:77;s:21:"report/product_viewed";i:78;s:18:"report/sale_coupon";i:79;s:17:"report/sale_order";i:80;s:18:"report/sale_return";i:81;s:20:"report/sale_shipping";i:82;s:15:"report/sale_tax";i:83;s:14:"sale/affiliate";i:84;s:12:"sale/contact";i:85;s:11:"sale/coupon";i:86;s:13:"sale/customer";i:87;s:20:"sale/customer_ban_ip";i:88;s:19:"sale/customer_group";i:89;s:10:"sale/order";i:90;s:11:"sale/return";i:91;s:12:"sale/voucher";i:92;s:18:"sale/voucher_theme";i:93;s:15:"setting/setting";i:94;s:13:"setting/store";i:95;s:16:"shipping/auspost";i:96;s:17:"shipping/citylink";i:97;s:14:"shipping/fedex";i:98;s:13:"shipping/flat";i:99;s:13:"shipping/free";i:100;s:13:"shipping/item";i:101;s:23:"shipping/parcelforce_48";i:102;s:15:"shipping/pickup";i:103;s:19:"shipping/royal_mail";i:104;s:12:"shipping/ups";i:105;s:13:"shipping/usps";i:106;s:15:"shipping/weight";i:107;s:11:"tool/backup";i:108;s:14:"tool/error_log";i:109;s:12:"total/coupon";i:110;s:12:"total/credit";i:111;s:14:"total/handling";i:112;s:16:"total/klarna_fee";i:113;s:19:"total/low_order_fee";i:114;s:12:"total/reward";i:115;s:14:"total/shipping";i:116;s:15:"total/sub_total";i:117;s:9:"total/tax";i:118;s:11:"total/total";i:119;s:13:"total/voucher";i:120;s:9:"user/user";i:121;s:20:"user/user_permission";i:122;s:14:"module/account";i:123;s:14:"payment/alipay";i:124;s:13:"module/filter";i:125;s:14:"module/welcome";i:126;s:18:"module/information";i:127;s:14:"total/shipping";i:128;s:11:"total/total";i:129;s:13:"shipping/flat";i:130;s:13:"shipping/free";}s:6:"modify";a:131:{i:0;s:17:"catalog/attribute";i:1;s:23:"catalog/attribute_group";i:2;s:16:"catalog/category";i:3;s:16:"catalog/download";i:4;s:14:"catalog/filter";i:5;s:19:"catalog/information";i:6;s:20:"catalog/manufacturer";i:7;s:14:"catalog/option";i:8;s:15:"catalog/product";i:9;s:14:"catalog/review";i:10;s:18:"common/filemanager";i:11;s:13:"design/banner";i:12;s:13:"design/layout";i:13;s:14:"extension/feed";i:14;s:17:"extension/manager";i:15;s:16:"extension/module";i:16;s:17:"extension/payment";i:17;s:18:"extension/shipping";i:18;s:15:"extension/total";i:19;s:16:"feed/google_base";i:20;s:19:"feed/google_sitemap";i:21;s:20:"localisation/country";i:22;s:21:"localisation/currency";i:23;s:21:"localisation/geo_zone";i:24;s:21:"localisation/language";i:25;s:25:"localisation/length_class";i:26;s:25:"localisation/order_status";i:27;s:26:"localisation/return_action";i:28;s:26:"localisation/return_reason";i:29;s:26:"localisation/return_status";i:30;s:25:"localisation/stock_status";i:31;s:22:"localisation/tax_class";i:32;s:21:"localisation/tax_rate";i:33;s:25:"localisation/weight_class";i:34;s:17:"localisation/zone";i:35;s:14:"module/account";i:36;s:16:"module/affiliate";i:37;s:13:"module/banner";i:38;s:17:"module/bestseller";i:39;s:15:"module/carousel";i:40;s:15:"module/category";i:41;s:15:"module/featured";i:42;s:13:"module/filter";i:43;s:18:"module/google_talk";i:44;s:18:"module/information";i:45;s:13:"module/latest";i:46;s:16:"module/slideshow";i:47;s:14:"module/special";i:48;s:12:"module/store";i:49;s:14:"module/welcome";i:50;s:24:"payment/authorizenet_aim";i:51;s:21:"payment/bank_transfer";i:52;s:14:"payment/cheque";i:53;s:11:"payment/cod";i:54;s:21:"payment/free_checkout";i:55;s:14:"payment/liqpay";i:56;s:20:"payment/moneybookers";i:57;s:14:"payment/nochex";i:58;s:15:"payment/paymate";i:59;s:16:"payment/paypoint";i:60;s:13:"payment/payza";i:61;s:26:"payment/perpetual_payments";i:62;s:14:"payment/pp_pro";i:63;s:17:"payment/pp_pro_uk";i:64;s:19:"payment/pp_standard";i:65;s:15:"payment/sagepay";i:66;s:22:"payment/sagepay_direct";i:67;s:18:"payment/sagepay_us";i:68;s:19:"payment/twocheckout";i:69;s:28:"payment/web_payment_software";i:70;s:16:"payment/worldpay";i:71;s:27:"report/affiliate_commission";i:72;s:22:"report/customer_credit";i:73;s:22:"report/customer_online";i:74;s:21:"report/customer_order";i:75;s:22:"report/customer_reward";i:76;s:24:"report/product_purchased";i:77;s:21:"report/product_viewed";i:78;s:18:"report/sale_coupon";i:79;s:17:"report/sale_order";i:80;s:18:"report/sale_return";i:81;s:20:"report/sale_shipping";i:82;s:15:"report/sale_tax";i:83;s:14:"sale/affiliate";i:84;s:12:"sale/contact";i:85;s:11:"sale/coupon";i:86;s:13:"sale/customer";i:87;s:20:"sale/customer_ban_ip";i:88;s:19:"sale/customer_group";i:89;s:10:"sale/order";i:90;s:11:"sale/return";i:91;s:12:"sale/voucher";i:92;s:18:"sale/voucher_theme";i:93;s:15:"setting/setting";i:94;s:13:"setting/store";i:95;s:16:"shipping/auspost";i:96;s:17:"shipping/citylink";i:97;s:14:"shipping/fedex";i:98;s:13:"shipping/flat";i:99;s:13:"shipping/free";i:100;s:13:"shipping/item";i:101;s:23:"shipping/parcelforce_48";i:102;s:15:"shipping/pickup";i:103;s:19:"shipping/royal_mail";i:104;s:12:"shipping/ups";i:105;s:13:"shipping/usps";i:106;s:15:"shipping/weight";i:107;s:11:"tool/backup";i:108;s:14:"tool/error_log";i:109;s:12:"total/coupon";i:110;s:12:"total/credit";i:111;s:14:"total/handling";i:112;s:16:"total/klarna_fee";i:113;s:19:"total/low_order_fee";i:114;s:12:"total/reward";i:115;s:14:"total/shipping";i:116;s:15:"total/sub_total";i:117;s:9:"total/tax";i:118;s:11:"total/total";i:119;s:13:"total/voucher";i:120;s:9:"user/user";i:121;s:20:"user/user_permission";i:122;s:14:"module/account";i:123;s:14:"payment/alipay";i:124;s:13:"module/filter";i:125;s:14:"module/welcome";i:126;s:18:"module/information";i:127;s:14:"total/shipping";i:128;s:11:"total/total";i:129;s:13:"shipping/flat";i:130;s:13:"shipping/free";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- 表的结构 `oc_voucher`
--

CREATE TABLE IF NOT EXISTS `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_voucher_history`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `oc_voucher_theme`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'data/demo/canon_eos_5d_2.jpg'),
(7, 'data/demo/gift-voucher-birthday.jpg'),
(6, 'data/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `oc_voucher_theme_description`
--

CREATE TABLE IF NOT EXISTS `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, '圣诞'),
(7, 1, '生日'),
(8, 1, '普通'),
(6, 2, '圣诞'),
(7, 2, '生日'),
(8, 2, '普通');

-- --------------------------------------------------------

--
-- 表的结构 `oc_weight_class`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- 表的结构 `oc_weight_class_description`
--

CREATE TABLE IF NOT EXISTS `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, '公斤', 'kg'),
(2, 1, '公克', 'g'),
(5, 1, '磅', 'lb'),
(6, 1, '盎司', 'oz'),
(1, 2, '公斤', 'kg'),
(2, 2, '公克', 'g'),
(5, 2, '磅', 'lb'),
(6, 2, '盎司', 'oz');

-- --------------------------------------------------------

--
-- 表的结构 `oc_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=715 ;

--
-- 转存表中的数据 `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(684, 44, '安徽', 'AN', 1),
(685, 44, '北京', 'BE', 1),
(686, 44, '重庆', 'CH', 1),
(687, 44, '福建', 'FU', 1),
(688, 44, '甘肃', 'GA', 1),
(689, 44, '广东', 'GU', 1),
(690, 44, '广西', 'GX', 1),
(691, 44, '贵州', 'GZ', 1),
(692, 44, '海南', 'HA', 1),
(693, 44, '河北', 'HB', 1),
(694, 44, '黑龙江', 'HL', 1),
(695, 44, '河南', 'HE', 1),
(696, 44, '香港', 'HK', 1),
(697, 44, '湖北', 'HU', 1),
(698, 44, '湖南', 'HN', 1),
(699, 44, '内蒙', 'IM', 1),
(700, 44, '江苏', 'JI', 1),
(701, 44, '江西', 'JX', 1),
(702, 44, '吉林', 'JL', 1),
(703, 44, '辽宁', 'LI', 1),
(704, 44, '澳门', 'MA', 1),
(705, 44, '宁夏', 'NI', 1),
(706, 44, '山西', 'SH', 1),
(707, 44, '山东', 'SA', 1),
(708, 44, '上海', 'SG', 1),
(709, 44, '陕西', 'SX', 1),
(710, 44, '四川', 'SI', 1),
(711, 44, '天津', 'TI', 1),
(712, 44, '新疆', 'XI', 1),
(713, 44, '云南', 'YU', 1),
(714, 44, '浙江', 'ZH', 1);

-- --------------------------------------------------------

--
-- 表的结构 `oc_zone_to_geo_zone`
--

CREATE TABLE IF NOT EXISTS `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- 转存表中的数据 `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(57, 222, 0, 3, '2010-02-26 22:33:24', '0000-00-00 00:00:00'),
(65, 222, 0, 4, '2010-12-15 15:18:13', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
