SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sd_ad
-- ----------------------------
DROP TABLE IF EXISTS `sd_ad`;
CREATE TABLE `sd_ad` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT '',
  `datalist` text,
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  `akey` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin`;
CREATE TABLE `sd_admin` (
  `adminid` int(10) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(50) DEFAULT '',
  `adminpass` varchar(50) DEFAULT '',
  `penname` varchar(20) DEFAULT '',
  `pid` int(10) DEFAULT '0',
  `logintimes` int(10) DEFAULT '0',
  `lastlogindate` int(10) DEFAULT '0',
  `lastloginip` varchar(50) DEFAULT '',
  `openid` varchar(255) DEFAULT '',
  `readonly` smallint(1) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`adminid`),
  KEY `adminname` (`adminname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin_log`;
CREATE TABLE `sd_admin_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `msg` varchar(255) DEFAULT '',
  `ip` varchar(50) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin_login_log`;
CREATE TABLE `sd_admin_login_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(50) DEFAULT '',
  `loginip` varchar(50) DEFAULT '',
  `logindate` int(10) DEFAULT '0',
  `loginmsg` varchar(255) DEFAULT '',
  `loginstate` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin_menu`;
CREATE TABLE `sd_admin_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `cname` varchar(50) DEFAULT '',
  `aname` varchar(50) DEFAULT '',
  `dname` varchar(255) DEFAULT '',
  `followid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  `icon` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_admin_part
-- ----------------------------
DROP TABLE IF EXISTS `sd_admin_part`;
CREATE TABLE `sd_admin_part` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `page_list` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_alias
-- ----------------------------
DROP TABLE IF EXISTS `sd_alias`;
CREATE TABLE `sd_alias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) DEFAULT '',
  `app` varchar(50) DEFAULT '',
  `sid` int(10) DEFAULT '0',
  `types` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_area
-- ----------------------------
DROP TABLE IF EXISTS `sd_area`;
CREATE TABLE `sd_area` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `followid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  PRIMARY KEY (`cateid`),
  KEY `followid` (`followid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_article
-- ----------------------------
DROP TABLE IF EXISTS `sd_article`;
CREATE TABLE `sd_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classid` int(10) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `pic` varchar(255) DEFAULT '',
  `ispic` smallint(1) DEFAULT '0',
  `alias` varchar(50) DEFAULT '',
  `isnice` smallint(1) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  `hits` int(10) DEFAULT '0',
  `intro` varchar(500) DEFAULT '',
  `isurl` smallint(1) DEFAULT '0',
  `url` varchar(255) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  `seo_title` varchar(255) DEFAULT '',
  `seo_key` varchar(255) DEFAULT '',
  `seo_desc` varchar(255) DEFAULT '',
  `skinroot` varchar(255) DEFAULT '',
  `view_groupid` varchar(255) DEFAULT '',
  `adminid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `where1` (`islock`,`classid`),
  KEY `where2` (`islock`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_article_class
-- ----------------------------
DROP TABLE IF EXISTS `sd_article_class`;
CREATE TABLE `sd_article_class` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `followid` int(10) DEFAULT '0',
  `cate_name` varchar(255) DEFAULT '',
  `cate_url` varchar(255) DEFAULT '',
  `cate_page` int(10) DEFAULT '20',
  `cate_order` int(10) DEFAULT '0',
  `cate_nice` smallint(1) DEFAULT '0',
  `cate_title` varchar(255) DEFAULT '',
  `cate_key` varchar(255) DEFAULT '',
  `cate_desc` varchar(255) DEFAULT '',
  `cate_list` varchar(255) DEFAULT '',
  `cate_show` varchar(255) DEFAULT '',
  PRIMARY KEY (`cateid`),
  KEY `order` (`cate_order`,`cateid`),
  KEY `where` (`followid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_article_data
-- ----------------------------
DROP TABLE IF EXISTS `sd_article_data`;
CREATE TABLE `sd_article_data` (
  `dataid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `content` mediumtext,
  PRIMARY KEY (`dataid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_attachment
-- ----------------------------
DROP TABLE IF EXISTS `sd_attachment`;
CREATE TABLE `sd_attachment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `file_url` varchar(255) DEFAULT '',
  `file_name` varchar(255) DEFAULT '',
  `file_ext` varchar(50) DEFAULT '',
  `file_size` int(10) DEFAULT '0',
  `file_type` int(10) DEFAULT '0',
  `file_update` int(10) DEFAULT '0',
  `file_mode` int(10) DEFAULT '0',
  `file_local` int(10) DEFAULT '0',
  `file_adminid` int(10) DEFAULT '0',
  `file_userid` int(10) DEFAULT '0',
  `file_ip` varchar(50) DEFAULT '',
  `gid` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`file_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_attachment_group
-- ----------------------------
DROP TABLE IF EXISTS `sd_attachment_group`;
CREATE TABLE `sd_attachment_group` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_auth
-- ----------------------------
DROP TABLE IF EXISTS `sd_auth`;
CREATE TABLE `sd_auth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ckey` varchar(50) DEFAULT '',
  `cval` text,
  `cdate` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_badword
-- ----------------------------
DROP TABLE IF EXISTS `sd_badword`;
CREATE TABLE `sd_badword` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `words` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_cache_app
-- ----------------------------
DROP TABLE IF EXISTS `sd_cache_app`;
CREATE TABLE `sd_cache_app` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `access_token` varchar(255) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_card
-- ----------------------------
DROP TABLE IF EXISTS `sd_card`;
CREATE TABLE `sd_card` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` varchar(255) DEFAULT '' COMMENT '卡券编号',
  `cardpass` varchar(50) DEFAULT '' COMMENT '卡券密码',
  `cardmoney` decimal(10,2) DEFAULT '0.00' COMMENT '卡券面值',
  `isopentime` smallint(1) DEFAULT '0' COMMENT '是否开启有效期：(1：开启，2：不开启)',
  `begindate` int(10) DEFAULT '0' COMMENT '兑换开始时间',
  `overdate` int(10) DEFAULT '0' COMMENT '兑换截至时间',
  `createdate` int(10) DEFAULT '0' COMMENT '创建时间',
  `ispass` smallint(1) DEFAULT '0',
  `userid` int(10) DEFAULT '0' COMMENT '会员ID',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_city
-- ----------------------------
DROP TABLE IF EXISTS `sd_city`;
CREATE TABLE `sd_city` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `followid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `site_open` smallint(1) DEFAULT '0',
  `site_root` varchar(50) DEFAULT '',
  `site_domain` smallint(1) DEFAULT '0',
  `issys` smallint(1) DEFAULT '0',
  `site_self` smallint(1) DEFAULT '0',
  `site_title` varchar(255) DEFAULT '',
  `site_key` varchar(255) DEFAULT '',
  `site_desc` varchar(255) DEFAULT '',
  PRIMARY KEY (`cateid`),
  KEY `followid` (`followid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_config
-- ----------------------------
DROP TABLE IF EXISTS `sd_config`;
CREATE TABLE `sd_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gid` int(10) DEFAULT '0',
  `ckey` varchar(50) DEFAULT '',
  `ctitle` varchar(50) DEFAULT '',
  `cvalue` text,
  `ordnum` int(10) DEFAULT '0',
  `ctype` int(10) DEFAULT '0',
  `dvalue` text,
  `dtext` varchar(255) DEFAULT '',
  `rtype` smallint(1) DEFAULT '0',
  `utype` smallint(1) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  `issys` smallint(1) DEFAULT '0',
  `ishide` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ckey` (`ckey`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_config_group
-- ----------------------------
DROP TABLE IF EXISTS `sd_config_group`;
CREATE TABLE `sd_config_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `gkey` varchar(50) DEFAULT '',
  `islock` smallint(1) DEFAULT '0',
  `types` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_field
-- ----------------------------
DROP TABLE IF EXISTS `sd_field`;
CREATE TABLE `sd_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` int(10) DEFAULT '0',
  `field_title` varchar(50) DEFAULT '',
  `field_key` varchar(50) DEFAULT '',
  `field_type` int(50) DEFAULT '0',
  `field_length` int(10) DEFAULT '0',
  `field_upload_type` int(10) DEFAULT '0',
  `field_default` varchar(255) DEFAULT '',
  `field_list` text,
  `field_sql` varchar(255) DEFAULT '',
  `field_tips` varchar(255) DEFAULT '',
  `field_rule` int(10) DEFAULT '0',
  `field_radio` int(10) DEFAULT '0',
  `field_editor` int(10) DEFAULT '0',
  `field_group` int(10) DEFAULT '0',
  `field_filter` int(10) DEFAULT '0',
  `field_table` varchar(50) DEFAULT '',
  `field_join` varchar(255) DEFAULT '',
  `field_where` varchar(255) DEFAULT '',
  `field_order` varchar(255) DEFAULT '',
  `field_value` varchar(50) DEFAULT '',
  `field_label` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods`;
CREATE TABLE `sd_goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classid` int(10) DEFAULT '0',
  `brandid` int(10) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `no` varchar(50) DEFAULT '',
  `stock` int(10) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `sales` int(10) DEFAULT '0',
  `vsales` int(10) DEFAULT '0',
  `dprice` decimal(10,2) DEFAULT '0.00',
  `vprice` decimal(10,2) DEFAULT '0.00',
  `aprice` decimal(10,2) DEFAULT '0.00',
  `pic` varchar(255) DEFAULT '',
  `ispresale` smallint(1) DEFAULT '0',
  `presalemode` smallint(1) DEFAULT '0',
  `presaletype` smallint(1) DEFAULT '0',
  `presalepecent` int(10) DEFAULT '0',
  `presalemoney` decimal(10,2) DEFAULT '0.00',
  `postmode` smallint(1) DEFAULT '0',
  `postgoodsdate` int(10) DEFAULT '0',
  `postday` int(10) DEFAULT '0',
  `freight_way` int(10) DEFAULT '0',
  `freight_money` decimal(10,2) DEFAULT '0.00',
  `freight_id` int(10) DEFAULT '0',
  `freenum` int(10) DEFAULT '0',
  `types` smallint(10) DEFAULT '0',
  `saletype` smallint(1) DEFAULT '0',
  `point` int(10) DEFAULT '0',
  `minnum` int(10) DEFAULT '0',
  `maxnum` int(10) DEFAULT '0',
  `service_state` smallint(1) DEFAULT '0',
  `issuit` smallint(1) DEFAULT '0',
  `suitfreight` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `lastupdate` int(10) DEFAULT '0',
  `hits` int(10) DEFAULT '0',
  `isnice` smallint(1) DEFAULT '0',
  `islock` smallint(2) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `filter` varchar(500) DEFAULT '',
  `seo_title` varchar(255) DEFAULT '',
  `seo_key` varchar(255) DEFAULT '',
  `seo_desc` varchar(255) DEFAULT '',
  `alias` varchar(50) DEFAULT '',
  `skinroot` varchar(255) DEFAULT '',
  `is_share` smallint(1) DEFAULT '0',
  `share_type` smallint(1) DEFAULT '1',
  `share_value` int(10) DEFAULT '0',
  `linkurl` varchar(255) DEFAULT '',
  `linkcode` varchar(50) DEFAULT '',
  `is_activity` smallint(1) DEFAULT '0',
  `activity_id` int(10) DEFAULT '0',
  `activity_type` smallint(1) DEFAULT '0',
  `activity_num` int(10) DEFAULT '0',
  `activity_begin` int(10) DEFAULT '0',
  `activity_over` int(10) DEFAULT '0',
  `adminid` int(10) DEFAULT '0',
  `tags` varchar(255) DEFAULT '',
  `tagslist` varchar(255) DEFAULT '',
  `subid` varchar(255) DEFAULT '',
  `isfull` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `where1` (`islock`,`classid`),
  KEY `where2` (`islock`,`brandid`),
  KEY `where3` (`islock`,`isnice`),
  KEY `where4` (`islock`,`classid`,`brandid`),
  KEY `order` (`ordnum`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_brand`;
CREATE TABLE `sd_goods_brand` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `logo` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `intro` mediumtext,
  `pagenum` int(10) DEFAULT '0',
  `ordernum` int(10) DEFAULT '0',
  `letter` smallint(2) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  `seo_title` varchar(255) DEFAULT '',
  `seo_key` varchar(255) DEFAULT '',
  `seo_desc` varchar(255) DEFAULT '',
  `skinroot` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_class`;
CREATE TABLE `sd_goods_class` (
  `cateid` int(10) NOT NULL AUTO_INCREMENT,
  `followid` int(10) DEFAULT '0',
  `cate_name` varchar(255) DEFAULT '',
  `cate_mname` varchar(255) DEFAULT '',
  `cate_pic` varchar(255) DEFAULT '',
  `cate_url` varchar(50) DEFAULT '',
  `cate_skuid` int(10) DEFAULT '0',
  `cate_paraid` int(10) DEFAULT '0',
  `cate_brand` varchar(255) DEFAULT '',
  `cate_page` int(10) DEFAULT '0',
  `cate_order` int(10) DEFAULT '0',
  `cate_nice` smallint(1) DEFAULT '0',
  `cate_title` varchar(255) DEFAULT '',
  `cate_key` varchar(255) DEFAULT '',
  `cate_desc` varchar(255) DEFAULT '',
  `cate_list` varchar(255) DEFAULT '',
  `cate_show` varchar(255) DEFAULT '',
  `cate_filter` int(10) DEFAULT '0',
  `cate_filter_price` text,
  `cate_ad` text,
  PRIMARY KEY (`cateid`),
  KEY `where` (`followid`),
  KEY `order` (`cate_order`,`cateid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_data
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_data`;
CREATE TABLE `sd_goods_data` (
  `dataid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `video` varchar(255) DEFAULT '',
  `videopic` varchar(255) DEFAULT '',
  `piclist` text,
  `sku` text,
  `thumb` text,
  `color` varchar(50) DEFAULT '',
  `suitname` varchar(50) DEFAULT '',
  `suittype` smallint(1) DEFAULT '0',
  `suitmoney` decimal(10,2) DEFAULT '0.00',
  `suit` varchar(255) DEFAULT '',
  `gift` varchar(255) DEFAULT '',
  `para` text,
  `content` mediumtext,
  `mdata` mediumtext,
  PRIMARY KEY (`dataid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_filter
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_filter`;
CREATE TABLE `sd_goods_filter` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_filter_list
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_filter_list`;
CREATE TABLE `sd_goods_filter_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_filter_list_param
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_filter_list_param`;
CREATE TABLE `sd_goods_filter_list_param` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_list
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_list`;
CREATE TABLE `sd_goods_list` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `sku` varchar(255) DEFAULT '',
  `no` varchar(50) DEFAULT '',
  `dprice` decimal(10,2) DEFAULT '0.00',
  `vprice` decimal(10,2) DEFAULT '0.00',
  `aprice` decimal(10,2) DEFAULT '0.00',
  `stock` int(10) DEFAULT '0',
  `weight` decimal(10,2) DEFAULT '0.00',
  `linkurl` varchar(255) DEFAULT '',
  `linkcode` varchar(50) DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_para
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_para`;
CREATE TABLE `sd_goods_para` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_para_list
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_para_list`;
CREATE TABLE `sd_goods_para_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `field_key` varchar(50) DEFAULT '',
  `field_type` int(10) DEFAULT '0',
  `field_list` text,
  `field_default` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_sku`;
CREATE TABLE `sd_goods_sku` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_sku_list
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_sku_list`;
CREATE TABLE `sd_goods_sku_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(10) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `types` smallint(1) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `datalist` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `sd_goods_stock`;
CREATE TABLE `sd_goods_stock` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) DEFAULT '0',
  `goods_skuid` int(10) DEFAULT '0',
  `cardid` varchar(255) DEFAULT '',
  `cardpass` varchar(255) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `state` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `orderdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_link
-- ----------------------------
DROP TABLE IF EXISTS `sd_link`;
CREATE TABLE `sd_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) DEFAULT '',
  `weblogo` varchar(255) DEFAULT '',
  `weburl` varchar(255) DEFAULT '',
  `islogo` smallint(1) DEFAULT '0',
  `classid` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_market_coupon
-- ----------------------------
DROP TABLE IF EXISTS `sd_market_coupon`;
CREATE TABLE `sd_market_coupon` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `types` int(10) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `consume` decimal(10,2) DEFAULT '0.00',
  `stock` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0',
  `groupid` varchar(255) DEFAULT '',
  `effectivedays` int(10) DEFAULT '0',
  `begindate` int(10) DEFAULT '0',
  `overdate` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_market_group
-- ----------------------------
DROP TABLE IF EXISTS `sd_market_group`;
CREATE TABLE `sd_market_group` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT '',
  `group_type` int(10) DEFAULT '0',
  `group_active` double(10,2) DEFAULT '0.00',
  `group_num` int(10) DEFAULT '0',
  `group_begin` int(10) DEFAULT '0',
  `group_over` int(10) DEFAULT '0',
  `group_open` smallint(1) DEFAULT '0',
  `group_close` smallint(1) DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_market_limit
-- ----------------------------
DROP TABLE IF EXISTS `sd_market_limit`;
CREATE TABLE `sd_market_limit` (
  `limit_id` int(10) NOT NULL AUTO_INCREMENT,
  `limit_name` varchar(50) DEFAULT '',
  `limit_type` int(10) DEFAULT '0',
  `limit_active` double(10,2) DEFAULT '0.00',
  `limit_begin` int(10) DEFAULT '0',
  `limit_over` int(10) DEFAULT '0',
  `limit_open` smallint(1) DEFAULT '0',
  `limit_close` smallint(1) DEFAULT '0',
  PRIMARY KEY (`limit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_menu
-- ----------------------------
DROP TABLE IF EXISTS `sd_menu`;
CREATE TABLE `sd_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `type` smallint(1) DEFAULT '0',
  `stype` smallint(1) DEFAULT '0',
  `tid` int(10) DEFAULT '0',
  `cid` int(10) DEFAULT '0',
  `url` varchar(255) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `islock` int(10) DEFAULT '0',
  `appurl` varchar(255) DEFAULT '',
  `color` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_onlinepay
-- ----------------------------
DROP TABLE IF EXISTS `sd_onlinepay`;
CREATE TABLE `sd_onlinepay` (
  `payid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `orderid` varchar(50) DEFAULT '',
  `pay_no` varchar(50) DEFAULT '0',
  `pay_type` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `ispay` smallint(1) DEFAULT '0',
  `paytimes` smallint(1) DEFAULT '0',
  `total_fee` decimal(10,2) DEFAULT '0.00',
  `pay_way` varchar(20) DEFAULT '',
  `pay_key` varchar(20) DEFAULT '',
  `paydate` int(10) DEFAULT '0',
  `trade_no` varchar(255) DEFAULT '',
  `isrefund` smallint(1) DEFAULT '0',
  `refunddate` int(10) DEFAULT '0',
  `refundmoney` decimal(10,2) DEFAULT '0.00',
  `bdpay_userid` varchar(255) DEFAULT '',
  PRIMARY KEY (`payid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order
-- ----------------------------
DROP TABLE IF EXISTS `sd_order`;
CREATE TABLE `sd_order` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(50) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `goods_total` decimal(10,2) DEFAULT '0.00',
  `goods_freight` decimal(10,2) DEFAULT '0.00',
  `goods_discount` decimal(10,2) DEFAULT '0.00',
  `order_admin` decimal(10,2) DEFAULT '0.00',
  `order_total` decimal(10,2) DEFAULT '0.00',
  `order_point` int(10) DEFAULT '0',
  `order_service` decimal(10,2) DEFAULT '0.00',
  `ispreorder` smallint(1) DEFAULT '0',
  `isfullorder` smallint(1) DEFAULT '0',
  `fristmoney` decimal(10,2) DEFAULT '0.00',
  `isfristpay` smallint(1) DEFAULT '0',
  `lastmoney` decimal(10,2) DEFAULT '0.00',
  `refund_total` decimal(10,2) DEFAULT '0.00',
  `goods_point` int(10) DEFAULT '0',
  `couponid` int(10) DEFAULT '0',
  `message` varchar(255) DEFAULT '',
  `payway` int(10) DEFAULT '1',
  `isreduce` smallint(1) DEFAULT '0',
  `ispay` smallint(1) DEFAULT '0',
  `isdelivery` int(10) DEFAULT '0',
  `deliverydate` int(10) DEFAULT '0',
  `isreceived` smallint(1) DEFAULT '0',
  `receiveddate` int(10) DEFAULT '0',
  `isevaluate` int(10) DEFAULT '0',
  `isclose` smallint(1) DEFAULT '0',
  `closecause` int(10) DEFAULT '0',
  `isrefund` smallint(1) DEFAULT '0',
  `refundstate` int(10) DEFAULT '0',
  `isover` smallint(1) DEFAULT '0',
  `invoiceurl` varchar(255) DEFAULT '',
  `lastpaydate` int(10) DEFAULT '0',
  `lastreceiptdate` int(10) DEFAULT '0',
  `lastscoredate` int(10) DEFAULT '0',
  `paytype` smallint(1) DEFAULT '0',
  `ordertype` smallint(1) DEFAULT '1',
  `orderpost` smallint(1) DEFAULT '0',
  `groupid` int(10) DEFAULT '0',
  `comefrom` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `store_id` int(10) DEFAULT '0',
  `order_code` varchar(255) DEFAULT '',
  PRIMARY KEY (`order_id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_address
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_address`;
CREATE TABLE `sd_order_address` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `name` varchar(20) DEFAULT '',
  `mobile` varchar(50) DEFAULT NULL,
  `province` varchar(20) DEFAULT '',
  `city` varchar(20) DEFAULT '',
  `county` varchar(20) DEFAULT '',
  `street` varchar(255) DEFAULT '',
  `qq` varchar(30) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `idcard` varchar(50) DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_group
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_group`;
CREATE TABLE `sd_order_group` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `goods_id` int(10) DEFAULT '0',
  `neednum` int(10) DEFAULT '0',
  `hasnum` int(10) DEFAULT '0',
  `group_createdate` int(10) DEFAULT '0',
  `group_overdate` int(10) DEFAULT '0',
  `group_state` smallint(1) DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_invoice
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_invoice`;
CREATE TABLE `sd_order_invoice` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `invoice_type` smallint(1) DEFAULT '0',
  `invoice_rise` int(10) DEFAULT '1',
  `company_name` varchar(255) DEFAULT '',
  `company_no` varchar(50) DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_list
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_list`;
CREATE TABLE `sd_order_list` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `goods_id` int(10) DEFAULT '0',
  `goods_skuid` int(10) DEFAULT '0',
  `goods_name` varchar(255) DEFAULT '',
  `goods_skuname` varchar(50) DEFAULT '',
  `goods_no` varchar(50) DEFAULT '',
  `goods_pic` varchar(255) DEFAULT '',
  `goods_price` decimal(10,2) DEFAULT '0.00',
  `goods_point` int(10) DEFAULT '0',
  `goods_saletype` smallint(2) DEFAULT '0',
  `goods_num` int(10) DEFAULT '0',
  `goods_freight` decimal(10,2) DEFAULT '0.00',
  `goods_total` decimal(10,2) DEFAULT '0.00',
  `goods_total_point` int(10) DEFAULT '0',
  `goods_isgift` int(10) DEFAULT '0',
  `goods_service` smallint(1) DEFAULT '0',
  `goods_issuit` smallint(1) DEFAULT '0',
  `goods_suitid` int(10) DEFAULT '0',
  `goods_share` decimal(10,2) DEFAULT '0.00',
  `backnum` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_pay
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_pay`;
CREATE TABLE `sd_order_pay` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT '0',
  `paymoney` decimal(10,2) DEFAULT '0.00',
  `payway` smallint(1) DEFAULT '0',
  `blankname` varchar(50) DEFAULT '',
  `blankno` varchar(50) DEFAULT '',
  `voucher` varchar(255) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `orderid` (`orderid`,`payway`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_post
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_post`;
CREATE TABLE `sd_order_post` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT '0',
  `posttype` int(10) DEFAULT '0',
  `postname` varchar(50) DEFAULT '',
  `postcode` varchar(50) DEFAULT '',
  `postsn` varchar(50) DEFAULT '',
  `remark` varchar(5000) DEFAULT NULL,
  `postdata` text,
  `postsign` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_refund`;
CREATE TABLE `sd_order_refund` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `types` smallint(1) DEFAULT '0',
  `refundmoney` decimal(10,2) DEFAULT '0.00',
  `refundwhy` varchar(255) DEFAULT '',
  `backwhy` varchar(255) DEFAULT '',
  `refundall` smallint(1) DEFAULT '0',
  `isback` smallint(1) DEFAULT '0',
  `postcompany` varchar(255) DEFAULT '',
  `postno` varchar(50) DEFAULT '',
  `isover` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_score
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_score`;
CREATE TABLE `sd_order_score` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT '0',
  `cid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `score` smallint(1) DEFAULT '0',
  `evaluate` text,
  `piclist` text,
  `reply` text,
  `islock` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `face` varchar(255) DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_order_score_file
-- ----------------------------
DROP TABLE IF EXISTS `sd_order_score_file`;
CREATE TABLE `sd_order_score_file` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` int(10) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `url` varchar(255) DEFAULT '',
  `state` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_search
-- ----------------------------
DROP TABLE IF EXISTS `sd_search`;
CREATE TABLE `sd_search` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `hits` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `lastupdate` int(10) DEFAULT '0',
  `ip` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_sitelink
-- ----------------------------
DROP TABLE IF EXISTS `sd_sitelink`;
CREATE TABLE `sd_sitelink` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `num` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_store
-- ----------------------------
DROP TABLE IF EXISTS `sd_store`;
CREATE TABLE `sd_store` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `name` varchar(20) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `province` varchar(20) DEFAULT '',
  `city` varchar(20) DEFAULT '',
  `county` varchar(20) DEFAULT '',
  `street` varchar(255) DEFAULT '',
  `opendate` varchar(255) DEFAULT '',
  `islock` smallint(1) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `lastupdate` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_tags
-- ----------------------------
DROP TABLE IF EXISTS `sd_tags`;
CREATE TABLE `sd_tags` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `hits` int(10) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_temp_freight
-- ----------------------------
DROP TABLE IF EXISTS `sd_temp_freight`;
CREATE TABLE `sd_temp_freight` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '',
  `types` smallint(1) DEFAULT '0',
  `area` text,
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_temp_sms
-- ----------------------------
DROP TABLE IF EXISTS `sd_temp_sms`;
CREATE TABLE `sd_temp_sms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `content` text,
  `islock` smallint(1) DEFAULT '0',
  `mkey` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user
-- ----------------------------
DROP TABLE IF EXISTS `sd_user`;
CREATE TABLE `sd_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `umobile` varchar(20) DEFAULT '',
  `upass` varchar(50) DEFAULT '',
  `uname` varchar(255) DEFAULT NULL,
  `umoney` decimal(10,2) DEFAULT '0.00',
  `upoint` int(10) DEFAULT '0',
  `uface` varchar(255) DEFAULT '',
  `uid` int(10) DEFAULT '0',
  `pid` int(10) DEFAULT '0',
  `share_money` decimal(10,2) DEFAULT '0.00',
  `share_money_total` decimal(10,2) DEFAULT '0.00',
  `share_freeze` decimal(10,2) DEFAULT '0.00',
  `islock` smallint(1) DEFAULT '0',
  `regdate` int(10) DEFAULT '0',
  `regip` varchar(50) DEFAULT '',
  `logintimes` int(10) DEFAULT '0',
  `lastlogindate` int(10) DEFAULT '0',
  `lastloginip` varchar(50) DEFAULT '',
  `wxopenid` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uname` (`uname`),
  KEY `uid` (`uid`),
  KEY `islock` (`islock`),
  KEY `umobile` (`umobile`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_address
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_address`;
CREATE TABLE `sd_user_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `name` varchar(20) DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `province` varchar(20) DEFAULT '',
  `city` varchar(20) DEFAULT '',
  `county` varchar(20) DEFAULT '',
  `street` varchar(255) DEFAULT '',
  `isdefault` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `lastupdate` int(10) DEFAULT '0',
  `qq` varchar(30) DEFAULT '',
  `email` varchar(50) DEFAULT '',
  `idcard` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `isdefault` (`isdefault`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_cart
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_cart`;
CREATE TABLE `sd_user_cart` (
  `cartid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `ischeck` smallint(1) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `skuid` int(10) DEFAULT '0',
  `buynum` int(10) DEFAULT '0',
  `isgift` int(10) DEFAULT '0',
  `issuit` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `lastupdate` int(10) DEFAULT '0',
  PRIMARY KEY (`cartid`),
  KEY `userid` (`userid`),
  KEY `goodsid` (`goodsid`),
  KEY `skuid` (`skuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_code
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_code`;
CREATE TABLE `sd_user_code` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) DEFAULT '',
  `code` varchar(20) DEFAULT '',
  `types` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `isover` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`,`types`,`isover`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_coupon
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_coupon`;
CREATE TABLE `sd_user_coupon` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `userid` int(10) DEFAULT '0',
  `begintime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `gettime` int(10) DEFAULT '0',
  `status` smallint(1) DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `where` (`userid`,`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_favorite
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_favorite`;
CREATE TABLE `sd_user_favorite` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `goodsid` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_group
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_group`;
CREATE TABLE `sd_user_group` (
  `gid` int(10) NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) DEFAULT '',
  `grate` double(10,2) DEFAULT '0.00',
  `gfold` smallint(1) DEFAULT '0',
  `gnum` int(10) DEFAULT '0',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_login
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_login`;
CREATE TABLE `sd_user_login` (
  `oid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `type` varchar(20) DEFAULT '',
  `openid` varchar(255) DEFAULT '',
  `unionid` varchar(255) DEFAULT '',
  `session_key` varchar(255) DEFAULT '',
  `loginkey` varchar(255) DEFAULT '',
  `islogin` smallint(1) DEFAULT '0',
  PRIMARY KEY (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_money
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_money`;
CREATE TABLE `sd_user_money` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `types` smallint(1) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `oldmoney` decimal(10,2) DEFAULT '0.00',
  `newmoney` decimal(10,2) DEFAULT '0.00',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_pay
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_pay`;
CREATE TABLE `sd_user_pay` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(50) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `paymoney` decimal(10,2) DEFAULT '0.00',
  `createdate` int(10) DEFAULT '0',
  `ispay` smallint(1) DEFAULT '0',
  `payway` varchar(50) DEFAULT '',
  `paydate` int(10) DEFAULT '0',
  `trade_no` varchar(255) DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_point
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_point`;
CREATE TABLE `sd_user_point` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `types` smallint(1) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `point` int(10) DEFAULT '0',
  `oldpoint` int(10) DEFAULT '0',
  `newpoint` int(10) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_share
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_share`;
CREATE TABLE `sd_user_share` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `types` smallint(1) DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `userid` int(10) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `oldmoney` decimal(10,2) DEFAULT '0.00',
  `newmoney` decimal(10,2) DEFAULT '0.00',
  `createdate` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_share_cash
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_share_cash`;
CREATE TABLE `sd_user_share_cash` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `charge` decimal(10,2) DEFAULT '0.00',
  `realmoney` decimal(10,2) DEFAULT '0.00',
  `blankway` varchar(50) DEFAULT '',
  `blankname` varchar(255) DEFAULT '',
  `truename` varchar(50) DEFAULT '',
  `cardid` varchar(255) DEFAULT '',
  `islock` smallint(1) DEFAULT '0',
  `createdate` int(10) DEFAULT '0',
  `payurl` varchar(255) DEFAULT '',
  `overdate` int(10) DEFAULT '0',
  `remark` varchar(50) DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_user_sign
-- ----------------------------
DROP TABLE IF EXISTS `sd_user_sign`;
CREATE TABLE `sd_user_sign` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(10) DEFAULT '0',
  `sign_date` int(10) DEFAULT '0',
  `sign_day` int(10) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_wx_auto_key
-- ----------------------------
DROP TABLE IF EXISTS `sd_wx_auto_key`;
CREATE TABLE `sd_wx_auto_key` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `reply_type` int(10) DEFAULT '0',
  `reply_text` text,
  `reply_id` int(10) DEFAULT '0',
  `matchtype` int(10) DEFAULT '0',
  `ordnum` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_wx_auto_reply
-- ----------------------------
DROP TABLE IF EXISTS `sd_wx_auto_reply`;
CREATE TABLE `sd_wx_auto_reply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `reply_key` varchar(50) DEFAULT '',
  `reply_type` int(10) DEFAULT '0',
  `reply_text` text,
  `reply_id` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_wx_mass
-- ----------------------------
DROP TABLE IF EXISTS `sd_wx_mass`;
CREATE TABLE `sd_wx_mass` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `mass_type` int(10) DEFAULT '0',
  `mass_text` text,
  `mass_id` int(10) DEFAULT '0',
  `isover` smallint(1) DEFAULT '0',
  `total_num` int(10) DEFAULT '0',
  `success_num` int(10) DEFAULT '0',
  `fail_num` int(10) DEFAULT '0',
  `msg_id` varchar(255) DEFAULT '',
  `post_type` smallint(2) DEFAULT '0',
  `wxname` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_wx_mater
-- ----------------------------
DROP TABLE IF EXISTS `sd_wx_mater`;
CREATE TABLE `sd_wx_mater` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '',
  `media_id` varchar(255) DEFAULT '',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_wx_mater_data
-- ----------------------------
DROP TABLE IF EXISTS `sd_wx_mater_data`;
CREATE TABLE `sd_wx_mater_data` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  `pic` varchar(255) DEFAULT '',
  `intro` varchar(255) DEFAULT '',
  `content` mediumtext,
  `url` varchar(1000) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  `piclist` text,
  `media_id` varchar(255) DEFAULT '',
  `media_date` int(10) DEFAULT '0',
  `islock` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_wx_menu
-- ----------------------------
DROP TABLE IF EXISTS `sd_wx_menu`;
CREATE TABLE `sd_wx_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT '',
  `followid` int(10) DEFAULT '0',
  `sonnum` int(10) DEFAULT '0',
  `reply_type` int(10) DEFAULT '0',
  `reply_text` text,
  `reply_id` int(10) DEFAULT '0',
  `reply_url` text,
  `appid` varchar(255) DEFAULT '',
  `pagepath` varchar(255) DEFAULT '',
  `ordnum` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `sd_ad` VALUES ('1', 'Pc站Banner（尺寸：1920*550）', '{\"1\":{\"image\":\"/upfile/pc/1.jpg\",\"desc\":\"\",\"url\":\"\"},\"2\":{\"image\":\"/upfile/pc/2.jpg\",\"desc\":\"\",\"url\":\"\"},\"3\":{\"image\":\"/upfile/pc/3.jpg\",\"desc\":\"\",\"url\":\"\"}}', '0', '1', 'pc');
INSERT INTO `sd_ad` VALUES ('2', '手机站Banner（尺寸：640*300）', '{\"1\":{\"image\":\"/upfile/mobile/1.jpg\",\"desc\":\"\",\"url\":\"\"},\"2\":{\"image\":\"/upfile/mobile/2.jpg\",\"desc\":\"\",\"url\":\"\"},\"3\":{\"image\":\"/upfile/mobile/3.jpg\",\"desc\":\"\",\"url\":\"\"}}', '0', '1', 'mobile');
INSERT INTO `sd_ad` VALUES ('3', '小程序Banner（尺寸：640*300）', '{\"1\":{\"image\":\"/upfile/mobile/1.jpg\",\"desc\":\"\",\"url\":\"\"},\"2\":{\"image\":\"/upfile/mobile/2.jpg\",\"desc\":\"\",\"url\":\"\"},\"3\":{\"image\":\"/upfile/mobile/3.jpg\",\"desc\":\"\",\"url\":\"\"}}', '0', '1', 'open');
INSERT INTO `sd_admin_menu` VALUES ('1', '店铺管理', '', '', '', '0', '1', '1', 'ui-icon-laptop');
INSERT INTO `sd_admin_menu` VALUES ('2', '商品管理', '', '', '', '0', '2', '1', 'ui-icon-file-ppt');
INSERT INTO `sd_admin_menu` VALUES ('3', '订单管理', '', '', '', '0', '3', '1', 'ui-icon-shopping');
INSERT INTO `sd_admin_menu` VALUES ('4', '营销管理', '', '', '', '0', '4', '1', 'ui-icon-gift');
INSERT INTO `sd_admin_menu` VALUES ('5', '数据统计', '', '', '', '0', '5', '1', 'ui-icon-barchart');
INSERT INTO `sd_admin_menu` VALUES ('6', '文章管理', '', '', '', '0', '6', '1', 'ui-icon-file-word');
INSERT INTO `sd_admin_menu` VALUES ('7', '会员管理', '', '', '', '0', '7', '1', 'ui-icon-team');
INSERT INTO `sd_admin_menu` VALUES ('8', '微信公众号', '', '', '', '0', '8', '1', 'ui-icon-weixin');
INSERT INTO `sd_admin_menu` VALUES ('9', '模板插件', '', '', '', '0', '9', '1', 'ui-icon-plus');
INSERT INTO `sd_admin_menu` VALUES ('10', '扩展管理', '', '', '', '0', '10', '1', 'ui-icon-api');
INSERT INTO `sd_admin_menu` VALUES ('11', '系统管理', '', '', '', '0', '11', '1', 'ui-icon-setting');
INSERT INTO `sd_admin_menu` VALUES ('12', '店铺设置', 'config', 'index', '', '1', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('13', '店铺接口', 'configapi', 'index', '', '1', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('14', '部门管理', 'adminpart', 'index', '', '1', '0', '1', 'am-icon-cube');
INSERT INTO `sd_admin_menu` VALUES ('15', '后台用户', 'admin', 'index', '', '1', '0', '1', 'am-icon-user-plus');
INSERT INTO `sd_admin_menu` VALUES ('16', '商品管理', 'goods', 'index', '', '2', '0', '1', 'am-icon-product-hunt');
INSERT INTO `sd_admin_menu` VALUES ('17', '商品分类', 'goodsclass', 'index', '', '2', '0', '1', 'am-icon-sitemap');
INSERT INTO `sd_admin_menu` VALUES ('18', '商品品牌', 'goodsbrand', 'index', '', '2', '0', '1', 'am-icon-cubes');
INSERT INTO `sd_admin_menu` VALUES ('19', '商品规格', 'goodssku', 'index', '', '2', '0', '1', 'am-icon-puzzle-piece');
INSERT INTO `sd_admin_menu` VALUES ('20', '商品参数', 'goodspara', 'index', '', '2', '0', '1', 'am-icon-table');
INSERT INTO `sd_admin_menu` VALUES ('21', '商品筛选', 'goodsfilter', 'index', '', '2', '0', '1', 'am-icon-filter');
INSERT INTO `sd_admin_menu` VALUES ('22', '订单管理', 'order', 'index', '', '3', '0', '1', 'am-icon-shopping-bag');
INSERT INTO `sd_admin_menu` VALUES ('23', '拼团管理', 'ordergroup', 'index', '', '3', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('24', '评价管理', 'orderscore', 'index', '', '3', '0', '1', 'am-icon-star-o');
INSERT INTO `sd_admin_menu` VALUES ('25', '支付记录', 'orderonline', 'index', '', '3', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('26', '优惠券', 'marketcoupon', 'index', '', '4', '0', '1', 'am-icon-credit-card');
INSERT INTO `sd_admin_menu` VALUES ('27', '限时优惠', 'marketlimit', 'index', '', '4', '0', '1', 'am-icon-clock-o');
INSERT INTO `sd_admin_menu` VALUES ('28', '多人拼团', 'marketgroup', 'index', '', '4', '0', '1', 'am-icon-users');
INSERT INTO `sd_admin_menu` VALUES ('29', '收入统计', 'count', 'index', '', '5', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('30', '订单统计', 'countorder', 'index', '', '5', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('31', '会员统计', 'countuser', 'index', '', '5', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('32', '文章分类', 'articleclass', 'index', '', '6', '0', '1', 'am-icon-sitemap');
INSERT INTO `sd_admin_menu` VALUES ('33', '文章管理', 'article', 'index', '', '6', '0', '1', 'am-icon-files-o');
INSERT INTO `sd_admin_menu` VALUES ('34', '会员管理', 'user', 'index', '', '7', '0', '1', 'am-icon-user');
INSERT INTO `sd_admin_menu` VALUES ('35', '会员组管理', 'usergroup', 'index', '', '7', '0', '1', 'am-icon-users');
INSERT INTO `sd_admin_menu` VALUES ('36', '会员设置', 'userconfig', 'index', '', '7', '0', '1', 'am-icon-cog');
INSERT INTO `sd_admin_menu` VALUES ('37', '财务管理', 'usermoney', 'index', '', '7', '0', '1', 'am-icon-rmb');
INSERT INTO `sd_admin_menu` VALUES ('38', '积分管理', 'userpoint', 'index', '', '7', '0', '1', 'am-icon-file-powerpoint-o');
INSERT INTO `sd_admin_menu` VALUES ('39', '提现管理', 'usercash', 'index', '', '7', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('40', '佣金管理', 'usershare', 'index', '', '7', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('41', '素材管理', 'wxmater', 'index', '', '8', '0', '1', 'am-icon-file-text-o');
INSERT INTO `sd_admin_menu` VALUES ('42', '关注回复', 'wxsubscribe', 'index', '', '8', '0', '1', 'am-icon-comment-o');
INSERT INTO `sd_admin_menu` VALUES ('43', '自动回复', 'wxauto', 'index', '', '8', '0', '1', 'am-icon-comments-o');
INSERT INTO `sd_admin_menu` VALUES ('44', '关键字回复', 'wxkey', 'index', '', '8', '0', '1', 'am-icon-comments');
INSERT INTO `sd_admin_menu` VALUES ('45', '菜单管理', 'wxmenu', 'index', '', '8', '0', '1', 'am-icon-sitemap');
INSERT INTO `sd_admin_menu` VALUES ('46', '群发管理', 'wxmass', 'index', '', '8', '0', '1', 'am-icon-bullhorn');
INSERT INTO `sd_admin_menu` VALUES ('47', '模板管理', 'theme', 'index', '', '9', '0', '1', 'am-icon-code');
INSERT INTO `sd_admin_menu` VALUES ('48', '区块管理', 'themeblock', 'index', '', '9', '0', '1', 'am-icon-file-o');
INSERT INTO `sd_admin_menu` VALUES ('49', '运费模板', 'themefreight', 'index', '', '9', '0', '1', 'am-icon-truck');
INSERT INTO `sd_admin_menu` VALUES ('50', '短信模板', 'themesms', 'index', '', '9', '0', '1', 'am-icon-phone');
INSERT INTO `sd_admin_menu` VALUES ('51', '插件管理', 'plug', 'index', '', '9', '0', '1', 'am-icon-plus');
INSERT INTO `sd_admin_menu` VALUES ('52', '友情链接', 'link', 'index', '', '10', '0', '1', 'am-icon-link');
INSERT INTO `sd_admin_menu` VALUES ('53', '广告管理', 'ad', 'index', '', '10', '0', '1', 'am-icon-laptop');
INSERT INTO `sd_admin_menu` VALUES ('54', '内链管理', 'sitelink', 'index', '', '10', '0', '1', 'am-icon-external-link');
INSERT INTO `sd_admin_menu` VALUES ('55', '区域管理', 'area', 'index', '', '11', '0', '1', 'am-icon-pie-chart');
INSERT INTO `sd_admin_menu` VALUES ('56', '设置分组', 'configgroup', 'index', '', '11', '0', '1', 'am-icon-table');
INSERT INTO `sd_admin_menu` VALUES ('57', '后台菜单', 'adminmenu', 'index', '', '11', '0', '1', 'am-icon-navicon');
INSERT INTO `sd_admin_menu` VALUES ('58', '管理日志', 'log', 'index', '', '11', '0', '1', 'am-icon-file-text-o');
INSERT INTO `sd_admin_menu` VALUES ('59', '错误日志', 'logerror', 'index', '', '11', '0', '1', 'am-icon-warning');
INSERT INTO `sd_admin_menu` VALUES ('60', '缓存管理', 'cache', 'index', '', '11', '0', '1', 'am-icon-retweet');
INSERT INTO `sd_admin_menu` VALUES ('61', '收款明细', 'orderpay', 'index', '', '3', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('62', '发货明细', 'orderpost', 'index', '', '3', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('64', '城市分站', '', '', '', '0', '8', '1', 'ui-icon-deploymentunit');
INSERT INTO `sd_admin_menu` VALUES ('65', '分站设置', 'cityconfig', 'index', '', '64', '1', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('66', '城市管理', 'city', 'index', '', '64', '3', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('67', '字段管理', 'field', 'index', '', '10', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('68', '导航菜单', 'menu', 'index', '', '10', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('69', '充值记录', 'userpay', 'index', '', '7', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('70', '标签管理', 'tags', 'index', '', '10', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('71', '搜索管理', 'search', 'index', '', '10', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('72', '佣金统计', 'countshare', 'index', '', '5', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('73', '门店管理', 'store', 'index', '', '1', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('74', '到店自提', 'fetch', 'index', '', '3', '0', '1', '');
INSERT INTO `sd_admin_menu` VALUES ('75', '充值卡管理', 'card', 'index', '', '7', '0', '1', '');
INSERT INTO `sd_alias` VALUES ('1', 'category', 'index/category', '0', '0');
INSERT INTO `sd_alias` VALUES ('2', 'city', 'index/city', '0', '0');
INSERT INTO `sd_alias` VALUES ('3', 'sitemap', 'other/sitemap', '0', '0');
INSERT INTO `sd_alias` VALUES ('4', 'search', 'other/search', '0', '0');
INSERT INTO `sd_alias` VALUES ('5', 'user', 'user/index', '0', '0');
INSERT INTO `sd_alias` VALUES ('6', 'login', 'user/login', '0', '0');
INSERT INTO `sd_alias` VALUES ('7', 'reg', 'user/reg', '0', '0');
INSERT INTO `sd_alias` VALUES ('8', 'getpass', 'user/getpass', '0', '0');
INSERT INTO `sd_alias` VALUES ('9', 'editpass', 'user/editpass', '0', '0');
INSERT INTO `sd_alias` VALUES ('10', 'out', 'user/out', '0', '0');
INSERT INTO `sd_alias` VALUES ('11', 'limit', 'cart/limit', '0', '0');
INSERT INTO `sd_alias` VALUES ('12', 'group', 'cart/group', '0', '0');
INSERT INTO `sd_alias` VALUES ('13', 'brand', 'cart/brand', '0', '0');
INSERT INTO `sd_alias` VALUES ('14', 'brandshow', 'cart/brandshow', '0', '0');
INSERT INTO `sd_alias` VALUES ('15', 'cart', 'cart/index', '0', '0');
INSERT INTO `sd_alias` VALUES ('16', 'point', 'cart/point', '0', '0');
INSERT INTO `sd_alias` VALUES ('17', 'order', 'cart/order', '0', '0');
INSERT INTO `sd_alias` VALUES ('18', 'coupon', 'cart/coupon', '0', '0');
INSERT INTO `sd_alias` VALUES ('19', 'ordershow', 'cart/ordershow', '0', '0');
INSERT INTO `sd_alias` VALUES ('20', 'ordergroup', 'cart/ordergroup', '0', '0');
INSERT INTO `sd_alias` VALUES ('21', 'myaddress', 'order/myaddress', '0', '0');
INSERT INTO `sd_alias` VALUES ('22', 'mycoupon', 'order/mycoupon', '0', '0');
INSERT INTO `sd_alias` VALUES ('23', 'myorder', 'order/myorder', '0', '0');
INSERT INTO `sd_alias` VALUES ('24', 'myordershow', 'order/myordershow', '0', '0');
INSERT INTO `sd_alias` VALUES ('25', 'myfavorite', 'order/myfavorite', '0', '0');
INSERT INTO `sd_alias` VALUES ('26', 'mypoint', 'order/mypoint', '0', '0');
INSERT INTO `sd_alias` VALUES ('27', 'mymoney', 'order/mymoney', '0', '0');
INSERT INTO `sd_alias` VALUES ('28', 'myshare', 'share/myshare', '0', '0');
INSERT INTO `sd_alias` VALUES ('29', 'mysharemoney', 'share/mysharemoney', '0', '0');
INSERT INTO `sd_alias` VALUES ('30', 'mysharecash', 'share/mysharecash', '0', '0');
INSERT INTO `sd_alias` VALUES ('31', 'mysharecashlist', 'share/mysharecashlist', '0', '0');
INSERT INTO `sd_alias` VALUES ('32', 'pay', 'user/pay', '0', '0');
INSERT INTO `sd_alias` VALUES ('33', 'article', 'index/articlelist', '0', '0');
INSERT INTO `sd_alias` VALUES ('34', 'goods', 'index/goodslist', '0', '0');
INSERT INTO `sd_alias` VALUES ('35', 'label', 'other/label', '0', '0');
INSERT INTO `sd_alias` VALUES ('36', 'tags', 'other/tags', '0', '0');
INSERT INTO `sd_article_class` VALUES ('1', '0', '商城动态', '', '10', '0', '0', '', '', '', '', '');
INSERT INTO `sd_article_class` VALUES ('2', '0', '购物指南', '', '20', '0', '1', '', '', '', '', '');
INSERT INTO `sd_article_class` VALUES ('3', '0', '支付方式', '', '20', '0', '1', '', '', '', '', '');
INSERT INTO `sd_article_class` VALUES ('4', '0', '售后服务', '', '20', '0', '1', '', '', '', '', '');
INSERT INTO `sd_article_class` VALUES ('6', '0', '常见问题', '', '20', '0', '1', '', '', '', '', '');
INSERT INTO `sd_badword` VALUES ('1', '');
INSERT INTO `sd_config` VALUES ('1', '1', 'web_line', '店铺设置', '', '1', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('2', '1', 'web_open', '店铺开关', '1', '3', '6', '开启|1,关闭|0', '关闭后前台无法访问，后台不影响使用', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('3', '1', 'web_close', '关闭原因', '临时维护', '5', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('4', '1', 'web_name', '店铺名称', '{$city}商城名称', '7', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('5', '1', 'web_logo', '店铺Logo', '/upfile/logo.gif', '9', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('6', '1', 'web_icp', 'ICP备案号', '', '11', '1', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('7', '1', 'web_service', 'QQ客服', '', '13', '5', '', '示范：客服名称|10001，一行一条', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('8', '1', 'count_code', '流量统计', '', '15', '5', '', '百度统计请至模板里添加', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('9', '1', 'home_line', '域名相关', '', '17', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('10', '1', 'web_http', 'Http类型', 'http://', '19', '6', 'Http://|http://,Https://|https://', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('11', '1', 'web_domain', '主域名', '', '21', '1', '', '例：www.baidu.com，使用栏目绑定域名时，必须配置主域名', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('12', '1', 'web_domains', '副域名', '', '23', '5', '', '一行一条，格式：www.baidu.com 或 baidu.com，副域名会自动跳转到主域名', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('13', '1', 'seo_line', '优化设置', '', '25', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('14', '1', 'seo_title', '优化标题', '', '27', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('15', '1', 'seo_key', '关键字', '', '29', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('16', '1', 'seo_desc', '描述', '', '31', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('17', '1', 'web_search_line', '搜索设置', '', '33', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('18', '1', 'web_search_key', '搜索关键字', '', '35', '5', '', '多个关键字使用英文逗号隔开', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('19', '2', 'url_mode_line', 'Url设置', '', '1', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('20', '2', 'url_mode', 'Url模式', '1', '3', '6', '调试模式（例: /?m=home）|1,Path_Info模式（例: /index.php/news.html）|2,伪静态模式（例: /news.html）|3', '在域名下使用，建议伪静态模式', '2', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('21', '2', 'url_mid', 'Url间隔符', '/', '5', '8', '/|/,-|-,_|_', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('22', '2', 'url_cate_ext', '栏目及别名后缀', '/', '7', '8', '无后缀|,/|/,.html|.html', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('23', '2', 'url_ext', '内容页Url后缀', '.html', '9', '8', '无后缀|,/|/,.html|.html', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('24', '2', 'url_line', '路由映射', '', '11', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('25', '2', 'url_goods_list', '商品列表', 'goods', '13', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('26', '2', 'url_goods_show', '商品内容', 'show', '15', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('27', '2', 'url_article_list', '文章列表', 'article', '17', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('28', '2', 'url_article_show', '文章内容', 'content', '19', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('29', '3', 'upload_line', '上传设置', '', '1', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('30', '3', 'upload_image_max', '图像最大上传', '5', '3', '1', '', '单位：M', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('31', '3', 'upload_video_max', '视频最大上传', '10', '5', '1', '', '单位：M', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('32', '3', 'upload_file_max', '附件最大上传', '20', '7', '1', '', '单位：M', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('33', '3', 'upload_file_folder', '储存方式', '2', '9', '6', '按 年 目录，如：2019/19731414801.jpg|1,按 年/月 目录，如：2019/10/19731414801.jpg|2,按 年/月/日 目录，如：2019/10/21/19731414801.jpg|3', '', '2', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('34', '3', 'thumb_line', '压缩设置', '', '11', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('35', '3', 'thumb_open', '等比压缩', '0', '13', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('36', '3', 'thumb_min', '压缩宽度', '600', '15', '1', '', '图片会被压缩成这个宽度', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('37', '3', 'thumb_piclist', '组图压缩', '0', '17', '6', '开始|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('38', '3', 'thumb_auto', '自动缩略图', '0', '19', '6', '开启|1,关闭|0', '前台图片自动生成缩略图', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('39', '3', 'water_line', '水印设置', '', '21', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('40', '3', 'water_open', '水印开关', '0', '23', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('41', '3', 'water_width', '最小宽度', '400', '25', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('42', '3', 'water_height', '最小高度', '100', '27', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('43', '3', 'water_opacity', '透明度', '60', '29', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('44', '3', 'water_position', '水印位置', '0', '31', '8', '随机显示|0,顶部居左|1,顶部居中|2,顶部居右|3,中部居左|4,中部居中|5,中部居右|6,底部居左|7,底部居中|8,底部居右|9', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('45', '3', 'water_logo', '水印Logo', '/upfile/mobile.png', '33', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('46', '3', 'water_piclist', '组图水印', '0', '35', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('47', '4', 'mobile_open', '开关', '1', '1', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('48', '4', 'mobile_domain', '绑定域名', '', '5', '1', '', '例：m.baidu.com', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('49', '4', 'mobile_auto', '自动识别', '1', '7', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('50', '4', 'mobile_logo', '手机站Logo', '/upfile/mobile.png', '9', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('51', '5', 'weixin_appid', 'AppID(应用ID)', '', '1', '1', '', '如使用微信支付，此项必填', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('52', '5', 'weixin_appsecret', 'AppSecret(应用密钥)', '', '3', '1', '', '如使用微信支付，此项必填', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('53', '5', 'weixin_token', 'Token(令牌)', '', '5', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('54', '5', 'weixin_id', '公众号的微信号', '', '7', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('55', '5', 'weixin_qrcode', '公众号二维码', '', '9', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('56', '5', 'weixin_share_pic', '微信分享默认图', '', '11', '4', '', '在微信内访问并分享时，当内容没有缩略图时调用', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('57', '5', 'weixin_cache', '配置数据缓存', '1', '13', '6', '开启|1,关闭|0', '多个网站同时使用同一个公众号时，请关闭。', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('58', '5', 'wx_tp_line', '模板消息', '', '15', '9', '', '', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('59', '5', 'wx_tp_ispay', '订单付款后', '0', '17', '6', '开启|1,关闭|0', '订单付款后通知管理员发货的模板消息', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('60', '5', 'wx_tp_ispay_id', '对应模板ID', '', '19', '1', '', '订单付款后对应的模板ID', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('61', '5', 'wx_tp_ispost', '订单发货后', '0', '21', '6', '开启|1,关闭|0', '发货后通知买家收货', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('62', '5', 'wx_tp_ispost_id', '对应模板ID', '', '23', '1', '', '', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('63', '5', 'wx_tp_isrefund', '申请退款', '0', '25', '6', '开启|1,关闭|0', '买家申请退款（需要处理时），提醒管理员', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('64', '5', 'wx_tp_isrefund_id', '对应模板ID', '', '27', '1', '', '', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('65', '5', 'wx_tp_refund', '退款成功', '0', '29', '6', '开启|1,关闭|0', '退款成功后通知买家', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('66', '5', 'wx_tp_refund_id', '对应模板ID', '', '31', '1', '', '', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('67', '5', 'wx_tp_group_fail', '拼团失败', '0', '33', '6', '开启|1,关闭|0', '拼团未成功时通知买家', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('68', '5', 'wx_tp_group_fail_id', '对应模板ID', '', '35', '1', '', '', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('69', '6', 'link_logo', 'LOGO链接', '1', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('70', '6', 'link_class', '分类开关', '0', '0', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('71', '6', 'link_class_data', '链接分类', '首页链接|1\r\n合作伙伴|2', '0', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('72', '7', 'ct_company', '公司名称', '成都某某网络科技有限公司', '1', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('73', '7', 'ct_tel', '服务热线', '400-1234-5678', '3', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('74', '7', 'ct_fax', '传真号码', '', '5', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('75', '7', 'ct_mobile', '手机号码', '', '7', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('76', '7', 'ct_email', '电子邮箱', '', '9', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('77', '7', 'ct_address', '公司地址', '成都市高新区科技园1001', '11', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('78', '7', 'ct_work_time', '工作时间', '09:00 - 17:00', '13', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('79', '8', 'admin_code', '后台登录验证码', '1', '3', '6', '图形验证码|1,谷歌验证码|3,关闭|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('80', '8', 'admin_logintimes', '登录尝试次数', '10', '7', '1', '', '超过次数后禁止登录', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('81', '8', 'admin_log', '自动清理日志时间', '10', '9', '1', '', '单位：天，超过多少天的自动清理', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('82', '8', 'admin_log_login', '后台登录日志', '1', '11', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('83', '8', 'admin_log_admin', '后台管理日志', '1', '13', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('84', '9', 'pay_open', '接口状态', '1', '1', '6', '开启|1,关闭|0', '关闭后以下设置无效，在线支付接口均需要企业（含个体工商户）身份才能申请到', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('85', '9', 'pay_maxnum', '尝试次数', '10', '5', '1', '', '每个订单可以重复执行支付操作的最大次数（按接口算）', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('86', '9', 'pay_alipay_line', '支付宝接口（含电脑网站支付和手机网站支付）', '', '7', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('87', '9', 'pay_alipay_open', '是否开启', '0', '9', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('88', '9', 'pay_alipay_appid', 'APPID', '', '11', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('89', '9', 'pay_alipay_public', '支付宝公钥', '', '13', '5', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('90', '9', 'pay_alipay_private', '商户私钥', '', '15', '5', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('91', '9', 'pay_wxpay_line', '微信支付接口（含扫码支付、公众号支付和微信H5支付）', '', '17', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('92', '9', 'pay_wxpay_open', '是否开启', '0', '19', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('231', '14', 'express_kdniao_line', '快递鸟接口', '', '2', '9', '', '申请地址：https://www.kdniao.com/reg', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('94', '9', 'pay_wxpay_uid', '商户号', '', '23', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('95', '9', 'pay_wxpay_key', '密钥', '', '25', '1', '', '长度为32位，必须包含：大小写字母和数字', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('96', '9', 'pay_wxpay_cert', '证书pem格式', '', '27', '4', '', '【apiclient_cert.pem】文件，微信支付退款时使用，如未开启退款功能，则无需上传', '1', '3', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('97', '9', 'pay_wxpay_pem', '证书密钥pem格式', '', '29', '4', '', '【apiclient_key.pem】文件，微信支付退款时使用，如未开启退款功能，则无需上传', '1', '3', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('98', '10', 'file_way', '存储方式', 'local', '1', '8', '本地存储|local,阿里云Oss|oss,七牛云|qiniu', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('99', '10', 'file_oss_line', '阿里云OSS', '', '3', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('100', '10', 'file_oss_appid', 'Access Key ID', '', '5', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('101', '10', 'file_oss_appkey', 'Access Key Secret', '', '7', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('102', '10', 'file_oss_bucket', 'Bucket', '', '9', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('103', '10', 'file_oss_domain', '用户域名', '', '11', '1', '', '例：http://file.baidu.com', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('104', '10', 'file_oss_url', 'OSS 域名', '', '13', '1', '', '例：http://test.oss-cn-hangzhou.aliyuncs.com', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('105', '10', 'file_qiniu_line', '七牛云存储', '', '15', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('106', '10', 'file_qiniu_appid', 'AccessKey', '', '17', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('107', '10', 'file_qiniu_appkey', 'Secret Key', '', '19', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('108', '10', 'file_qiniu_bucket', 'Bucket', '', '21', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('109', '10', 'file_qiniu_domain', '用户域名', '', '23', '1', '', '可以使用绑定的域名，也可以使用测试域名，例：http://file.baidu.com', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('110', '10', 'file_qiniu_url', '上传地址', '', '25', '1', '', '例：http://upload.qiniu.com', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('111', '11', 'user_open', '开放注册', '1', '1', '6', '开放注册|1,关闭注册|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('112', '11', 'user_reg_type', '注册审核', '1', '3', '6', '直接通过|1,短信验证|2,管理员审核|3', '短信验证需要配置短信接口', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('113', '11', 'user_nickname', '注册时昵称必填', '0', '5', '6', '是|1,否|0', '非必填时昵称随机生成', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('114', '11', 'user_reg_group', '加入用户组', '1', '7', '8', '默认用户组|0', '注册后默认加入哪个会员组', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('115', '11', 'user_reg_auth', '注册验证码', '1', '9', '6', '开启|1,关闭|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('116', '11', 'user_login_auth', '登录验证码', '1', '11', '6', '开启|1,关闭|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('117', '11', 'user_getpass_auth', '忘记密码验证码', '1', '13', '6', '开启|1,关闭|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('118', '11', 'user_reg_money', '注册送金额', '0', '15', '1', '', '为0时，不赠送', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('119', '11', 'user_reg_point', '注册送积分', '0', '17', '1', '', '为0时，不赠送', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('120', '11', 'user_default_face', '默认头像', '/upfile/noface.jpg', '19', '4', '', '', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('121', '12', 'api_qq_line', 'QQ登录接口', '', '1', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('122', '12', 'api_qq_open', '接口开关', '0', '3', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('123', '12', 'api_qq_appid', 'AppId', '', '5', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('124', '12', 'api_qq_key', 'AppKey', '', '7', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('125', '12', 'api_weibo_line', '微博登录接口', '', '9', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('126', '12', 'api_weibo_open', '接口开关', '0', '11', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('127', '12', 'api_weibo_appid', 'App Key', '', '13', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('128', '12', 'api_weibo_key', 'App Secret', '', '15', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('129', '12', 'api_weixin_line', '微信扫码登录接口', '', '17', '9', '', 'Pc网站使用，需要申请开发者认证，创建网站应用', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('130', '12', 'api_weixin_open', '接口开关', '0', '19', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('131', '12', 'api_weixin_appid', 'AppID', '', '21', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('132', '12', 'api_weixin_key', 'AppSecret', '', '23', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('133', '12', 'api_wx_line', '微信公众号登录接口（在微信公众号内访问使用，需要公众号通过认证）', '', '25', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('134', '12', 'api_wx_open', '接口开关', '0', '27', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('137', '12', 'api_wx_loginway', '登录方式', '1', '33', '6', '静默登录|0,提示登录|1', '【静默登录】无法获取昵称和头像。首次使用需要绑定或创建用户。', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('138', '13', 'sms_open', '接口开关', '', '1', '8', '关闭接口|,腾讯云短信|qq,阿里云短信|aliyun,预留接口|other', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('139', '13', 'sms_admin', '管理员手机号', '', '3', '1', '', '用于接收发货提醒等操作', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('140', '13', 'sms_qq_line', '腾讯云短信配置', '', '5', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('141', '13', 'sms_qq_appid', '应用ID', '', '7', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('142', '13', 'sms_qq_appkey', 'App Key', '', '9', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('143', '13', 'sms_aliyun_line', '阿里云短信配置', '', '11', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('144', '13', 'sms_aliyun_appid', 'accessKeyId', '', '13', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('145', '13', 'sms_aliyun_appkey', 'accessKeySecret', '', '15', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('146', '13', 'sms_aliyun_signname', '短信签名', '', '17', '1', '', '阿里云短信签名使用，必填', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('147', '13', 'sms_shop_line', '短信发送开关', '', '19', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('148', '13', 'sms_shop_ispay', '订单付款后', '0', '21', '6', '发短信|1,不发短信|0', '订单付款后通知管理员发货的短信', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('149', '13', 'sms_shop_ispost', '订单发货后', '0', '23', '6', '发短信|1,不发短信|0', '发货后通知买家收货', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('150', '13', 'sms_shop_isrefund', '申请退款', '0', '25', '6', '发短信|1,不发短信|0', '买家申请退款（需要处理时），提醒管理员', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('151', '13', 'sms_shop_refund', '退款成功', '0', '27', '6', '发短信|1,不发短信|0', '退款成功后通知买家', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('152', '13', 'sms_shop_group_fail', '拼团失败', '0', '29', '6', '发短信|1,不发短信|0', '拼团未成功时通知买家', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('153', '14', 'express_open', '接口开关', '0', '1', '8', '关闭接口|0,快递鸟快递|1,极速数据|2', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('154', '14', 'express_kdniao_appid', '用户ID', '', '3', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('155', '14', 'express_kdniao_appkey', 'Api Key', '', '5', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('156', '14', 'express_kdniao_code', '快递公司代码', '顺丰速运|SF\r\n百世快递|HTKY\r\n中通快递|ZTO\r\n申通快递|STO\r\n圆通速递|YTO\r\n韵达速递|YD\r\n邮政快递包裹|YZPY\r\nEMS|EMS\r\n天天快递|HHTT\r\n京东物流|JD\r\n全峰快递|QFKD\r\n国通快递|GTO\r\n优速快递|UC\r\n德邦|DBL\r\n快捷快递|FAST\r\n宅急送|ZJS', '7', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('157', '15', 'shop_pay_line', '收款设置', '', '1', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('158', '15', 'shop_pay_user', '余额支付', '1', '3', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('159', '15', 'shop_paycash', '货到付款', '0', '5', '6', '开启|1,关闭|0', '客户确认收货后自动收款（快递代收）', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('160', '15', 'shop_invoice_line', '发票设置', '', '9', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('161', '15', 'shop_invoice', '发票开关', '1', '11', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('162', '15', 'shop_einvoice_open', '电子发票', '0', '13', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('163', '15', 'shop_refund_line', '退款设置', '', '15', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('164', '15', 'shop_refund', '退款开关', '1', '17', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('165', '15', 'shop_refund_limit', '退款限制', '1', '19', '1', '', '单位：小时，付款后（未发货时）多少小时内可以直接退款，超过此设置后，退款后需要审核', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('166', '15', 'shop_refund_why', '退款原因', '发货时间久\r\n商品选错了\r\n收货信息填写错误\r\n优惠券忘记使用\r\n不想买了', '21', '5', '', '一行一条', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('167', '15', 'shop_return_why', '退货原因', '未收到商品\r\n质量问题\r\n商品描述不符\r\n假货\r\n商家发错货\r\n破损、少件\r\n其他原因', '23', '5', '', '一行一条', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('168', '15', 'shop_return_address', '退货地址', '姓名：IT平民\r\n手机：18888888888\r\n地址：四川省成都市高新区人民路1888号8-808', '25', '5', '', '买家退货的地址，请填写详细地址、收件人及手机号码', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('169', '15', 'shop_score_line', '评价设置', '', '27', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('170', '15', 'shop_score_day', '评价天数', '5', '29', '1', '', '确认收货后，最晚评价天数，过期后自动评价', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('171', '15', 'shop_score_text', '默认评价', '未及时做出评价，系统默认好评！', '31', '1', '', '系统自动评价的内容', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('172', '15', 'shop_score_islock', '评价审核', '0', '33', '6', '需要审核|0,直接通过|1', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('173', '15', 'shop_score_pagenum', '评价分页', '10', '35', '1', '', '评价每页显示的数量', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('174', '15', 'shop_group_line', '拼团设置', '', '37', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('175', '15', 'shop_group_day', '拼团关闭', '1', '39', '1', '', '拼团自动关闭的天数，过期后关闭未成功的拼团', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('176', '15', 'shop_group_auto', '自动成团', '1', '41', '6', '开启|1,关闭|0', '开启后拼团订单结束前自动成团', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('177', '15', 'shop_time_line', '时间设置', '', '43', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('178', '15', 'shop_pay_day', '付款天数', '1', '45', '1', '', '下单后最晚付款天数，过期后自动关闭订单', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('179', '15', 'shop_receipt_day', '收货天数', '7', '47', '1', '', '发货后最晚确认收货的天数，过期后自动收货', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('180', '15', 'shop_goods_stock', '库存预警', '10', '49', '1', '', '当商品库存低于库存预警时，给予提示', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('181', '15', 'shop_task_state', '定时任务开关', '1', '51', '6', '开启|1,关闭|0', '', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('182', '15', 'shop_task_time', '定时任务', '2', '53', '1', '', '定时任务的间隔时间，单位：分钟', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('183', '15', 'shop_share_line', '分销设置', '', '55', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('184', '15', 'shop_share', '分销开关', '3', '57', '8', '关闭|0,一级分销|1,二级分销|2,三级分销|3', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('185', '15', 'shop_share_1', '一级分销比例', '45', '59', '1', '', '获得的百分比，输入1-100之间的数字', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('186', '15', 'shop_share_2', '二级分销比例', '35', '61', '1', '', '获得的百分比，输入1-100之间的数字', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('187', '15', 'shop_share_3', '三级分销比例', '20', '63', '1', '', '获得的百分比，输入1-100之间的数字', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('188', '15', 'shop_cash_line', '提现设置', '', '65', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('189', '15', 'shop_cash_min', '提现最低金额', '100', '67', '1', '', '单位：元', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('190', '15', 'shop_cash_way', '提现方式', '1,2,3,4', '69', '7', '支付宝|1,微信|2,银行卡|3,余额|4', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('191', '15', 'shop_cash_charge', '提现手续费', '5', '71', '1', '', '手续费比例，1%，则输入1，不收手续设置为0即可', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('192', '15', 'shop_cash_max', '次数限制', '5', '73', '1', '', '每天最多提现次数，为0时，不限制次数', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('194', '16', 'city_domain', '分站根域名', '', '5', '1', '', '例：baidu.com，可以为空，如果设置，请配置站点主域名', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('195', '16', 'city_class', '栏目加城市名', '0', '7', '6', '开启|1,关闭|0', '', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('196', '16', 'city_content', '内容加城市名', '0', '9', '6', '开启|1,关闭|0', '', '1', '0', '1', '0', '0');
INSERT INTO `sd_config` VALUES ('197', '5', 'wx_shop_line', '微商城设置', '', '37', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('198', '5', 'wx_shop_open', '微商城模式', '0', '39', '6', '开启|1,关闭|0', '开启后，在微信里访问不需要注册或登录，需要先配置微信设置的参数', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('199', '5', 'wx_shop_must', '强制微信模式', '0', '41', '6', '开启|1,关闭|0', '开启后，只能在微信内访问，需要先开启微商城模式', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('200', '16', 'city_class_mid', '栏目连接符', '', '11', '1', '', '分站栏目在城市名称后的连接字符', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('201', '16', 'city_content_mid', '内容连接符', '', '13', '1', '', '分站内容在城市名称后的连接字符', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('202', '16', 'city_open', '分站开关', '0', '1', '6', '开启|1,关闭|0', '关闭后前台不显示', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('203', '16', 'city_http', '分站Http类型', 'http://', '3', '6', 'Http://|http://,Https://|https://', '当分站绑定域名时使用', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('204', '4', 'mobile_http', 'Http类型', 'http://', '3', '6', 'Http://|http://,Https://|https://', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('206', '15', 'shop_free_line', '包邮设置', '', '75', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('207', '15', 'shop_free_open', '包邮开关', '0', '77', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('208', '15', 'shop_free_num', '按件包邮', '0', '79', '1', '', '按订单商品总件数计算，为0时不包邮', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('209', '15', 'shop_free_money', '按金额包邮', '0', '81', '1', '', '按订单商品总金额计算，为0时不包邮', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('210', '15', 'shop_address_line', '收货设置', '', '83', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('211', '15', 'shop_address_open', '收货开关', '1', '85', '6', '开启|1,关闭|0', '关闭后用户提交订单无需填写收货信息', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('212', '15', 'shop_address_list', '必填项目', '1,2,5', '87', '7', '姓名|1,手机|2,QQ|3,邮箱|4,地址|5,身份证|6', '未勾选的不显示', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('213', '9', 'pay_alipay_refund', '退款手续费', '0.006', '16', '1', '', '退款手续费比例，输入0-1之间的数字，为0表示没有手续费，0.6%则填写：0.006', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('214', '15', 'shop_full_line', '满减设置', '', '89', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('215', '15', 'shop_full_amount', '订单满金额', '0', '91', '1', '', '订单金额满多少元时，为0时关闭此功能', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('216', '15', 'shop_full_money', '订单减金额', '0', '93', '1', '', '订单满足上述金额后，减去多少金额', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('217', '15', 'shop_other_line', '其他设置', '', '95', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('218', '15', 'shop_other_action', '商品模式', '4', '97', '6', '全部模式|4,普通模式|1,网盘商品|2,卡券商品|3', '全部模式：添加商品时自由选择商品类型', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('219', '15', 'shop_other_address', '虚拟商品地址', '1', '99', '7', '手机|1,QQ|2,邮箱|3,身份证|4', '虚拟商品收货地址，未勾选的不显示', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('220', '15', 'shop_other_nologin', '游客下单', '0', '101', '6', '开启|1,关闭|0', '开启后：支持未登录用户直接下单', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('221', '17', 'open_line', '公共设置', '', '1', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('222', '17', 'open_appkey', '接口密钥', '', '3', '1', '', '小程序接口通信密钥，不可为空', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('223', '17', 'open_debug', '调试开关', '0', '5', '6', '开启|1,关闭|0', '本地调试时，请开启', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('224', '17', 'open_bizcode', '小程序授权码', '', '7', '5', '', '除【高级版】外，小程序使用均需要经过授权', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('225', '17', 'open_weixin_line', '微信小程序', '', '9', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('226', '17', 'open_weixin_appid', 'AppID', '', '11', '1', '', '小程序ID', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('227', '17', 'open_weixin_appsecret', 'AppSecret', '', '13', '1', '', '小程序密钥', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('228', '7', 'ct_weixin', '微信二维码', '', '10', '4', '', '上传微信二维码，方便客户加好友', '1', '1', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('229', '15', 'shop_paycash_percent', '货到付款手续费', '0', '7', '1', '0', '货到付款手续费比例，为0时关闭，假如为5%，则输入0.05', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('230', '15', 'shop_freight_mode', '运费模式', '0', '103', '8', '|', '非单件模式时，为所有商品一起计算', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('232', '14', 'express_jisu_line', '极速数据接口', '', '9', '9', '', '申请地址：https://www.jisuapi.com/api/express/', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('233', '14', 'express_jisu_appkey', 'appkey', '', '11', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('234', '14', 'express_jisu_code', '快递公司代码', '顺丰速运|SFEXPRESS\r\n百世快递|BSKY\r\n中通快递|ZTO\r\n申通快递|STO\r\n圆通速递|YTO\r\n韵达速递|YUNDA\r\n邮政快递包裹|CHINAPOST\r\nEMS|EMS\r\n天天快递|TTKDEX\r\n京东物流|JD\r\n全峰快递|QFKD\r\n国通快递|GTO\r\n优速快递|UC56\r\n德邦|DEPPON\r\n快捷快递|FASTEXPRESS\r\n宅急送|ZJS', '13', '5', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('235', '15', 'shop_other_class', '商品副栏目', '0', '105', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('236', '17', 'open_weixin_type', '会员注册', '0', '15', '6', '普通注册|0,手机号注册|1', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('237', '17', 'open_baidu_line', '百度小程序', '', '17', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('238', '17', 'open_baidu_appid', 'App ID', '', '19', '1', '', '智能小程序ID', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('239', '17', 'open_baidu_appkey', 'App Key', '', '21', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('240', '17', 'open_baidu_appsecret', 'App Secret', '', '23', '1', '', '智能小程序密匙', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('241', '17', 'open_baidu_type', '会员注册', '0', '25', '6', '普通注册|0,手机号注册|1', '如选择手机号注册，请确保已开通此权限', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('242', '17', 'open_douyin_line', '抖音小程序', '', '27', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('243', '17', 'open_douyin_appid', 'AppID', '', '29', '1', '', '小程序AppID', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('244', '17', 'open_douyin_appsecret', 'AppSecret', '', '31', '1', '', '小程序AppSecret', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('245', '17', 'open_douyin_type', '会员注册', '0', '33', '6', '普通注册|0,手机号注册|1', '如选择手机号注册，请确保已开通此权限', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('246', '9', 'pay_baidu_line', '百度收银台（小程序使用）', '', '31', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('247', '9', 'pay_baidu_open', '是否开启', '0', '33', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('248', '9', 'pay_baidu_dealid', 'dealId', '', '35', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('249', '9', 'pay_baidu_appkey', 'APP KEY', '', '37', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('250', '9', 'pay_baidu_public_key', '平台公钥', '', '39', '5', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('251', '9', 'pay_baidu_private_key', '开发者私钥', '', '41', '5', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('252', '9', 'pay_douyin_line', '抖音支付接口（担保接口）', '', '43', '9', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('253', '9', 'pay_douyin_open', '是否开启', '0', '45', '6', '开启|1,关闭|0', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('254', '9', 'pay_douyin_token', 'Token(令牌)', '', '47', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('255', '9', 'pay_douyin_salt', 'SALT', '', '49', '1', '', '', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('256', '8', 'admin_code_google', '谷歌密钥', '', '5', '1', '', '如果使用：谷歌验证码，请点击【生成】按钮生成密钥，然后通过【身份验证器】APP，扫描二维码', '1', '0', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('257', '8', 'admin_logo', '后台Logo', '/public/admin/images/logo.png', '1', '4', '', '建议尺寸：200*40', '1', '1', '1', '1', '1');
INSERT INTO `sd_config` VALUES ('258', '1', 'beian_num', '公安备案号', '', '11', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config` VALUES ('259', '1', 'beian_url', '备案链接', '', '11', '1', '', '', '1', '0', '1', '1', '0');
INSERT INTO `sd_config_group` VALUES ('1', '基本设置', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('2', '运行模式', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('3', '附件设置', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('4', '手机站', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('5', '微信设置', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('6', '友情链接', '0', 'link', '1', '0');
INSERT INTO `sd_config_group` VALUES ('7', '联系方式', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('8', '后台相关', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('9', '支付接口', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('10', '云存储接口', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('11', '会员设置', '0', 'user', '1', '0');
INSERT INTO `sd_config_group` VALUES ('12', '登录接口', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('13', '短信接口', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('14', '快递接口', '0', '0', '1', '2');
INSERT INTO `sd_config_group` VALUES ('15', '商城设置', '0', '0', '1', '1');
INSERT INTO `sd_config_group` VALUES ('16', '分站设置', '0', 'city', '1', '0');
INSERT INTO `sd_config_group` VALUES ('17', '小程序接口', '0', '0', '1', '2');
INSERT INTO `sd_menu` VALUES ('1', '限时优惠', 'ui-icon-limit', '0', '0', '1', '0', '', '0', '1', '/pages/market/limit/index', 'orange');
INSERT INTO `sd_menu` VALUES ('2', '多人拼团', 'ui-icon-tuan', '0', '0', '2', '0', '', '0', '1', '/pages/market/group/index', 'blue');
INSERT INTO `sd_menu` VALUES ('3', '领券中心', 'ui-icon-coupon', '0', '0', '3', '0', '', '0', '1', '/pages/market/coupon/index', 'mauve');
INSERT INTO `sd_menu` VALUES ('4', '品牌专区', 'ui-icon-brand', '0', '0', '4', '0', '', '0', '1', '/pages/market/brand/index', 'pink');
INSERT INTO `sd_temp_sms` VALUES ('1', '会员注册', '{\"qq\":{\"sn\":\"\",\"text\":\"{1}为您的注册验证码。如非本人操作，请忽略本短信。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"${code}为您的注册验证码。如非本人操作，请忽略本短信。\"}}', '1', 'reg');
INSERT INTO `sd_temp_sms` VALUES ('2', '找回密码', '{\"qq\":{\"sn\":\"\",\"text\":\"{1}为您的找回密码验证码。如非本人操作，请忽略本短信。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"${code}为您的找回密码验证码。如非本人操作，请忽略本短信。\"}}', '1', 'getpass');
INSERT INTO `sd_temp_sms` VALUES ('3', '付款成功提醒', '{\"qq\":{\"sn\":\"\",\"text\":\"订单号：{1}已付款，金额：{2}，请及时发货。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"订单号：${orderid}已付款，金额：${money}，请及时发货。\"}}', '1', 'orderpay');
INSERT INTO `sd_temp_sms` VALUES ('4', '已发货提醒', '{\"qq\":{\"sn\":\"\",\"text\":\"订单号：{1}已发货，请注意查收。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"订单号：${orderid}已发货，请注意查收。\"}}', '1', 'orderpost');
INSERT INTO `sd_temp_sms` VALUES ('5', '申请退款', '{\"qq\":{\"sn\":\"\",\"text\":\"有个退款需要处理，订单号：{1}，金额：{2}。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"有个退款需要处理，订单号${orderid}，金额：${money}。\"}}', '1', 'orderisrefund');
INSERT INTO `sd_temp_sms` VALUES ('6', '退款成功', '{\"qq\":{\"sn\":\"\",\"text\":\"您的订单号{1}，金额：{2}，退款已经完成。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"您的订单号${orderid}，金额：${money}，退款已经完成。\"}}', '1', 'orderrefund');
INSERT INTO `sd_temp_sms` VALUES ('7', '拼团失败', '{\"qq\":{\"sn\":\"\",\"text\":\"您的订单号：{1}，有效期内未成团，订单自动关闭并退款。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"您的订单号：${orderid}，有效期内未成团，订单自动关闭并退款。\"}}', '1', 'odergroupfail');
INSERT INTO `sd_temp_sms` VALUES ('8', '卡密短信', '{\"qq\":{\"sn\":\"\",\"text\":\"卡号：{1}，密码：{2}，请妥善保管。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"卡号：${cardid}，密码：${cardpass}，请妥善保管。\"}}', '1', 'ordercard');
INSERT INTO `sd_temp_sms` VALUES ('9', '自提短信', '{\"qq\":{\"sn\":\"\",\"text\":\"您的取货码：{1}，请及时取货。\"},\"aliyun\":{\"sn\":\"\",\"text\":\"您的取货码：${ordercode}，请及时取货。\"}}', '1', 'ordercode');
INSERT INTO `sd_user_group` VALUES ('1', '普通会员', '1.00', '1', '0');
INSERT INTO `sd_user_group` VALUES ('2', 'Vip会员', '0.90', '1', '0');
INSERT INTO `sd_wx_auto_reply` VALUES ('1', 'subscribe', '0', '', '0');
INSERT INTO `sd_wx_auto_reply` VALUES ('2', 'auto', '0', '', '4');