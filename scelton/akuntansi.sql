/*
Navicat MySQL Data Transfer

Source Server         : Laragon
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : akuntansi

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-09-09 14:13:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `akun`
-- ----------------------------
DROP TABLE IF EXISTS `akun`;
CREATE TABLE `akun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `lvl` smallint(5) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `icon_type` tinyint(1) DEFAULT '1',
  `active` tinyint(1) DEFAULT '1',
  `selected` tinyint(1) DEFAULT '0',
  `disabled` tinyint(1) DEFAULT '0',
  `readonly` tinyint(1) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `collapsed` tinyint(1) DEFAULT '0',
  `movable_u` tinyint(1) DEFAULT '1',
  `movable_d` tinyint(1) DEFAULT '1',
  `movable_l` tinyint(1) DEFAULT '1',
  `movable_r` tinyint(1) DEFAULT '1',
  `removable` tinyint(1) DEFAULT '1',
  `removable_all` tinyint(1) DEFAULT '0',
  `child_allowed` tinyint(1) DEFAULT '0',
  `akun` varchar(100) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `akuntipe_id` int(11) DEFAULT NULL,
  `akunkelas_id` int(11) DEFAULT NULL,
  `kurs_id` int(11) DEFAULT NULL,
  `akunlaporan_id` tinyint(4) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_product_NK1` (`root`),
  KEY `tbl_product_NK2` (`lft`),
  KEY `tbl_product_NK3` (`rgt`),
  KEY `tbl_product_NK4` (`lvl`),
  KEY `tbl_product_NK5` (`active`),
  KEY `akuntipe_id` (`akuntipe_id`),
  KEY `akunkelas_id` (`akunkelas_id`),
  KEY `kurs_id` (`kurs_id`),
  KEY `balanceincome_id` (`akunlaporan_id`),
  CONSTRAINT `akun_ibfk_1` FOREIGN KEY (`akuntipe_id`) REFERENCES `akuntipe` (`id`),
  CONSTRAINT `akun_ibfk_2` FOREIGN KEY (`akunkelas_id`) REFERENCES `akunkelas` (`id`),
  CONSTRAINT `akun_ibfk_3` FOREIGN KEY (`kurs_id`) REFERENCES `kurs` (`id`),
  CONSTRAINT `akun_ibfk_4` FOREIGN KEY (`akunlaporan_id`) REFERENCES `akunlaporan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of akun
-- ----------------------------
INSERT INTO `akun` VALUES ('1', '1', '1', '50', '0', 'MAAS', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('2', '1', '2', '37', '1', 'AKTIVA', null, '1', '1', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '0', '1', '', '', null, null, null, '1', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('3', '1', '38', '39', '1', 'KEWAJIBAN DAN EKUITAS', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, '1', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('4', '1', '40', '41', '1', 'PENGHASILAN USAHA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', '', null, null, null, '2', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('5', '1', '42', '43', '1', 'BEBAN USAHA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', '', null, null, null, '2', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('6', '1', '44', '45', '1', '(PENGHASILAN)/BEBAN LAIN-LAIN', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', '', null, null, null, '2', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('7', '1', '3', '32', '2', 'AKTIVA LANCAR', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('8', '1', '33', '34', '2', 'AKTIVA TETAP', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('9', '1', '35', '36', '2', 'AKTIVA LAIN-LAIN', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('10', '1', '4', '23', '3', 'AKTIVA LANCAR', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('11', '1', '24', '25', '3', 'PIUTANG USAHA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('12', '1', '26', '27', '3', 'BIAYA DIBAYAR DIMUKA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('13', '1', '28', '29', '3', 'UANG MUKA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('14', '1', '30', '31', '3', 'PAJAK DIBAYAR DIMUKA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, '', null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('15', '1', '5', '12', '4', 'KAS', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('16', '1', '13', '18', '4', 'BANK', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('17', '1', '19', '20', '4', 'SURAT-SURAT BERHARGA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('18', '1', '21', '22', '4', 'DEPOSITO DIBATASI PENGGUNAANNYA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('19', '1', '6', '7', '5', 'Kas Besar', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '110101', null, '1', '1', '1', '1', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('20', '1', '8', '9', '5', 'Kas Kecil 1', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '110102', null, '1', '1', '1', '1', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('21', '1', '10', '11', '5', 'Kas Kecil 2', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '110103', null, '1', '1', '1', '1', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('22', '1', '14', '17', '5', 'Bank Mandiri', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '110250', null, '1', '1', '1', '1', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('23', '1', '15', '16', '6', 'Bank BCA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '110251', null, '1', '1', '1', '1', '1', null, null, null, null);
INSERT INTO `akun` VALUES ('24', '1', '46', '49', '1', 'PASSIVA', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `akun` VALUES ('25', '1', '47', '48', '2', 'PIUTANG JANGKA PENDEK', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', '', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `akunkelas`
-- ----------------------------
DROP TABLE IF EXISTS `akunkelas`;
CREATE TABLE `akunkelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelasakun` varchar(100) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of akunkelas
-- ----------------------------
INSERT INTO `akunkelas` VALUES ('1', 'CASH/BANK', null, null, null, null, null);
INSERT INTO `akunkelas` VALUES ('2', 'FINANCING', null, null, null, null, null);
INSERT INTO `akunkelas` VALUES ('3', 'INVESTING', null, null, null, null, null);
INSERT INTO `akunkelas` VALUES ('4', 'OPERATING', null, null, null, null, null);

-- ----------------------------
-- Table structure for `akunlaporan`
-- ----------------------------
DROP TABLE IF EXISTS `akunlaporan`;
CREATE TABLE `akunlaporan` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `laporanakun` varchar(25) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of akunlaporan
-- ----------------------------
INSERT INTO `akunlaporan` VALUES ('1', 'BALANCE SHEET', null, null, null, null);
INSERT INTO `akunlaporan` VALUES ('2', 'INCOME STATEMENT', null, null, null, null);

-- ----------------------------
-- Table structure for `akuntipe`
-- ----------------------------
DROP TABLE IF EXISTS `akuntipe`;
CREATE TABLE `akuntipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipeakun` varchar(100) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of akuntipe
-- ----------------------------
INSERT INTO `akuntipe` VALUES ('1', 'ASSETS', null, null, null, null, null);
INSERT INTO `akuntipe` VALUES ('2', 'CAPITAL', null, null, null, null, null);
INSERT INTO `akuntipe` VALUES ('3', 'EXPENSE', null, null, null, null, null);
INSERT INTO `akuntipe` VALUES ('4', 'LIABILITIES', null, null, null, null, null);
INSERT INTO `akuntipe` VALUES ('5', 'REVENUE', null, null, null, null, null);

-- ----------------------------
-- Table structure for `anggaran`
-- ----------------------------
DROP TABLE IF EXISTS `anggaran`;
CREATE TABLE `anggaran` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `organisasi_id` int(11) DEFAULT NULL,
  `kalender_id` bigint(20) DEFAULT NULL,
  `rencana_anggaran` decimal(15,0) DEFAULT NULL,
  `serapan_anggaran` decimal(15,0) DEFAULT NULL,
  `persentase` decimal(5,2) DEFAULT NULL,
  `keterangan` varchar(300) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `wilayah_id` (`kalender_id`),
  KEY `bidang_id` (`organisasi_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `anggaran_ibfk_1` FOREIGN KEY (`kalender_id`) REFERENCES `kalender` (`id`),
  CONSTRAINT `anggaran_ibfk_2` FOREIGN KEY (`organisasi_id`) REFERENCES `organisasi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of anggaran
-- ----------------------------
INSERT INTO `anggaran` VALUES ('1', '15', '4', '820000', '719000', '87.68', 'Kegiatan 2019', '1561108834', '1', '1', '1562560568', '1');
INSERT INTO `anggaran` VALUES ('2', '16', '4', '850000', '770000', '90.59', '', '1562556968', '1', '1', '1562557121', '1');

-- ----------------------------
-- Table structure for `anggarandetil`
-- ----------------------------
DROP TABLE IF EXISTS `anggarandetil`;
CREATE TABLE `anggarandetil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `anggaran_id` bigint(20) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `periode_id` tinyint(4) DEFAULT NULL,
  `rencana_anggaran` decimal(10,0) DEFAULT NULL,
  `serapan_anggaran` decimal(10,0) DEFAULT NULL,
  `persentase` decimal(5,2) DEFAULT NULL,
  `terkini` tinyint(1) DEFAULT NULL,
  `keterangan` varchar(300) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `bidang_id` (`anggaran_id`),
  KEY `status_id` (`status_id`),
  KEY `periode_id` (`periode_id`),
  CONSTRAINT `anggarandetil_ibfk_1` FOREIGN KEY (`anggaran_id`) REFERENCES `anggaran` (`id`),
  CONSTRAINT `anggarandetil_ibfk_2` FOREIGN KEY (`periode_id`) REFERENCES `periode` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of anggarandetil
-- ----------------------------
INSERT INTO `anggarandetil` VALUES ('1', '1', '1', '3', '120000', '100000', '83.33', '0', '', '1561108883', '1', '1562556402', '1');
INSERT INTO `anggarandetil` VALUES ('2', '1', '1', '1', '100000', '90000', '90.00', '0', '', '1562556362', '1', '1562556376', '1');
INSERT INTO `anggarandetil` VALUES ('3', '1', '1', '4', '140000', '120000', '85.71', '0', '', '1562556457', '1', '1562556457', '1');
INSERT INTO `anggarandetil` VALUES ('4', '1', '1', '6', '150000', '120000', '80.00', '0', '', '1562556516', '1', '1562556516', '1');
INSERT INTO `anggarandetil` VALUES ('5', '2', '1', '1', '100000', '90000', '90.00', '0', '', '1562557001', '1', '1562557001', '1');
INSERT INTO `anggarandetil` VALUES ('6', '2', '1', '3', '200000', '190000', '95.00', '0', '', '1562557021', '1', '1562557021', '1');
INSERT INTO `anggarandetil` VALUES ('7', '2', '1', '2', '120000', '90000', '75.00', '0', '', '1562557055', '1', '1562557055', '1');
INSERT INTO `anggarandetil` VALUES ('8', '2', '1', '4', '120000', '100000', '83.33', '0', '', '1562557078', '1', '1562557078', '1');
INSERT INTO `anggarandetil` VALUES ('9', '2', '1', '5', '200000', '190000', '95.00', '0', '', '1562557096', '1', '1562557096', '1');
INSERT INTO `anggarandetil` VALUES ('10', '2', '1', '6', '110000', '110000', '100.00', '0', '', '1562557121', '1', '1562557121', '1');
INSERT INTO `anggarandetil` VALUES ('11', '1', '1', '2', '100000', '90000', '90.00', '0', '', '1562560519', '1', '1562560519', '1');
INSERT INTO `anggarandetil` VALUES ('12', '1', '1', '5', '110000', '100000', '90.91', '0', '', '1562560540', '1', '1562560540', '1');
INSERT INTO `anggarandetil` VALUES ('13', '1', '1', '7', '100000', '99000', '99.00', '0', '', '1562560568', '1', '1562560568', '1');

-- ----------------------------
-- Table structure for `aplikasi`
-- ----------------------------
DROP TABLE IF EXISTS `aplikasi`;
CREATE TABLE `aplikasi` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of aplikasi
-- ----------------------------
INSERT INTO `aplikasi` VALUES ('1', 'ALL');
INSERT INTO `aplikasi` VALUES ('2', 'HRIS');
INSERT INTO `aplikasi` VALUES ('3', 'SIAS');

-- ----------------------------
-- Table structure for `arsip`
-- ----------------------------
DROP TABLE IF EXISTS `arsip`;
CREATE TABLE `arsip` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul` text,
  `revisi` tinyint(4) DEFAULT NULL,
  `berlaku` tinyint(1) DEFAULT NULL,
  `tgl_efektif` date DEFAULT NULL,
  `dokumen` varchar(100) DEFAULT NULL,
  `konten_id` bigint(20) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `konten_id` (`konten_id`),
  CONSTRAINT `arsip_ibfk_1` FOREIGN KEY (`konten_id`) REFERENCES `konten` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of arsip
-- ----------------------------
INSERT INTO `arsip` VALUES ('1', 'Percobaan Dokumen', '0', '1', '2020-08-05', 'ySPd4chXxGdgfH4cNWeHJ3EuRr-mfshn.pdf', '25', '1596881547', '1', '1596934993', '1');
INSERT INTO `arsip` VALUES ('2', 'File ke 2', '0', '1', '2020-08-11', null, null, '1596927549', '1', '1596927549', '1');

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('PUBLIKASI', '4', '1596247368');
INSERT INTO `auth_assignment` VALUES ('superadmin', '1', '1596094925');

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1596094720', '1596094720');
INSERT INTO `auth_item` VALUES ('/datecontrol/*', '2', null, null, null, '1596094738', '1596094738');
INSERT INTO `auth_item` VALUES ('/datecontrol/parse/*', '2', null, null, null, '1596094738', '1596094738');
INSERT INTO `auth_item` VALUES ('/datecontrol/parse/convert', '2', null, null, null, '1596094738', '1596094738');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1596094751', '1596094751');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/debug/user/*', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/debug/user/reset-identity', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/debug/user/set-identity', '2', null, null, null, '1596094752', '1596094752');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1596094757', '1596094757');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1596094757', '1596094757');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1596094757', '1596094757');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1596094757', '1596094757');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1596094757', '1596094757');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1596094757', '1596094757');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1596094757', '1596094757');
INSERT INTO `auth_item` VALUES ('/gridview/*', '2', null, null, null, '1596094738', '1596094738');
INSERT INTO `auth_item` VALUES ('/gridview/export/*', '2', null, null, null, '1596094738', '1596094738');
INSERT INTO `auth_item` VALUES ('/gridview/export/download', '2', null, null, null, '1596094738', '1596094738');
INSERT INTO `auth_item` VALUES ('/konten/*', '2', null, null, null, '1596247785', '1596247785');
INSERT INTO `auth_item` VALUES ('/konten/create', '2', null, null, null, '1596247773', '1596247773');
INSERT INTO `auth_item` VALUES ('/konten/delete', '2', null, null, null, '1596247773', '1596247773');
INSERT INTO `auth_item` VALUES ('/konten/index', '2', null, null, null, '1596247772', '1596247772');
INSERT INTO `auth_item` VALUES ('/konten/update', '2', null, null, null, '1596247773', '1596247773');
INSERT INTO `auth_item` VALUES ('/konten/view', '2', null, null, null, '1596247772', '1596247772');
INSERT INTO `auth_item` VALUES ('/kontenakses/*', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontenakses/create', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontenakses/delete', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontenakses/index', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontenakses/update', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontenakses/view', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontentipe/*', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontentipe/create', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontentipe/delete', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontentipe/index', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontentipe/update', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kontentipe/view', '2', null, null, null, '1596247791', '1596247791');
INSERT INTO `auth_item` VALUES ('/kunci/*', '2', null, null, null, '1596094766', '1596094766');
INSERT INTO `auth_item` VALUES ('/kunci/index', '2', null, null, null, '1596094766', '1596094766');
INSERT INTO `auth_item` VALUES ('/log/*', '2', null, null, null, '1596094766', '1596094766');
INSERT INTO `auth_item` VALUES ('/log/create', '2', null, null, null, '1596094766', '1596094766');
INSERT INTO `auth_item` VALUES ('/log/delete', '2', null, null, null, '1596094766', '1596094766');
INSERT INTO `auth_item` VALUES ('/log/index', '2', null, null, null, '1596094766', '1596094766');
INSERT INTO `auth_item` VALUES ('/log/update', '2', null, null, null, '1596094766', '1596094766');
INSERT INTO `auth_item` VALUES ('/log/view', '2', null, null, null, '1596094766', '1596094766');
INSERT INTO `auth_item` VALUES ('/menuheader/*', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/menuheader/create', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/menuheader/delete', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/menuheader/index', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/menuheader/update', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/menuheader/view', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/menukiri/*', '2', null, null, null, '1596094775', '1596094775');
INSERT INTO `auth_item` VALUES ('/menukiri/create', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/menukiri/delete', '2', null, null, null, '1596094775', '1596094775');
INSERT INTO `auth_item` VALUES ('/menukiri/index', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/menukiri/update', '2', null, null, null, '1596094775', '1596094775');
INSERT INTO `auth_item` VALUES ('/menukiri/view', '2', null, null, null, '1596094774', '1596094774');
INSERT INTO `auth_item` VALUES ('/rbac/*', '2', null, null, null, '1596094694', '1596094694');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/*', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/assign', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/index', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/remove', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/assignment/view', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/permission/*', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/permission/assign', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/permission/create', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/permission/delete', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/permission/index', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/permission/remove', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/permission/update', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/permission/view', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/role/*', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/role/assign', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/role/create', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/role/delete', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/role/index', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/role/remove', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/role/update', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/role/view', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/route/*', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/route/assign', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/route/index', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/route/refresh', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/route/remove', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/rule/*', '2', null, null, null, '1596094694', '1596094694');
INSERT INTO `auth_item` VALUES ('/rbac/rule/create', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/rule/delete', '2', null, null, null, '1596094694', '1596094694');
INSERT INTO `auth_item` VALUES ('/rbac/rule/index', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/rule/update', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/rbac/rule/view', '2', null, null, null, '1596094693', '1596094693');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1596094791', '1596094791');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1596094791', '1596094791');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1596094791', '1596094791');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1596094791', '1596094791');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1596094791', '1596094791');
INSERT INTO `auth_item` VALUES ('/status/*', '2', null, null, null, '1596094800', '1596094800');
INSERT INTO `auth_item` VALUES ('/status/create', '2', null, null, null, '1596094800', '1596094800');
INSERT INTO `auth_item` VALUES ('/status/delete', '2', null, null, null, '1596094800', '1596094800');
INSERT INTO `auth_item` VALUES ('/status/index', '2', null, null, null, '1596094800', '1596094800');
INSERT INTO `auth_item` VALUES ('/status/update', '2', null, null, null, '1596094800', '1596094800');
INSERT INTO `auth_item` VALUES ('/status/view', '2', null, null, null, '1596094800', '1596094800');
INSERT INTO `auth_item` VALUES ('/user/*', '2', null, null, null, '1596094720', '1596094720');
INSERT INTO `auth_item` VALUES ('/user/create', '2', null, null, null, '1596094720', '1596094720');
INSERT INTO `auth_item` VALUES ('/user/delete', '2', null, null, null, '1596094720', '1596094720');
INSERT INTO `auth_item` VALUES ('/user/index', '2', null, null, null, '1596094720', '1596094720');
INSERT INTO `auth_item` VALUES ('/user/update', '2', null, null, null, '1596094720', '1596094720');
INSERT INTO `auth_item` VALUES ('/user/view', '2', null, null, null, '1596094720', '1596094720');
INSERT INTO `auth_item` VALUES ('Add', '2', null, null, null, '1596095715', '1596095715');
INSERT INTO `auth_item` VALUES ('All', '2', 'All can access for view directory in backend', null, null, '1596094860', '1596094860');
INSERT INTO `auth_item` VALUES ('Delete', '2', null, null, null, '1596095649', '1596095649');
INSERT INTO `auth_item` VALUES ('PUBLIKASI', '2', null, null, null, '1596247325', '1596247807');
INSERT INTO `auth_item` VALUES ('SETUP', '2', null, null, null, '1596247313', '1596247313');
INSERT INTO `auth_item` VALUES ('superadmin', '1', null, null, null, '1596094900', '1596094900');
INSERT INTO `auth_item` VALUES ('Update', '2', null, null, null, '1596095638', '1596095638');
INSERT INTO `auth_item` VALUES ('View', '2', null, null, null, '1596095655', '1596095655');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('All', '/*');
INSERT INTO `auth_item_child` VALUES ('PUBLIKASI', '/konten/*');
INSERT INTO `auth_item_child` VALUES ('superadmin', 'All');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `bank`
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(100) DEFAULT NULL,
  `bankakun_id` int(11) DEFAULT NULL,
  `bankkurs_id` int(11) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `bankakun_id` (`bankakun_id`),
  KEY `bankkurs_id` (`bankkurs_id`),
  CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`bankakun_id`) REFERENCES `akun` (`id`),
  CONSTRAINT `bank_ibfk_2` FOREIGN KEY (`bankkurs_id`) REFERENCES `kurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('1', 'BNI', '19', '1', 'Jl. Sudirnan', '4', '1541240030', '1', '1599297490', '1');
INSERT INTO `bank` VALUES ('2', 'BCA', '20', '2', 'Jl. Juanda', '4', '1541288209', '1', '1541288209', '1');
INSERT INTO `bank` VALUES ('3', 'MANDIRI', '21', '2', 'Jl. Ahmad Yahni', '5', '1541288235', '1', '1541296938', '1');

-- ----------------------------
-- Table structure for `budget`
-- ----------------------------
DROP TABLE IF EXISTS `budget`;
CREATE TABLE `budget` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kalender_id` bigint(20) DEFAULT NULL,
  `plan_1` double DEFAULT NULL,
  `aktual_1` double DEFAULT NULL,
  `plan_2` double DEFAULT NULL,
  `aktual_2` double DEFAULT NULL,
  `plan_3` double DEFAULT NULL,
  `aktual_3` double DEFAULT NULL,
  `plan_4` double DEFAULT NULL,
  `aktual_4` double DEFAULT NULL,
  `plan_5` double DEFAULT NULL,
  `aktual_5` double DEFAULT NULL,
  `plan_6` double DEFAULT NULL,
  `aktual_6` double DEFAULT NULL,
  `plan_7` double DEFAULT NULL,
  `aktual_7` double DEFAULT NULL,
  `plan_8` double DEFAULT NULL,
  `aktual_8` double DEFAULT NULL,
  `plan_9` double DEFAULT NULL,
  `aktual_9` double DEFAULT NULL,
  `plan_10` double DEFAULT NULL,
  `aktual_10` double DEFAULT NULL,
  `plan_11` double DEFAULT NULL,
  `aktual_11` double DEFAULT NULL,
  `plan_12` double DEFAULT NULL,
  `aktual_12` double DEFAULT NULL,
  `plantotal` double DEFAULT NULL,
  `aktualtotal` double DEFAULT NULL,
  `budgettipe_id` tinyint(4) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transaksitipe_id` (`budgettipe_id`),
  KEY `kalender_id` (`kalender_id`),
  CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`budgettipe_id`) REFERENCES `budgettipe` (`id`),
  CONSTRAINT `budget_ibfk_2` FOREIGN KEY (`kalender_id`) REFERENCES `kalender` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of budget
-- ----------------------------
INSERT INTO `budget` VALUES ('1', '4', '1000', '900', '1000', '1000', '1000', '1100', '1000', '1000', '1000', '1100', '1000', '1000', '1200', '0', '1200', '0', '1200', '0', '1200', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1000', '900', '1200', '1000');
INSERT INTO `budget` VALUES ('3', '4', '20000', '19000', '20000', '20000', '20000', '19900', '20000', '18000', '20000', '15000', '20000', '18000', '25000', null, '25000', '0', '25000', null, '25000', null, '25000', null, '25000', null, null, null, '2', '1', null, null, null, null);
INSERT INTO `budget` VALUES ('4', '4', '20000', '19000', '21000', '20000', '22000', '20000', '22000', '20000', '25000', '21000', '22000', '21000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `budgettipe`
-- ----------------------------
DROP TABLE IF EXISTS `budgettipe`;
CREATE TABLE `budgettipe` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tipebudget` varchar(25) DEFAULT NULL,
  `planaktual` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of budgettipe
-- ----------------------------
INSERT INTO `budgettipe` VALUES ('1', 'Sales', '1', null, null, null, null);
INSERT INTO `budgettipe` VALUES ('2', 'Production', '1', null, null, null, null);
INSERT INTO `budgettipe` VALUES ('3', 'Finish Goods', null, null, null, null, null);
INSERT INTO `budgettipe` VALUES ('4', 'Purchasing', null, null, null, null, null);
INSERT INTO `budgettipe` VALUES ('5', 'Finance', null, null, null, null, null);

-- ----------------------------
-- Table structure for `costcenter`
-- ----------------------------
DROP TABLE IF EXISTS `costcenter`;
CREATE TABLE `costcenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `costcenter` varchar(25) DEFAULT NULL,
  `namacostcenter` varchar(100) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of costcenter
-- ----------------------------
INSERT INTO `costcenter` VALUES ('1', '1000', 'Quality Control', null, '1561381482', '1', '1561432037', '1');
INSERT INTO `costcenter` VALUES ('2', '2000', 'Produksi', null, '1561432019', '1', '1561432019', '1');

-- ----------------------------
-- Table structure for `costcenterdetil`
-- ----------------------------
DROP TABLE IF EXISTS `costcenterdetil`;
CREATE TABLE `costcenterdetil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `costcenter_id` int(11) DEFAULT NULL,
  `akunawal_id` int(11) DEFAULT NULL,
  `akunnama_awal` varchar(1) DEFAULT NULL COMMENT 'hanya untuk tampilan deskripsi di index',
  `akunakhir_id` int(11) DEFAULT NULL,
  `akunnama_akhir` varchar(1) DEFAULT NULL COMMENT 'hanya untuk tampilan deskripsi di index',
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `costcenter_id` (`costcenter_id`),
  KEY `akunawal_id` (`akunawal_id`),
  KEY `akunakhir_id` (`akunakhir_id`),
  CONSTRAINT `costcenterdetil_ibfk_1` FOREIGN KEY (`costcenter_id`) REFERENCES `costcenter` (`id`),
  CONSTRAINT `costcenterdetil_ibfk_2` FOREIGN KEY (`akunawal_id`) REFERENCES `akun` (`id`),
  CONSTRAINT `costcenterdetil_ibfk_3` FOREIGN KEY (`akunakhir_id`) REFERENCES `akun` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of costcenterdetil
-- ----------------------------
INSERT INTO `costcenterdetil` VALUES ('1', '2', '19', null, '20', null, '1', '1561762489', '1', '1561853269', '1');
INSERT INTO `costcenterdetil` VALUES ('2', '2', '21', null, '21', null, '1', '1561808817', '1', '1561808817', '1');
INSERT INTO `costcenterdetil` VALUES ('3', '2', '22', null, '22', null, '1', '1561808833', '1', '1561808833', '1');
INSERT INTO `costcenterdetil` VALUES ('4', '2', '23', null, '23', null, '1', '1561808847', '1', '1561808847', '1');
INSERT INTO `costcenterdetil` VALUES ('5', '1', '19', null, '20', null, null, '1598342895', '1', '1598342895', '1');

-- ----------------------------
-- Table structure for `dokumen`
-- ----------------------------
DROP TABLE IF EXISTS `dokumen`;
CREATE TABLE `dokumen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul_dokumen` text,
  `namafile` varchar(255) DEFAULT NULL,
  `konten_id` bigint(20) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `konten_id` (`konten_id`),
  CONSTRAINT `dokumen_ibfk_1` FOREIGN KEY (`konten_id`) REFERENCES `konten` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of dokumen
-- ----------------------------

-- ----------------------------
-- Table structure for `entitas`
-- ----------------------------
DROP TABLE IF EXISTS `entitas`;
CREATE TABLE `entitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entitas` varchar(50) DEFAULT NULL,
  `utama` tinyint(1) DEFAULT NULL,
  `namaresmi` varchar(200) DEFAULT NULL,
  `nopajak` varchar(100) DEFAULT NULL,
  `alamat` varchar(1000) DEFAULT NULL,
  `kodepos` varchar(15) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `negara` varchar(100) DEFAULT NULL,
  `notelepon` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `kurs_id` int(11) DEFAULT NULL,
  `onevalue` tinyint(1) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `kurs_id` (`kurs_id`),
  CONSTRAINT `entitas_ibfk_1` FOREIGN KEY (`kurs_id`) REFERENCES `kurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of entitas
-- ----------------------------
INSERT INTO `entitas` VALUES ('1', 'MAAS', '1', 'PT MAAS STANDARD CONSULTAN', '', 'Jln. Teluk Ratai No.82A Komplek AL Rawa Bambu', '10270 ', 'Jakarta Selatan 12520', 'Indonesia', '+62-021-7807316', 'support@maas.co.id', 'www.maas.co.id', '1', '0', '1', null, null, null, null);

-- ----------------------------
-- Table structure for `gl`
-- ----------------------------
DROP TABLE IF EXISTS `gl`;
CREATE TABLE `gl` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jurnal` varchar(25) DEFAULT NULL,
  `nosistem_id` int(11) DEFAULT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `posted` tinyint(1) DEFAULT NULL,
  `tgl_posted` date DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `sistem_id` bigint(20) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`tgl_posted`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gl
-- ----------------------------

-- ----------------------------
-- Table structure for `gldetil`
-- ----------------------------
DROP TABLE IF EXISTS `gldetil`;
CREATE TABLE `gldetil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `gl_id` bigint(20) DEFAULT NULL,
  `baris` int(11) DEFAULT NULL,
  `costcenter_id` int(11) DEFAULT NULL,
  `akun_id` int(11) DEFAULT NULL,
  `kurs_id` int(11) DEFAULT NULL,
  `kurs` decimal(10,0) DEFAULT NULL,
  `debet` double DEFAULT NULL,
  `kredit` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `gl_id` (`gl_id`),
  KEY `costcenter_id` (`costcenter_id`),
  KEY `akun_id` (`akun_id`),
  KEY `kurs_id` (`kurs_id`),
  CONSTRAINT `gldetil_ibfk_1` FOREIGN KEY (`gl_id`) REFERENCES `gl` (`id`),
  CONSTRAINT `gldetil_ibfk_2` FOREIGN KEY (`costcenter_id`) REFERENCES `costcenter` (`id`),
  CONSTRAINT `gldetil_ibfk_3` FOREIGN KEY (`akun_id`) REFERENCES `akun` (`id`),
  CONSTRAINT `gldetil_ibfk_4` FOREIGN KEY (`kurs_id`) REFERENCES `kurs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gldetil
-- ----------------------------

-- ----------------------------
-- Table structure for `kalender`
-- ----------------------------
DROP TABLE IF EXISTS `kalender`;
CREATE TABLE `kalender` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fiskal` year(4) DEFAULT NULL,
  `tutup` tinyint(1) DEFAULT NULL,
  `terkini` tinyint(1) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kalender
-- ----------------------------
INSERT INTO `kalender` VALUES ('3', '2018', '1', '0', '2018-01-01', '2018-12-31', '1545818902', '1', '1598883569', '1');
INSERT INTO `kalender` VALUES ('4', '2019', '0', '1', '2019-01-01', '2019-12-31', '1546662587', '1', '1562052729', '1');

-- ----------------------------
-- Table structure for `kalenderdetil`
-- ----------------------------
DROP TABLE IF EXISTS `kalenderdetil`;
CREATE TABLE `kalenderdetil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kalender_id` bigint(20) DEFAULT NULL,
  `periode_id` tinyint(4) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `terkini` tinyint(1) DEFAULT NULL,
  `anggaran` tinyint(1) DEFAULT NULL,
  `tugas` tinyint(1) DEFAULT NULL,
  `pu` tinyint(1) DEFAULT NULL,
  `sa` tinyint(1) DEFAULT NULL,
  `wp` tinyint(1) DEFAULT NULL,
  `gl` tinyint(1) DEFAULT NULL,
  `ar` tinyint(1) DEFAULT NULL,
  `ap` tinyint(1) DEFAULT NULL,
  `fa` tinyint(1) DEFAULT NULL,
  `pi` tinyint(4) DEFAULT NULL,
  `hr` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kalender_id` (`kalender_id`),
  KEY `statusupah_id` (`anggaran`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `periode_id` (`periode_id`),
  CONSTRAINT `kalenderdetil_ibfk_1` FOREIGN KEY (`kalender_id`) REFERENCES `kalender` (`id`),
  CONSTRAINT `kalenderdetil_ibfk_2` FOREIGN KEY (`periode_id`) REFERENCES `periode` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kalenderdetil
-- ----------------------------
INSERT INTO `kalenderdetil` VALUES ('1', '3', '1', '2018-01-01', '2018-01-31', '0', '1', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '1545870381', '1', '1562297328', '1');
INSERT INTO `kalenderdetil` VALUES ('2', '3', '2', '2018-02-01', '2018-02-28', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1545871179', '1', '1562297346', '1');
INSERT INTO `kalenderdetil` VALUES ('3', '4', '1', '2019-01-01', '2019-01-31', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1546662623', '1', '1562556130', '1');
INSERT INTO `kalenderdetil` VALUES ('4', '4', '2', '2019-02-01', '2019-02-28', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1546662658', '1', '1562556192', '1');
INSERT INTO `kalenderdetil` VALUES ('5', '4', '3', '2019-03-01', '2019-03-31', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1546662689', '1', '1562556209', '1');
INSERT INTO `kalenderdetil` VALUES ('6', '3', '3', '2018-03-01', '2018-03-31', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1546674978', '1', '1546674978', '1');
INSERT INTO `kalenderdetil` VALUES ('7', '4', '4', '2019-04-01', '2019-04-30', '1', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', '0', '1562554122', '1', '1562556225', '1');
INSERT INTO `kalenderdetil` VALUES ('8', '4', '5', '2019-05-01', '2019-05-31', '1', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', '0', '1562554239', '1', '1562556566', '1');
INSERT INTO `kalenderdetil` VALUES ('9', '4', '6', '2019-06-01', '2019-06-30', '1', '0', '0', '0', '0', '0', '1', '0', '0', null, '0', '0', '1562554263', '1', '1562555255', '1');
INSERT INTO `kalenderdetil` VALUES ('10', '4', '7', '2019-07-01', '2019-07-31', '1', '0', '0', '0', '0', '0', '0', '0', '0', null, '0', '0', '1562554303', '1', '1562554303', '1');

-- ----------------------------
-- Table structure for `konten`
-- ----------------------------
DROP TABLE IF EXISTS `konten`;
CREATE TABLE `konten` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `judul` text,
  `konten` text,
  `tipekonten_id` int(11) DEFAULT NULL,
  `tanggal_publikasi` date DEFAULT NULL,
  `publikasi_utama` tinyint(1) DEFAULT NULL,
  `publikasi_yesno` tinyint(1) DEFAULT NULL,
  `pengunjung` int(11) DEFAULT NULL,
  `suka` int(11) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kategori_id` (`tipekonten_id`),
  CONSTRAINT `konten_ibfk_1` FOREIGN KEY (`tipekonten_id`) REFERENCES `kontentipe` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of konten
-- ----------------------------
INSERT INTO `konten` VALUES ('2', 'Percobaan', '<p>Langkah ke 2</p>\r\n', '2', '2020-08-01', '0', '1', null, null, 'IMuD9Hi8uH9vmigLRUijKMaJrhh8D9M5.jpg', '6dyNX2EkAExrOAAPtgnDpb0VQ4mcEdMy.mp4', '1596230550', '1', '1596788545', '1');
INSERT INTO `konten` VALUES ('3', 'Trending dari masa ke masa pada fashion', '<div><strong>Jakarta</strong>, The width attribute specifies the width of an image, in pixels.</div>\r\n\r\n<div>Tip:&nbsp;Always specify both the&nbsp;<a href=\"https://www.w3schools.com/tags/att_img_height.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">height</a>&nbsp;and width attributes for images. If height and width are set, the space required for the image is reserved when the page is loaded. However, without these attributes, the browser does not know the size of the image, and cannot reserve the appropriate space to it. The effect will be that the page layout will change during loading (while the images load).</div>\r\n\r\n<div>Tip:&nbsp;Downsizing a large image with the height and width attributes forces a user to download the large image (even if it looks small on the page). To avoid this, rescale the image with a program before using it on a page.</div>\r\n', '1', '2020-08-07', '0', '1', null, null, '9jVhVSYpL0hJW_P_6ZEWieTNH8xOaZUc.jpg', null, '1596763035', '1', '1596803912', '1');
INSERT INTO `konten` VALUES ('4', 'Hello My Name is Sarah', '<p><span style=\"color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:12px\"><strong>Bandung, </strong>W3Schools is optimized for learning, testing, and training. Examples might be simplified to improve reading and basic understanding. Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content. While using this site, you agree to have read and accepted our&nbsp;</span><a href=\"https://www.w3schools.com/about/about_copyright.asp\" style=\"box-sizing: inherit; color: inherit; text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: center;\">terms of use</a><span style=\"color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:12px\">,&nbsp;</span><a href=\"https://www.w3schools.com/about/about_privacy.asp\" style=\"box-sizing: inherit; color: inherit; text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: center;\">cookie and privacy policy</a><span style=\"color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:12px\">.&nbsp;</span><a href=\"https://www.w3schools.com/about/about_copyright.asp\" style=\"box-sizing: inherit; color: rgb(76, 175, 80); outline-width: 0px; font-family: Verdana, sans-serif; font-size: 12px; text-align: center;\">Copyright 1999-2020</a><span style=\"color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:12px\">&nbsp;by Refsnes Data.</span></p>\r\n\r\n<p>Earlier this week, Travis Barker said the band would be releasing the new song ahead of a much-anticipated EP release.</p>\r\n\r\n<p>&ldquo;There&rsquo;s a song called &lsquo;Quarantine&rsquo; that&rsquo;s gonna come out really, really soon,&rdquo; he told&nbsp;<em>MTV</em>.&nbsp;&ldquo;It&rsquo;ll be a Blink favourite. It&rsquo;ll be like all our fan favourites. It&rsquo;s incredible.&rdquo;</p>\r\n', '1', '2020-08-07', '0', '1', null, null, 'JQuwjPIp_5CFsPA_ds3ZtuksE7CzQECg.jpg', null, '1596765761', '1', '1596803852', '1');
INSERT INTO `konten` VALUES ('6', 'My litle brother', '<p><span style=\"color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:12px\"><strong>Bandung,&nbsp;</strong>W3Schools is optimized for learning, testing, and training. Examples might be simplified to improve reading and basic understanding. Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content. While using this site, you agree to have read and accepted our&nbsp;</span><a href=\"https://www.w3schools.com/about/about_copyright.asp\" style=\"color: inherit; box-sizing: inherit; text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: center;\">terms of use</a><span style=\"color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:12px\">,&nbsp;</span><a href=\"https://www.w3schools.com/about/about_privacy.asp\" style=\"color: inherit; box-sizing: inherit; text-decoration-line: none; font-family: Verdana, sans-serif; font-size: 12px; text-align: center;\">cookie and privacy policy</a><span style=\"color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:12px\">.&nbsp;</span><a href=\"https://www.w3schools.com/about/about_copyright.asp\" style=\"color: rgb(76, 175, 80); box-sizing: inherit; outline-width: 0px; font-family: Verdana, sans-serif; font-size: 12px; text-align: center;\">Copyright 1999-2020</a><span style=\"color:rgb(0, 0, 0); font-family:verdana,sans-serif; font-size:12px\">&nbsp;by Refsnes Data.</span></p>\r\n\r\n<p>Earlier this week, Travis Barker said the band would be releasing the new song ahead of a much-anticipated EP release.</p>\r\n\r\n<p>&ldquo;There&rsquo;s a song called &lsquo;Quarantine&rsquo; that&rsquo;s gonna come out really, really soon,&rdquo; he told&nbsp;<em>MTV</em>.&nbsp;&ldquo;It&rsquo;ll be a Blink favourite. It&rsquo;ll be like all our fan favourites. It&rsquo;s incredible.&rdquo;</p>\r\n', '1', '2020-08-07', '0', '1', null, null, 'acU6lX8xnBsLLgQTCZKXF1Y7U9o2_-C1.jpg', null, '1596771216', '1', '1596803770', '1');
INSERT INTO `konten` VALUES ('7', 'foto 1', '<p>sdfsd ffsdf</p>\r\n', '2', '2020-08-07', '0', '1', null, null, 'JRNnhNNrMpRuj-EAVWsgjCb6XqrwN76_.jpg', null, '1596783595', '1', '1596788689', '1');
INSERT INTO `konten` VALUES ('8', 'foto 2', '', '2', '2020-08-07', '0', '1', null, null, '15ZMoz8YVIAIXMRRd2OEnNTRYHIcBSeb.jpg', null, '1596783975', '1', '1596788719', '1');
INSERT INTO `konten` VALUES ('9', 'foto 3', '', '2', '2020-08-07', '0', '1', null, null, 'Mwyitmcd9dz90-BE0GK2dWu1UK7UfeyN.jpg', null, '1596784969', '1', '1596788749', '1');
INSERT INTO `konten` VALUES ('10', 'foto 4', '', '2', '2020-08-07', '0', '1', null, null, '12GRklf0tqY7uFh_WesX456XsboPhRCu.jpg', null, '1596785004', '1', '1596788779', '1');
INSERT INTO `konten` VALUES ('11', 'foto 5', '', '2', '2020-08-07', '0', '1', null, null, 'yOKP-ZNO4L9TjyqEUtSrUgh83LrdOmF9.jpg', null, '1596785072', '1', '1596788809', '1');
INSERT INTO `konten` VALUES ('13', 'foto 6', '', '3', '2020-08-07', '0', '1', null, null, 'tn98OpKioQEAubVogrnbZIIpQyLREG-v.png', 'uOcSK8jknXamSn8PhXDPZQC4ovpgKAoZ.mp4', '1596785441', '1', '1596872412', '1');
INSERT INTO `konten` VALUES ('14', 'Video 1', '<p>asdas</p>\r\n', '3', '2020-08-07', '0', '1', null, null, 'If0kmPf2Ws0yfF54GM8gVBwh6WOy8nj7.png', 'BZdqJkkOTz8A-fY1BnjDc-EtV1gubVWI.mp4', '1596785771', '1', '1596872435', '1');
INSERT INTO `konten` VALUES ('15', 'UTAMA SEKALI', '<p>asd</p>\r\n', '1', '2020-08-07', '1', '1', null, null, 'yrdsEnyOgtwju4VdbbJ-f2ZlT4APTq_c.jpg', null, '1596788424', '1', '1596790445', '1');
INSERT INTO `konten` VALUES ('16', 'INFOGRAFIS 1', '', '10', '2020-08-07', '0', '1', null, null, 'P4CPpMa3ybyZzBL5m7FaFo70Ik10Ng-w.jpeg', null, '1596790894', '1', '1596790894', '1');
INSERT INTO `konten` VALUES ('17', 'INFOGRAFIS-2', '', '10', '2020-08-07', '0', '1', null, null, 'ooT1TbshqEFDIHYgHX3lYGOLdpsucex5.jpg', null, '1596790931', '1', '1596790931', '1');
INSERT INTO `konten` VALUES ('18', 'Dokter Reisa Ungkap 400 Pedagang Tradisional Terinfeksi Covid-19', '<p>Bisnis.com,&nbsp;JAKARTA - Tim Komunikasi Publik Gugus Tugas Percepatan Penanganan&nbsp;Covid-19&nbsp;Reisa Broto Asmoro menuturkan hingga saat ini terdapat 400&nbsp;pedagang&nbsp;di 93 pasar tradisional di sejumlah provinsi telah terinfeksi Covid-19.</p>\r\n\r\n<p>&ldquo;Namun masih ada belasan ribu pasar lainnya yang tidak melaporkan kasus positif Covid-19. Bahkan di antaranya sudah disiplin menrapkan protokol kesehatan,&rdquo; kata Reisa saat memberi keterangan pers di Graha Badan Nasional Penanggulangan Bencana (BNPB), Jakarta, pada Sabtu (13/6/2020).</p>\r\n\r\n<p>Berdasarkan Survei profil pasar 2019 milik BPS, Reisa mengatakan, terdapat lebih dari 14 ribu pasar tradisional yang ada di Indonesia.</p>\r\n', '11', '2020-08-07', '0', '1', null, null, 'nozri_vo_UPiEe3v-tYaBB1r33XbGwoK.png', null, '1596793257', '1', '1596797256', '1');
INSERT INTO `konten` VALUES ('19', 'TEKA-TEKI Mengapa Achmad Yurianto Diganti Dokter Reisa Broto Asmoro ', '<pre>\r\nTRIBUNNEWSMAKER.COM - Ada yang berbeda dalam siaran update virus corona yang digelar oleh Gugus Tugas Covid-19 pada pukul 15.30 WIB kemarin.\r\n\r\nSenin (8/6/2020) muncul wajah baru di tim komunikasi yang bertugas untuk memberikan update kabar seputar penanganan wabah covid-19 di Indonesia tersebut.\r\n\r\nWajah itu adalah sosok dokter Reisa Broto Asmoro yang kerap muncul di layar televisi.\r\n\r\nArtikel ini telah tayang di Tribunnewsmaker.com dengan judul TEKA-TEKI Mengapa Achmad Yurianto Diganti Dokter Reisa Broto Asmoro Terungkap, Ini Titik Terangnya, https://newsmaker.tribunnews.com/2020/06/09/teka-teki-mengapa-achmad-yurianto-diganti-dokter-reisa-broto-asmoro-terungkap-ini-titik-terangnya.\r\n\r\nEditor: Agung Budi Santoso</pre>\r\n', '11', '2020-08-07', '0', '1', null, null, '3i2dzZK-y7F1dPUN5J0ijGdqyHk5d1m5.png', null, '1596793386', '1', '1596797299', '1');
INSERT INTO `konten` VALUES ('20', 'Uni Eropa Galang Dana 7,4 Miliar Euro untuk Perangi Covid-19', '<p>SELEBRITAS, pemimpin dunia, dan filantropis, Senin (4/5), mengumpulkan dana sebesar 7,4 miliar euro untuk membiayai penelitian vaksin, pengobatan, dan tes covid-19 dalam konferensi video yang digelar Uni Eropa namun tidak diikuti Amerika Serikat (AS). Ketua Komisi Eropa Ursula von der Leyen, yang menjadi pemandu konferensi video itu, mengatakan vaksin tetap menjadi pilihan terbaik untuk mengalahkan covid-19 yang sejauh ini telah menewaskan hampir seperempat juta orang di dunia dengan 140 ribu di antaranya di Eropa.<br />\r\n&nbsp;</p>\r\n', '11', '2020-08-07', '0', '1', null, null, 'n9e4_6eAJFPlRY6ggqoHL_8cbd7UrIgy.png', null, '1596794602', '1', '1596797179', '1');
INSERT INTO `konten` VALUES ('21', 'DIufuk imur mulai bersinar matahari pagi', '<p>WordPress adalah CMS yang terkenal dengan berbagai fasilitas yang memudahkan penggunanya. Shortcode WordPress adalah salah satunya.Berkat fitur ini, Anda tidak perlu menuliskan kode-kode HTML yang rumit untuk melakukan kustomisasi pada halaman situs dan konten blog.</p>\r\n\r\n<p>Jika Anda ingin mempelajari shortcode WordPress, artikel ini adalah tempat yang tepat. Di sini, Anda akan dipandu secara lengkap, mulai dari pengenalan hingga cara membuat shortcode custom. Selamat membaca!</p>\r\n', '12', '2020-08-07', '0', '1', null, null, 'WtPiEhEXD3JnWwdi1_GXIH9_qBwkLtnt.png', null, '1596801553', '1', '1596802102', '1');
INSERT INTO `konten` VALUES ('22', 'Senja di Kaimana', '<p>Shortcode WordPress adalah kode-kode pendek yang digunakan untuk merubah format konten atau menambahkan fitur di halaman situs.</p>\r\n\r\n<p>Pada dasarnya, ia memiliki fungsi yang sama dengan kode HTML dan embed. Hanya saja, bentuknya sangat ringkas.</p>\r\n\r\n<p>Shortcode ditandai dengan tag. Karena itu, ia diawali dengan tanda [ dan diakhiri dengan tanda ]. Selain itu, shortcode dibagi menjadi dua jenis:</p>\r\n', '12', '2020-08-07', '0', '1', null, null, 'pA5QXf0HG9qZwayDQ2PKlsTeOaynY9fU.png', null, '1596801636', '1', '1596802312', '1');
INSERT INTO `konten` VALUES ('23', 'Sejauh mata memandang', '<p>Apa saja shortcode yang bisa digunakan? WordPress memiliki enam shortcode bawaan, yaitu audio, playlist, gallery, video, caption, dan embed.</p>\r\n\r\n<p>Selain itu, masih ada banyak shortcode lainnya yang tersedia jika Anda memasang plugin dan tema tertentu. Bahkan, Anda bisa membuat shortcode custom yang caranya akan kami jelaskan nanti.</p>\r\n\r\n<p>Sekarang Anda belajar untuk menggunakan shortcode WordPress di editor halaman dan post terlebih dahulu.&nbsp;</p>\r\n', '12', '2020-08-07', '0', '1', null, null, '0PYgYrzFpG8oYGrM2gq6xwCDlF-p6HWy.png', null, '1596801711', '1', '1596802355', '1');
INSERT INTO `konten` VALUES ('24', 'Cara Menggunakan Shortcode WordPress di Sidebar', '<p>Selain untuk konten halaman dan blog post, shortcode WordPress juga bisa Anda gunakan di sidebar sebagai widget.</p>\r\n\r\n<p>Namun, perlu diketahui bahwa tidak semua tema WordPress mendukung sidebar. Tema bawaan WordPress, misalnya, hanya mendukung widget di area footer. Apabila Anda memang menginginkan sidebar untuk widget, carilah tema yang mendukungnya</p>\r\n', '1', '2020-08-07', '0', '1', null, null, 'M4ezXFunfxgp9XhtaBDAtZ7iEpVnJYmp.jpg', null, '1596802437', '1', '1596804099', '1');
INSERT INTO `konten` VALUES ('25', 'Pengumuman Upacara', '<p>Diumumkan untuk seluruh ASN agar hadir pada upacara</p>\r\n', '4', '2020-08-09', '0', '1', null, null, null, null, '1596927439', '1', '1596927439', '1');
INSERT INTO `konten` VALUES ('26', 'Foto berikut2', '', '2', '2020-08-09', '0', '1', null, null, 'TQm036I5S6LKVX23mC2d8DlfKtnnoJcW.jpg', null, '1596967646', '1', '1596967646', '1');

-- ----------------------------
-- Table structure for `kontenakses`
-- ----------------------------
DROP TABLE IF EXISTS `kontenakses`;
CREATE TABLE `kontenakses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `tipekonten_id` int(11) DEFAULT NULL,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) NOT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_product_NK1` (`tipekonten_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `kontenakses_ibfk_1` FOREIGN KEY (`tipekonten_id`) REFERENCES `kontentipe` (`id`),
  CONSTRAINT `kontenakses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kontenakses
-- ----------------------------
INSERT INTO `kontenakses` VALUES ('1', '4', '2', '1596248587', '1', '1596313180', '1');
INSERT INTO `kontenakses` VALUES ('2', '1', '1', '1596251701', '1', '1596251701', '1');
INSERT INTO `kontenakses` VALUES ('3', '1', '2', '1596262035', '1', '1596262035', '1');
INSERT INTO `kontenakses` VALUES ('4', '1', '6', '1596262096', '1', '1596262096', '1');
INSERT INTO `kontenakses` VALUES ('5', '1', '3', '1596785702', '1', '1596785702', '1');
INSERT INTO `kontenakses` VALUES ('6', '1', '10', '1596790596', '1', '1596790596', '1');
INSERT INTO `kontenakses` VALUES ('7', '1', '11', '1596790683', '1', '1596790683', '1');
INSERT INTO `kontenakses` VALUES ('8', '1', '12', '1596801485', '1', '1596801485', '1');
INSERT INTO `kontenakses` VALUES ('9', '1', '4', '1596927390', '1', '1596927390', '1');

-- ----------------------------
-- Table structure for `kontentipe`
-- ----------------------------
DROP TABLE IF EXISTS `kontentipe`;
CREATE TABLE `kontentipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipekonten` varchar(50) DEFAULT NULL,
  `judul_tipe` text,
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_product_NK1` (`tipekonten`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kontentipe
-- ----------------------------
INSERT INTO `kontentipe` VALUES ('1', 'BERITA', 'Berita Terbaru', '1596175802', '1', '1596175802', '1');
INSERT INTO `kontentipe` VALUES ('2', 'FOTO', 'Foto', '1596175925', '1', '1596175925', '1');
INSERT INTO `kontentipe` VALUES ('3', 'VIDEO', 'Video', '1596175946', '1', '1596175946', '1');
INSERT INTO `kontentipe` VALUES ('4', 'PENGUMUMAN', 'PENGUMUMAN', '1596176001', '1', '1596176001', '1');
INSERT INTO `kontentipe` VALUES ('5', 'PERS', 'Ruang Pers', '1596176019', '1', '1596176019', '1');
INSERT INTO `kontentipe` VALUES ('6', 'DEPUTI-1', 'Deputi Bidang Permberdayaan Pemuda', '1596176063', '1', '1596176063', '1');
INSERT INTO `kontentipe` VALUES ('7', 'DEPUTI-2', 'Deputi Bidang Pengembangan Pemuda', '1596176094', '1', '1596176094', '1');
INSERT INTO `kontentipe` VALUES ('8', 'DEPUTI-3', 'Deputi Bidang Pembudayaan Olahraga', '1596176123', '1', '1596176123', '1');
INSERT INTO `kontentipe` VALUES ('9', 'DEPUTI-4', 'Deputi Bidang Peningkatan Prestasi Olahraga', '1596176222', '1', '1596176222', '1');
INSERT INTO `kontentipe` VALUES ('10', 'INFOGRAFIS', 'Berita dalam gambar', '1596790549', '1', '1596790564', '1');
INSERT INTO `kontentipe` VALUES ('11', 'COVID19', 'UPDATE COVID-19', '1596790655', '1', '1596790655', '1');
INSERT INTO `kontentipe` VALUES ('12', 'INSPIRASI', '', '1596801074', '1', '1596801074', '1');

-- ----------------------------
-- Table structure for `kurs`
-- ----------------------------
DROP TABLE IF EXISTS `kurs`;
CREATE TABLE `kurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `negara_id` int(11) DEFAULT NULL,
  `kurs` varchar(25) DEFAULT NULL,
  `simbol` varchar(5) DEFAULT NULL,
  `desimalkalkulasi` tinyint(2) DEFAULT NULL,
  `onevalue` tinyint(1) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `negara_id` (`negara_id`),
  CONSTRAINT `kurs_ibfk_1` FOREIGN KEY (`negara_id`) REFERENCES `negara` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kurs
-- ----------------------------
INSERT INTO `kurs` VALUES ('1', '1', 'Rupiah', 'Rp', '0', '0', '1', null, null, null, null);
INSERT INTO `kurs` VALUES ('2', '2', 'USD', '$', '2', '0', '1', null, null, null, null);

-- ----------------------------
-- Table structure for `kursdetil`
-- ----------------------------
DROP TABLE IF EXISTS `kursdetil`;
CREATE TABLE `kursdetil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kurs_id` int(11) DEFAULT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  KEY `negara_id` (`kurs_id`),
  CONSTRAINT `kursdetil_ibfk_1` FOREIGN KEY (`kurs_id`) REFERENCES `kurs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kursdetil
-- ----------------------------
INSERT INTO `kursdetil` VALUES ('1', null, null, null, null, '1', null, null, null, null);
INSERT INTO `kursdetil` VALUES ('2', null, null, null, null, '1', null, null, null, null);
INSERT INTO `kursdetil` VALUES ('5', '2', '2019-01-01', '2019-01-31', '14500', null, null, null, null, null);

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'nama tabel',
  `modul` varchar(50) DEFAULT NULL COMMENT '#id dari tabel tsb',
  `fungsi` varchar(50) DEFAULT NULL,
  `aksi` varchar(25) DEFAULT NULL,
  `informasi` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '2020-07-31 04:33:50', 'Login', 'Login', 'Login', 'Sukses', '1596144830', '1', '1596144830', '1');
INSERT INTO `log` VALUES ('2', '2020-07-31 04:44:00', 'Logout', 'Logout', 'Logout', 'Sukses', '1596145440', '1', '1596145440', '1');
INSERT INTO `log` VALUES ('3', '2020-07-31 04:44:15', 'Login', 'Login', 'Login', 'Sukses', '1596145455', '1', '1596145455', '1');
INSERT INTO `log` VALUES ('4', '2020-08-01 09:02:56', 'Logout', 'Logout', 'Logout', 'Sukses', '1596247376', '1', '1596247376', '1');
INSERT INTO `log` VALUES ('5', '2020-08-01 09:03:07', 'Login', 'Login', 'Login', 'Sukses', '1596247387', '4', '1596247387', '4');
INSERT INTO `log` VALUES ('6', '2020-08-01 09:07:06', 'Logout', 'Logout', 'Logout', 'Sukses', '1596247626', '4', '1596247626', '4');
INSERT INTO `log` VALUES ('7', '2020-08-01 09:07:41', 'Login', 'Login', 'Login', 'Sukses', '1596247661', '1', '1596247661', '1');
INSERT INTO `log` VALUES ('8', '2020-08-01 09:10:35', 'Logout', 'Logout', 'Logout', 'Sukses', '1596247835', '1', '1596247835', '1');
INSERT INTO `log` VALUES ('9', '2020-08-01 09:10:44', 'Login', 'Login', 'Login', 'Sukses', '1596247844', '4', '1596247844', '4');
INSERT INTO `log` VALUES ('10', '2020-08-01 09:11:24', 'Logout', 'Logout', 'Logout', 'Sukses', '1596247884', '4', '1596247884', '4');
INSERT INTO `log` VALUES ('11', '2020-08-01 09:11:43', 'Login', 'Login', 'Login', 'Sukses', '1596247903', '1', '1596247903', '1');
INSERT INTO `log` VALUES ('12', '2020-08-01 12:56:39', 'Logout', 'Logout', 'Logout', 'Sukses', '1596261399', '1', '1596261399', '1');
INSERT INTO `log` VALUES ('13', '2020-08-01 12:56:51', 'Login', 'Login', 'Login', 'Sukses', '1596261411', '4', '1596261411', '4');
INSERT INTO `log` VALUES ('14', '2020-08-01 13:06:39', 'Logout', 'Logout', 'Logout', 'Sukses', '1596262000', '4', '1596262000', '4');
INSERT INTO `log` VALUES ('15', '2020-08-01 13:06:50', 'Login', 'Login', 'Login', 'Sukses', '1596262010', '1', '1596262010', '1');
INSERT INTO `log` VALUES ('16', '2020-08-02 01:15:36', 'Logout', 'Logout', 'Logout', 'Sukses', '1596305736', '1', '1596305736', '1');
INSERT INTO `log` VALUES ('17', '2020-08-02 01:15:48', 'Login', 'Login', 'Login', 'Sukses', '1596305748', '4', '1596305748', '4');
INSERT INTO `log` VALUES ('18', '2020-08-02 01:27:31', 'Logout', 'Logout', 'Logout', 'Sukses', '1596306451', '4', '1596306451', '4');
INSERT INTO `log` VALUES ('19', '2020-08-02 01:27:41', 'Login', 'Login', 'Login', 'Sukses', '1596306461', '1', '1596306461', '1');
INSERT INTO `log` VALUES ('20', '2020-08-02 01:37:24', 'Logout', 'Logout', 'Logout', 'Sukses', '1596307044', '1', '1596307044', '1');
INSERT INTO `log` VALUES ('21', '2020-08-02 01:37:54', 'Login', 'Login', 'Login', 'Sukses', '1596307074', '4', '1596307074', '4');
INSERT INTO `log` VALUES ('22', '2020-08-02 01:39:28', 'Logout', 'Logout', 'Logout', 'Sukses', '1596307168', '4', '1596307168', '4');
INSERT INTO `log` VALUES ('23', '2020-08-02 01:39:47', 'Login', 'Login', 'Login', 'Sukses', '1596307187', '1', '1596307187', '1');
INSERT INTO `log` VALUES ('24', '2020-08-02 01:42:30', 'Logout', 'Logout', 'Logout', 'Sukses', '1596307350', '1', '1596307350', '1');
INSERT INTO `log` VALUES ('25', '2020-08-02 01:42:30', 'Logout', 'Logout', 'Logout', 'Sukses', '1596307350', '1', '1596307350', '1');
INSERT INTO `log` VALUES ('26', '2020-08-02 01:42:40', 'Login', 'Login', 'Login', 'Sukses', '1596307360', '4', '1596307360', '4');
INSERT INTO `log` VALUES ('27', '2020-08-02 02:27:57', 'Logout', 'Logout', 'Logout', 'Sukses', '1596310077', '4', '1596310077', '4');
INSERT INTO `log` VALUES ('28', '2020-08-02 02:56:34', 'Login', 'Login', 'Login', 'Sukses', '1596311794', '1', '1596311794', '1');
INSERT INTO `log` VALUES ('29', '2020-08-02 02:56:53', 'Logout', 'Logout', 'Logout', 'Sukses', '1596311813', '1', '1596311813', '1');
INSERT INTO `log` VALUES ('30', '2020-08-02 02:57:03', 'Login', 'Login', 'Login', 'Sukses', '1596311823', '1', '1596311823', '1');
INSERT INTO `log` VALUES ('31', '2020-08-02 04:02:48', 'Logout', 'Logout', 'Logout', 'Sukses', '1596315768', '1', '1596315768', '1');
INSERT INTO `log` VALUES ('32', '2020-08-02 04:02:58', 'Login', 'Login', 'Login', 'Sukses', '1596315778', '4', '1596315778', '4');
INSERT INTO `log` VALUES ('33', '2020-08-02 07:31:40', 'Logout', 'Logout', 'Logout', 'Sukses', '1596328300', '4', '1596328300', '4');
INSERT INTO `log` VALUES ('34', '2020-08-02 07:31:40', 'Logout', 'Logout', 'Logout', 'Sukses', '1596328301', '4', '1596328301', '4');
INSERT INTO `log` VALUES ('35', '2020-08-03 04:22:14', 'Login', 'Login', 'Login', 'Sukses', '1596403335', '1', '1596403335', '1');
INSERT INTO `log` VALUES ('36', '2020-08-03 04:22:28', 'Logout', 'Logout', 'Logout', 'Sukses', '1596403348', '1', '1596403348', '1');
INSERT INTO `log` VALUES ('37', '2020-08-03 16:39:54', 'Login', 'Login', 'Login', 'Sukses', '1596447594', '1', '1596447594', '1');
INSERT INTO `log` VALUES ('38', '2020-08-07 06:47:39', 'Login', 'Login', 'Login', 'Sukses', '1596757660', '1', '1596757660', '1');
INSERT INTO `log` VALUES ('39', '2020-08-31 17:25:46', 'Login', 'Login', 'Login', 'Sukses', '1598869547', '1', '1598869547', '1');
INSERT INTO `log` VALUES ('40', '2020-09-02 11:52:49', 'Login', 'Login', 'Login', 'Sukses', '1599022369', '1', '1599022369', '1');
INSERT INTO `log` VALUES ('41', '2020-09-06 08:54:58', 'Logout', 'Logout', 'Logout', 'Sukses', '1599357298', '1', '1599357298', '1');
INSERT INTO `log` VALUES ('42', '2020-09-06 09:00:46', 'Login', 'Login', 'Login', 'Sukses', '1599357646', '1', '1599357646', '1');
INSERT INTO `log` VALUES ('43', '2020-09-09 04:24:03', 'Login', 'Login', 'Login', 'Sukses', '1599600243', '1', '1599600243', '1');
INSERT INTO `log` VALUES ('44', '2020-09-09 06:18:23', 'Logout', 'Logout', 'Logout', 'Sukses', '1599607103', '1', '1599607103', '1');

-- ----------------------------
-- Table structure for `menuheader`
-- ----------------------------
DROP TABLE IF EXISTS `menuheader`;
CREATE TABLE `menuheader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `lvl` smallint(5) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL,
  `ikon` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `icon_type` tinyint(1) DEFAULT '1',
  `active` tinyint(1) DEFAULT '1',
  `selected` tinyint(1) DEFAULT '0',
  `disabled` tinyint(1) DEFAULT '0',
  `readonly` tinyint(1) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `collapsed` tinyint(1) DEFAULT '0',
  `movable_u` tinyint(1) DEFAULT '1',
  `movable_d` tinyint(1) DEFAULT '1',
  `movable_l` tinyint(1) DEFAULT '1',
  `movable_r` tinyint(1) DEFAULT '1',
  `removable` tinyint(1) DEFAULT '1',
  `removable_all` tinyint(1) DEFAULT '0',
  `child_allowed` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_product_NK1` (`root`),
  KEY `tbl_product_NK2` (`lft`),
  KEY `tbl_product_NK3` (`rgt`),
  KEY `tbl_product_NK4` (`lvl`),
  KEY `tbl_product_NK5` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menuheader
-- ----------------------------
INSERT INTO `menuheader` VALUES ('1', '1', '1', '2', '0', 'PROFIL', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('2', '2', '1', '2', '0', 'UNIT', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('3', '3', '1', '2', '0', 'KEBIJAKAN', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('4', '4', '1', '2', '0', 'BERITA', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('5', '5', '1', '6', '0', 'GALERI', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('6', '6', '1', '6', '0', 'INFORMASI', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('7', '7', '1', '2', '0', 'JDIH', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('8', '8', '1', '2', '0', 'PPID', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('9', '6', '2', '3', '1', 'Pengumuman', 'pengumuman', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('10', '5', '2', '3', '1', 'Image', 'image', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('11', '5', '4', '5', '1', 'Video', 'video', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menuheader` VALUES ('12', '6', '4', '5', '1', 'Pers', 'pers', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);

-- ----------------------------
-- Table structure for `menukiri`
-- ----------------------------
DROP TABLE IF EXISTS `menukiri`;
CREATE TABLE `menukiri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `lvl` smallint(5) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `program` varchar(255) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL,
  `ikon` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `icon_type` tinyint(1) DEFAULT '1',
  `active` tinyint(1) DEFAULT '1',
  `selected` tinyint(1) DEFAULT '0',
  `disabled` tinyint(1) DEFAULT '0',
  `readonly` tinyint(1) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `collapsed` tinyint(1) DEFAULT '0',
  `movable_u` tinyint(1) DEFAULT '1',
  `movable_d` tinyint(1) DEFAULT '1',
  `movable_l` tinyint(1) DEFAULT '1',
  `movable_r` tinyint(1) DEFAULT '1',
  `removable` tinyint(1) DEFAULT '1',
  `removable_all` tinyint(1) DEFAULT '0',
  `child_allowed` tinyint(1) DEFAULT '0',
  `created_at` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_product_NK1` (`root`),
  KEY `tbl_product_NK2` (`lft`),
  KEY `tbl_product_NK3` (`rgt`),
  KEY `tbl_product_NK4` (`lvl`),
  KEY `tbl_product_NK5` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menukiri
-- ----------------------------
INSERT INTO `menukiri` VALUES ('1', '1', '1', '22', '0', 'DEVELOPER', 'konten', '', 'wrench', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('2', '1', '8', '17', '1', 'RBAC', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('3', '1', '9', '10', '2', 'Route', '/rbac/route', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('4', '1', '11', '12', '2', 'Permission', '/rbac/permission', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('5', '1', '13', '14', '2', 'Role', '/rbac/role', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('6', '1', '15', '16', '2', 'Assignment', '/rbac/assignment', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('7', '1', '18', '19', '1', 'GII', 'gii', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('8', '1', '20', '21', '1', 'Report Design', 'reportdesign', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('9', '9', '1', '8', '0', 'MULTIPLE CURRENCY', '', '', 'money', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('12', '1', '2', '7', '1', 'Menu', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('13', '13', '1', '10', '0', 'GL SETUP', '', '', 'pencil', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('14', '13', '2', '3', '1', 'Entity', 'entitas/update?id=1', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('15', '35', '2', '3', '1', 'Users', 'user', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('16', '35', '6', '7', '1', 'Tipe Transaksi', 'transaksitipe', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('17', '1', '3', '4', '2', 'Menu Backend', 'menukiri', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('18', '1', '5', '6', '2', 'Menu Frontend', 'menuheader', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('19', '19', '1', '12', '0', 'GL TRANSACTION', '', '', 'keyboard-o', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('20', '19', '2', '3', '1', 'GL Maintenance', 'gl', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('21', '9', '4', '5', '1', 'Kurs', 'kurs', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('25', '35', '4', '5', '1', 'Sistem Penomoran', 'nosistem', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('28', '9', '6', '7', '1', 'Bank', 'bank', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('29', '9', '2', '3', '1', 'Negara', 'negara', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('34', '34', '1', '16', '0', 'REPORTING', '', '', 'book', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('35', '35', '1', '8', '0', 'SYSTEM SETUP', '', '', 'gear', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('36', '13', '4', '5', '1', 'Akun', 'akun', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('37', '13', '6', '7', '1', 'Cost Center', 'costcenter', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('38', '13', '8', '9', '1', 'Kalender', 'kalender', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('39', '34', '3', '4', '2', 'General Ledger', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('40', '34', '5', '6', '2', 'Trial Balance', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('41', '34', '7', '8', '2', 'Balance Sheet', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('42', '34', '9', '10', '2', 'Income Statement', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('43', '19', '4', '5', '1', 'FX Revaluation', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('44', '19', '6', '7', '1', 'GL Posting', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('45', '19', '8', '9', '1', 'Month-End Close', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('46', '19', '10', '11', '1', 'Year-End Close', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('47', '34', '13', '14', '2', 'Akun', '/akun/print', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('48', '34', '2', '11', '1', 'Transaction Report', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);
INSERT INTO `menukiri` VALUES ('49', '34', '12', '15', '1', 'Master Report', '', '', '', null, '1', '1', '0', '0', '0', '1', '0', '1', '1', '1', '1', '1', '0', '1', null, null, null, null);

-- ----------------------------
-- Table structure for `negara`
-- ----------------------------
DROP TABLE IF EXISTS `negara`;
CREATE TABLE `negara` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `negara` varchar(50) DEFAULT NULL,
  `singkatan` varchar(25) DEFAULT NULL,
  `bendera` varchar(50) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of negara
-- ----------------------------
INSERT INTO `negara` VALUES ('1', 'Indonesia', 'INA', '', null, null, null, null);
INSERT INTO `negara` VALUES ('2', 'United States', 'US', '', null, null, null, null);

-- ----------------------------
-- Table structure for `nosistem`
-- ----------------------------
DROP TABLE IF EXISTS `nosistem`;
CREATE TABLE `nosistem` (
  `id` int(11) NOT NULL,
  `inisial` char(5) DEFAULT NULL,
  `nama_sistem` char(50) NOT NULL DEFAULT '',
  `tgl_reset` date DEFAULT NULL,
  `nosistemurut_id` tinyint(4) DEFAULT NULL,
  `panjang_nomor` tinyint(4) DEFAULT NULL,
  `sekuensi` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tipekonter_id` (`nosistemurut_id`),
  CONSTRAINT `nosistem_ibfk_1` FOREIGN KEY (`nosistemurut_id`) REFERENCES `nosistemurut` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nosistem
-- ----------------------------
INSERT INTO `nosistem` VALUES ('1', 'GL', 'Journal - GL', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('2', 'AP', 'Payment - GL', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('3', 'AR', 'Receipt - GL', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('4', 'SJ', 'Standing Journal', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('5', 'SI', 'Sales Invoice', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('6', 'CN', 'Credit Note', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('7', 'RC', 'Receipt', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('8', 'JD', 'Journal - Debtors', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('9', 'LT', 'Location Transfer', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('10', 'SA', 'Stock Adjustment', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('11', 'PO', 'Purchase Order', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('12', 'PL', 'Picking List', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('13', 'PI', 'Purchase Invoice', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('14', 'DN', 'Debit Note', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('15', 'CP', 'Creditors Payment', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('16', 'CJ', 'Creditors Journal', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('17', 'DL', 'Delivery', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('18', 'WR', 'Work Order Receipt', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('19', 'WI', 'Work Order Issue', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('20', 'WV', 'Work Order Variance', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('21', 'SO', 'Sales Order', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('22', 'SC', 'Shipment Close', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('23', 'CC', 'Contract Close', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('24', 'CU', 'Cost Update', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('25', 'ED', 'Exchange Difference', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('26', 'TD', 'Tenders', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('27', 'SR', 'Stock Requests', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('28', 'WO', 'Work Order', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('29', 'AA', 'Asset Addition', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('30', 'AC', 'Asset Category Change', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('31', 'DA', 'Delete w/down asset', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('32', 'DP', 'Depreciation', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('33', 'IA', 'Import Fixed Assets', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('34', 'OB', 'Opening Balance', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('35', 'AD', 'Auto Debtor Number', null, '2', null, null, null, null, null, null);
INSERT INTO `nosistem` VALUES ('36', 'AS', 'Auto Supplier Number', null, '2', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `nosistemurut`
-- ----------------------------
DROP TABLE IF EXISTS `nosistemurut`;
CREATE TABLE `nosistemurut` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nourutreset` char(1) DEFAULT NULL,
  `note` varchar(25) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nosistemurut
-- ----------------------------
INSERT INTO `nosistemurut` VALUES ('1', 'H', 'Hari', null, null, null, null);
INSERT INTO `nosistemurut` VALUES ('2', 'B', 'Bulan', null, null, null, null);
INSERT INTO `nosistemurut` VALUES ('3', 'T', 'Tahun', null, null, null, null);

-- ----------------------------
-- Table structure for `periode`
-- ----------------------------
DROP TABLE IF EXISTS `periode`;
CREATE TABLE `periode` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `periode` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of periode
-- ----------------------------
INSERT INTO `periode` VALUES ('1', 'Januari');
INSERT INTO `periode` VALUES ('2', 'Pebruari');
INSERT INTO `periode` VALUES ('3', 'Maret');
INSERT INTO `periode` VALUES ('4', 'April');
INSERT INTO `periode` VALUES ('5', 'Mei');
INSERT INTO `periode` VALUES ('6', 'Juni');
INSERT INTO `periode` VALUES ('7', 'Juli');
INSERT INTO `periode` VALUES ('8', 'Agustus');
INSERT INTO `periode` VALUES ('9', 'September');
INSERT INTO `periode` VALUES ('10', 'Oktober');
INSERT INTO `periode` VALUES ('11', 'Nopember');
INSERT INTO `periode` VALUES ('12', 'Desember');

-- ----------------------------
-- Table structure for `perusahaan`
-- ----------------------------
DROP TABLE IF EXISTS `perusahaan`;
CREATE TABLE `perusahaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perusahaan` varchar(50) NOT NULL COMMENT 'Perusahaan',
  `npwp` varchar(50) DEFAULT NULL,
  `noper` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL COMMENT 'Alamat',
  `kota` varchar(50) DEFAULT NULL COMMENT 'Kota',
  `email` varchar(150) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(50) DEFAULT NULL COMMENT 'Telephone',
  `kontak_person` varchar(50) DEFAULT NULL COMMENT 'Kontak Person',
  `kontak_dept` varchar(255) DEFAULT NULL COMMENT 'Kontak Departemen',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of perusahaan
-- ----------------------------
INSERT INTO `perusahaan` VALUES ('1', 'MAAS', '', '', '', 'Jakarta', '', '', '', '');

-- ----------------------------
-- Table structure for `pesan`
-- ----------------------------
DROP TABLE IF EXISTS `pesan`;
CREATE TABLE `pesan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama` varchar(25) DEFAULT NULL COMMENT 'Tabel',
  `email` varchar(50) DEFAULT NULL COMMENT 'Keterangan',
  `subjek` varchar(250) DEFAULT NULL COMMENT 'Catatan',
  `uraian` varchar(1000) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='Kumpulan dari tabel-tabel database(Pangkalan Data) yang digunakan berikut keterangannya';

-- ----------------------------
-- Records of pesan
-- ----------------------------
INSERT INTO `pesan` VALUES ('1', 'asdas', 'asd@asd.com', 'asdasd', 'asdsa', null, null, null, null, null);
INSERT INTO `pesan` VALUES ('2', 'ted', 'ted@yahoo.com', 'asdas', 'asd', null, '1571242385', '1', '1571242385', '1');
INSERT INTO `pesan` VALUES ('3', 'Sas', 'as@taasd.com', 'asdda', 'asd', null, '1571243705', '1', '1571243705', '1');
INSERT INTO `pesan` VALUES ('4', 'asd', 'asd@asd.asd', 'asdas', 'asd', null, '1571243912', '1', '1571243912', '1');
INSERT INTO `pesan` VALUES ('5', 'asal', 'asasl@asd.asd', 'asdas', 'asd', null, '1571244253', '1', '1571244253', '1');

-- ----------------------------
-- Table structure for `preferensi`
-- ----------------------------
DROP TABLE IF EXISTS `preferensi`;
CREATE TABLE `preferensi` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(50) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of preferensi
-- ----------------------------
INSERT INTO `preferensi` VALUES ('1', 'MAAS', null, null, null, null);

-- ----------------------------
-- Table structure for `prioritas`
-- ----------------------------
DROP TABLE IF EXISTS `prioritas`;
CREATE TABLE `prioritas` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `prioritas` varchar(15) DEFAULT NULL COMMENT 'Status',
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prioritas
-- ----------------------------
INSERT INTO `prioritas` VALUES ('1', 'Sangat Penting', null, null, null, null);
INSERT INTO `prioritas` VALUES ('2', 'Penting', null, null, null, null);
INSERT INTO `prioritas` VALUES ('3', 'Biasa', null, null, null, null);
INSERT INTO `prioritas` VALUES ('4', 'Rendah', null, null, null, null);
INSERT INTO `prioritas` VALUES ('5', 'Sangat Rendah', null, null, null, null);

-- ----------------------------
-- Table structure for `projek`
-- ----------------------------
DROP TABLE IF EXISTS `projek`;
CREATE TABLE `projek` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kode` varchar(25) DEFAULT NULL COMMENT 'Tabel',
  `projek` varchar(1000) DEFAULT NULL COMMENT 'Keterangan',
  `tgl_mulai` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `catatan` varchar(10000) DEFAULT NULL COMMENT 'Catatan',
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Kumpulan dari tabel-tabel database(Pangkalan Data) yang digunakan berikut keterangannya';

-- ----------------------------
-- Records of projek
-- ----------------------------
INSERT INTO `projek` VALUES ('1', 'PON20-19', 'Persiapan dan Pelaksanaan PON 20 PAPUA 2020', '2019-01-01', '2020-12-31', null, '1', null, null, null, null);

-- ----------------------------
-- Table structure for `status`
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `status` varchar(15) DEFAULT NULL COMMENT 'Status',
  `status1` tinyint(4) DEFAULT NULL,
  `status2` tinyint(4) DEFAULT NULL,
  `status3` tinyint(4) DEFAULT NULL,
  `status4` tinyint(4) DEFAULT NULL,
  `status5` tinyint(4) DEFAULT NULL,
  `pengguna` tinyint(4) DEFAULT NULL,
  `impor` tinyint(4) DEFAULT NULL COMMENT 'Impor',
  `pekerja` tinyint(4) DEFAULT NULL COMMENT 'Pengguna',
  `karir` tinyint(4) DEFAULT NULL COMMENT 'Karir',
  `pendapatan` tinyint(4) DEFAULT NULL COMMENT 'Pendapatan',
  `potongan` tinyint(4) DEFAULT NULL COMMENT 'Potongan',
  `otoritas` tinyint(4) DEFAULT NULL,
  `otoritaspekerja` tinyint(4) DEFAULT NULL,
  `pendidikan` tinyint(4) DEFAULT NULL,
  `jabatan` tinyint(4) DEFAULT NULL,
  `kalender` tinyint(4) DEFAULT NULL,
  `kalenderdetilupah` tinyint(4) DEFAULT NULL,
  `tabel` tinyint(4) DEFAULT NULL,
  `tabeldetil` tinyint(4) DEFAULT NULL,
  `bank` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', 'Buka', '1', '1', null, null, null, '1', '1', '1', '1', null, null, null, null, null, null, null, '1', '1', '1', null, null, null, null, null);
INSERT INTO `status` VALUES ('2', 'Tunda', '2', '2', null, null, null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `status` VALUES ('3', 'Batal', '3', '3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `status` VALUES ('4', 'Sekarang', '4', '4', null, null, null, '2', '1', '1', null, '1', '1', '1', null, null, null, null, '1', '2', '2', '2', null, null, null, null);
INSERT INTO `status` VALUES ('5', 'Tutup', '5', '5', null, null, null, null, null, null, '2', '1', '1', '1', null, '1', '1', null, null, null, null, '1', null, null, null, null);

-- ----------------------------
-- Table structure for `tabel`
-- ----------------------------
DROP TABLE IF EXISTS `tabel`;
CREATE TABLE `tabel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tabel` varchar(25) DEFAULT NULL COMMENT 'Tabel',
  `keterangan` varchar(1000) DEFAULT NULL COMMENT 'Keterangan',
  `catatan` varchar(10000) DEFAULT NULL COMMENT 'Catatan',
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COMMENT='Kumpulan dari tabel-tabel database(Pangkalan Data) yang digunakan berikut keterangannya';

-- ----------------------------
-- Records of tabel
-- ----------------------------
INSERT INTO `tabel` VALUES ('1', 'jabatan', 'Daftar Jabatan', '<p>Penamaan suatu<strong> jabatan atau posisi pekerja</strong> yang berhubungan dengan tugas dan tanggung jawab.</p>\r\n', '1', null, '1', '1541239616', '1');
INSERT INTO `tabel` VALUES ('2', 'pendapatan', 'Daftar Pendapatan dengan kategorinya', 'Tabel pendapatanpekerja akan integrasi dengan tabel ini.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('3', 'potongan', 'Daftar potongan upah pekerja. ', 'Jumlah keseluruhan pemotongan upah, paling banyak 50% (lima puluh persen) dari setiap pembayaran upah yang diterima pekerja/buruh', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('4', 'komponenpendapatan', '', 'Tabel komponenpendapatan(Istilah UU adalah komponen Upah) digunakan oleh tabel pendapatan.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('5', 'status', 'Matrik status', 'Status semua tabel-tabel yang butuh status_id didefiniskan berdasar kolom di tabel status, pengisian 1 jika dibutuhkan null sebaliknya.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('7', 'organisasitingkat', 'Tingkat pertama  hanya satu buat Kantor Pusat', 'Pemutakhiran data dicek hanya boleh 1 untuk tingkat pertama', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('8', 'kalender', 'Kalender fiscal perusahaan untuk kontrol pembukuan.', 'Kejadian dilapangan karena satu hal lainya memerlukan perlakuan tertentu terkait pembukuan kalender akuntasi sehingga berbeda antara tanggal aktual dengan pengakuan pembukuan. Selama proses batch maka penutupan tranksasi berdasarkan tanggal efektif dikontrol oleh tabel ini beserta detil kalender.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('9', 'lokasi', 'Bagian terkecil dari wilayah', '', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('10', 'karir', 'Karir terkini dan riwayatnya terekam di tabel ini.', 'Riwayat jabatan pada organisasi tertentu dengan periode jabatan,  jabatan terkini serta keterangan lainnya.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('11', 'log', 'Daftar aktivitas pengguna terhadap aplikasi ini.', 'Rekaman jejak login, logout serta segala proses perubahaan terhadap data oleh pengguna.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('12', 'otoritas', 'Daftar otoritas jabatan tertentu berkaitan dengan hak akses terhadap aplikasi.', 'Contoh: \r\n- Hak akses superadmin, Approval Gaji tertera nama dan jabatan Pimpinan Personalia. Sedangkan secara administrasi di sistem bisa jadi yang melaksanakan adalah  staf pengupahan.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('13', 'otoritaspekerja', 'Daftar pekerja yang memilik otoritas akses tertentu terhadap proses pemutakhiran data.', '', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('15', 'pendapatanpekerja', 'Data transaksi pendapatan pekerja perkalender, perjabatan yang terkini maupun riawayatnya.', 'Tabel ini hasil proses batch pengupahan namun bisa dimasukan manual juga bergantung kepada kebutuhan.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('16', 'pendidikanpekerja', 'Riwayat pendidikan pekerja.', '', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('17', 'pendidikantingkat', 'Daftar tingkat pendidikan.', '', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('18', 'bank', 'Daftar Bank', 'Untuk transfer upah pekerja.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('19', 'ptkp', 'Daftar PTKP (Penghasilan Tidak Kena Pajak)', '', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('20', 'ptkppekerja', 'Riwayat dan terkini PTKP Pekerja.', '', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('21', 'suksesipekerja', 'Riwayat dan terkini suksesi pekerja', '<p>Suksesi terhadap pendahulu (Senior) dan bisa lebih dari satu kemungkingan dengan periode yang sama atau periode yang berbeda.</p>\r\n', '4', null, '1', '1541995361', '1');
INSERT INTO `tabel` VALUES ('24', 'skorpekerja', 'Riwayat dan terkini skor pekerja', 'Riwayat tergantung pada proses kalender yang dilakukan.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('25', 'jabtantingkat', 'Tingkatan Jabatan', 'Pekerja dengan jabatan yang sama bisa berbeda tingkat jabatanya.', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('26', 'user', 'Daftar pengguna.', '<p>Sebagai hak login ke aplikasi sekaligus akun pekerja. Untuk&nbsp; pekerja dikarenakan memiliki tugas tambahan seperti sebagi administrator aplikasi maka hak akses tertuang di tabel otoritaspekerja.</p>\r\n\r\n<p><em><strong>Tidak Semua Pekerja diharuskan punya akun, tergantung kebutuhan.</strong></em></p>\r\n', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('27', 'upahcatatan', 'Tambahan catatan pada slip upah jika dibutuhkan.', '', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('28', 'hubunganpekerja', 'Riawayat dan terkini hubungan pekerja dengan perusahaan.', 'PKWTT, PKWT atau magang', '4', null, '1', null, '1');
INSERT INTO `tabel` VALUES ('29', 'kalenderdetil', 'Kontrol aktivasi proses aplikasi perperiode.', '<p>Suatusnya On atau Off</p>\r\n', '4', null, '1', '1541239424', '1');
INSERT INTO `tabel` VALUES ('30', 'tabel', 'Penejelasan tentang seluruh tabel pada aplikasi ini,', '<p>Dapat digunakan oleh pengguna maupun pengembang sebagai sarana pencatatan dan pengetahuan.</p>\r\n', '1', null, null, null, null);
INSERT INTO `tabel` VALUES ('31', 'pekerja', 'Data terkini Pekerja, hampir semua proses lainnya bergantung pada tabel ini. ', '<p><strong>Status pekerja&nbsp;yang belum&nbsp;&#39;Sekarang&#39; tidak akan tampil di halaman lainnya, artinya tidak dapat diproses lebih lanjut.</strong></p>\r\n\r\n<p><strong>Status pekerja &#39;Tutup&#39; hanya pada tampil proses tertentu saja.</strong></p>\r\n', '4', '1541909160', '1', '1541909370', '1');
INSERT INTO `tabel` VALUES ('32', 'tugas', 'Tugas masing-masing organisasi', '', '1', '1548732121', '1', '1548732121', '1');
INSERT INTO `tabel` VALUES ('33', 'entitas', 'Entitas merupakan suatau organisasi seperti Lembaga Pemerintah, Perusahaan, Universitas, Sekolah  atau lain-lainnya', '', '1', '1561347810', '1', '1561347810', '1');

-- ----------------------------
-- Table structure for `tabeldetil`
-- ----------------------------
DROP TABLE IF EXISTS `tabeldetil`;
CREATE TABLE `tabeldetil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tabel_id` bigint(20) DEFAULT NULL,
  `atribut` varchar(25) DEFAULT NULL,
  `petunjuk` varchar(200) DEFAULT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `catatan` varchar(10000) DEFAULT NULL,
  `status_id` tinyint(4) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tabel_id` (`tabel_id`),
  KEY `status_id` (`status_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`),
  CONSTRAINT `tabeldetil_ibfk_1` FOREIGN KEY (`tabel_id`) REFERENCES `tabel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COMMENT='Kumpulan field(Item) dari tabel-tabel yang akan diberikan hints(petunjuk) yang perlu ditampilkan di view';

-- ----------------------------
-- Records of tabeldetil
-- ----------------------------
INSERT INTO `tabeldetil` VALUES ('1', '1', 'pensiun', 'Satuan \'Tahun\', nilai 0 tidak terbatas', 'Jika jabatan tertentu tidak ada batasan usia pensiun maka nilai pensiun diberi 0. ', '', '1', null, '1', '1541292315', '1');
INSERT INTO `tabeldetil` VALUES ('2', '8', 'tahun', 'Tahun berjalan', '', '', '4', null, '1', null, '1');
INSERT INTO `tabeldetil` VALUES ('3', '8', 'periode', 'Urutan 1 s/d 12 tetapi  belum tentu mewakli bulan kalender', '', '', '4', null, '1', null, '1');
INSERT INTO `tabeldetil` VALUES ('6', '3', 'persen', 'Kalkulasi persen digunakan jika nilai <> 0 sebaliknya akan menggunakan atribut nilai jika atribut nilai <> 0.', 'Prioritas adalah atribut nilai', '', '4', null, '1', null, '1');
INSERT INTO `tabeldetil` VALUES ('7', '15', 'kalenderdetil_id', 'mengacu pada periode dari kalender yang ada di detil', '', '<p><strong><em>Pengembangan lebih lanjut</em></strong>.</p>\r\n', '4', null, '1', null, '1');
INSERT INTO `tabeldetil` VALUES ('8', '30', 'atribut', 'atribut dari sebuah tabel.', 'Kolom dari basis data.', '', '1', '1541293280', '1', '1541293280', '1');
INSERT INTO `tabeldetil` VALUES ('9', '21', 'pendahulu_id', 'Karir pendahulu (Senior)', 'Suksesi pekerja didaftarkan ke struktur atas (Pendahulu)', '', '1', '1541995681', '1', '1541995681', '1');
INSERT INTO `tabeldetil` VALUES ('10', '32', 'persentase', 'Merupakan persentase terkini sedangkan histori persentase ada di detil', '', '', '1', '1548732197', '1', '1548732197', '1');
INSERT INTO `tabeldetil` VALUES ('11', '33', 'kurs', 'Mata uang utama dari entitas ini.', 'Setelah ada transaksi maka kurs ini tidak diperbolehkan untuk diubah lagi,', '', '1', '1561347922', '1', '1561350561', '1');
INSERT INTO `tabeldetil` VALUES ('12', '33', 'entitas', 'Entitas merupakan suatau organisasi seperti Lembaga Pemerintah, Perusahaan, Universitas, Sekolah atau lain-lainnya', '', '', '1', '1561351144', '1', '1561351144', '1');
INSERT INTO `tabeldetil` VALUES ('13', '33', 'utama', 'Berfungsi jika entitas ini berada ditingkat korporasi sebagai tanda bahwa entitas ini adalah utama.', '', '', '1', '1561351378', '1', '1561351378', '1');

-- ----------------------------
-- Table structure for `transaksitipe`
-- ----------------------------
DROP TABLE IF EXISTS `transaksitipe`;
CREATE TABLE `transaksitipe` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tipetransaksi` varchar(25) DEFAULT NULL,
  `positip` tinyint(1) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksitipe
-- ----------------------------
INSERT INTO `transaksitipe` VALUES ('1', 'Sales Income', '1', null, null, '1559517405', '1');
INSERT INTO `transaksitipe` VALUES ('2', 'Others  Income', '1', null, null, '1559517360', '1');
INSERT INTO `transaksitipe` VALUES ('3', 'Service Income', '1', null, null, '1559517386', '1');
INSERT INTO `transaksitipe` VALUES ('4', 'Fix Cost', '0', null, null, null, null);
INSERT INTO `transaksitipe` VALUES ('5', 'Var Cost', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'ID#',
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Pengguna',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'E-mail',
  `image` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Foto',
  `status` tinyint(1) DEFAULT NULL COMMENT 'Status',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`),
  KEY `status_id` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'superadmin', '75qD8z1dGu5hZCXVB7GC-KSZAUVTnQlw', '$2y$13$2fpFMPozzfmseg/Br9F79eIMm5iP1Dtj/RY2dUQx99PODmNdRY6k6', 'kg9nw_l3ORTT-gYoU4AA5AoJAAqYVkQ9_1544396070', 'superadmin_pon20@gmail.com', 'stBdUI0wUTpk3MKU215GW-bkYXabk56c.jpg', '1', '1537226966', '1596247680', null, '1');
INSERT INTO `user` VALUES ('2', 'sesmen', '2LBCJFOvmDqZgIdYILU4WEJSD7jRQoeA', '$2y$13$QbX8k/LeKVNcSfZKFl7olOaNgnOSGipG5qg7PNdK.UR0ap/qXjvES', null, 'sesmen@kemenpora.go.id', null, '1', '1578554948', '1579664434', '1', '1');
INSERT INTO `user` VALUES ('3', 'deputi1', 'dfoqaOo_O_s4q16NPYrpZFBW8XjiZDsS', '$2y$13$A189kmoJerWx0AH/E.LgAeRfXLL9KUaovOyKd4JA5iVUKf7WJpEl.', null, 'deputi1@gmail.com', null, '1', '1579168848', '1579582305', '1', '1');
INSERT INTO `user` VALUES ('4', 'humas', 'DOMSGY1N7DU-1Lu0mlbJJCr-xTRagbro', '$2y$13$bbIdpt.f9QrpUyol88VL6ujue8yxov0GIVu1NoPpuTdQgVTMYR.2e', null, 'humas@kemenpora.go.id', 'CLUQoTBjckfn3cZL2Noj7HN_vpEs65w9.jpg', '1', '1579242263', '1596247602', '1', '4');
INSERT INTO `user` VALUES ('5', 'humas1', '17O5Ho0Zi_375XhvENlYoHjhnSpkDR_a', '$2y$13$scC/VJI3DK1CJBpTH/HyM.d0hNo5ECeEqrdKBDecCAnteN7DiqOlG', null, 'humas1@kemenpora.go.id', null, '1', '1579597800', '1579597800', '1', '1');
INSERT INTO `user` VALUES ('6', 'humas2', 'TwdeK-F-79WrU5i_K2bKaDpKtHRpMTyh', '$2y$13$Q8ygCG7Bk8YG7bI0n9PBy.ofQv4u0pJHM1PJ5VBq58o17aRMX1rqa', null, 'humas2@kemenpora.go.id', null, '1', '1579597821', '1579597821', '1', '1');
INSERT INTO `user` VALUES ('7', 'humas3', 'STOIjexrlAj94jJiQ5aMDHjGAvWVZRcU', '$2y$13$R/C9hrqQMgqwFAl9t4tSAuqcDUCVY1Q.A56cAciCNJIJKuIiOgBCS', null, 'humas3@kemenpora.go.id', null, '1', '1579597846', '1579597846', '1', '1');
INSERT INTO `user` VALUES ('8', 'deputi2', 'V9CLF0SbvFNuW-avokWlkwNyEodOrEif', '$2y$13$J3teFjqOCaYjz5be5OV8iOdEivy0l0iBAE0XtspmKnCvPZUyYfJXa', null, 'deputi2@kemenpora.go.id', '4VpEM7WLzLdPwa43Hj8KlyrTywGnhEXI.jpg', '1', '1579600906', '1580186249', '1', '8');
INSERT INTO `user` VALUES ('9', 'deputi3', 'UVavqS-rBLjm2P955Tx0O_xYR_SXi2yB', '$2y$13$oGFJI23JxKbsNf/OgIvfRe.mhlXFz2WzKcoy0iBvBx903bi9p4g1a', null, 'deputi3@kemenpora.go.id', null, '1', '1580181592', '1580181592', '1', '1');
INSERT INTO `user` VALUES ('10', 'deputi4', 'hu4oetYOtE1YomLyMTSLuj0Gz2WtGOJI', '$2y$13$YFrWvPH52JKTO92RSI0fO.td1nC9v2v7R/XF2SIPIpF3AwHdTTj4a', null, 'deputi4@kemenpora.go.id', null, '1', '1580181615', '1580181615', '1', '1');
