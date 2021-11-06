/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100417
 Source Host           : localhost:3306
 Source Schema         : db_ekampung

 Target Server Type    : MySQL
 Target Server Version : 100417
 File Encoding         : 65001

 Date: 06/11/2021 09:24:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for data_desa
-- ----------------------------
DROP TABLE IF EXISTS `data_desa`;
CREATE TABLE `data_desa`  (
  `id_desa` int(11) NOT NULL AUTO_INCREMENT,
  `nama_desa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_lengkap` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `deskripsi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_desa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_desa
-- ----------------------------
INSERT INTO `data_desa` VALUES (1, 'test', 'lontong', NULL);
INSERT INTO `data_desa` VALUES (2, 'benowo', 'test', NULL);
INSERT INTO `data_desa` VALUES (3, 'sukolilo', 'test2', NULL);

-- ----------------------------
-- Table structure for data_jenis_lembaga_desa
-- ----------------------------
DROP TABLE IF EXISTS `data_jenis_lembaga_desa`;
CREATE TABLE `data_jenis_lembaga_desa`  (
  `id_lembaga` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lembaga` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_lembaga`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_jenis_potensi_desa
-- ----------------------------
DROP TABLE IF EXISTS `data_jenis_potensi_desa`;
CREATE TABLE `data_jenis_potensi_desa`  (
  `id_jenis_potensi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_potensi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis_potensi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_jenis_surat
-- ----------------------------
DROP TABLE IF EXISTS `data_jenis_surat`;
CREATE TABLE `data_jenis_surat`  (
  `id_jenis_surat` int(11) NOT NULL AUTO_INCREMENT,
  `id_surat_master` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_surat_masuk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_surat_keluar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis_surat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_kartu_keluarga
-- ----------------------------
DROP TABLE IF EXISTS `data_kartu_keluarga`;
CREATE TABLE `data_kartu_keluarga`  (
  `no_kk` int(11) NOT NULL AUTO_INCREMENT,
  `nik` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`no_kk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_lembaga_desa
-- ----------------------------
DROP TABLE IF EXISTS `data_lembaga_desa`;
CREATE TABLE `data_lembaga_desa`  (
  `id_lembaga` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_lembaga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_lembaga`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_master_surat
-- ----------------------------
DROP TABLE IF EXISTS `data_master_surat`;
CREATE TABLE `data_master_surat`  (
  `id_surat` int(11) NOT NULL AUTO_INCREMENT,
  `No_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan_surat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kepada` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `Alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tanggal` date NULL DEFAULT NULL,
  `tempat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kepala_desa` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_surat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_penduduk
-- ----------------------------
DROP TABLE IF EXISTS `data_penduduk`;
CREATE TABLE `data_penduduk`  (
  `nik` int(11) NOT NULL AUTO_INCREMENT,
  `no_kk` int(11) NULL DEFAULT NULL,
  `nama_penduduk` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_kelamin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `alamat_penduduk` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`nik`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_perangkat_desa
-- ----------------------------
DROP TABLE IF EXISTS `data_perangkat_desa`;
CREATE TABLE `data_perangkat_desa`  (
  `id_perangkat_desa` int(11) NOT NULL AUTO_INCREMENT,
  `nama_perangkat_desa` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jabatan` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_perangkat_desa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_surat keluar
-- ----------------------------
DROP TABLE IF EXISTS `data_surat keluar`;
CREATE TABLE `data_surat keluar`  (
  `No_id_Surat` int(11) NOT NULL AUTO_INCREMENT,
  `id_surat_keluar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_keluar` date NULL DEFAULT NULL,
  `Perihal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`No_id_Surat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_surat_masuk
-- ----------------------------
DROP TABLE IF EXISTS `data_surat_masuk`;
CREATE TABLE `data_surat_masuk`  (
  `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis_surat` int(11) NULL DEFAULT NULL,
  `tgl_masuk` date NULL DEFAULT NULL,
  `perihal` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_surat_masuk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_user
-- ----------------------------
DROP TABLE IF EXISTS `data_user`;
CREATE TABLE `data_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nik` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for desa
-- ----------------------------
DROP TABLE IF EXISTS `desa`;
CREATE TABLE `desa`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_desa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_desa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of desa
-- ----------------------------
INSERT INTO `desa` VALUES (3, 's', '');
INSERT INTO `desa` VALUES (4, 'd', '');
INSERT INTO `desa` VALUES (5, 'f', '');
INSERT INTO `desa` VALUES (6, 'g', '');
INSERT INTO `desa` VALUES (7, 'h', '');
INSERT INTO `desa` VALUES (8, 'j', '');
INSERT INTO `desa` VALUES (9, 'k', '');
INSERT INTO `desa` VALUES (10, 'l', '');

-- ----------------------------
-- Table structure for mitra
-- ----------------------------
DROP TABLE IF EXISTS `mitra`;
CREATE TABLE `mitra`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mitra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mitra
-- ----------------------------
INSERT INTO `mitra` VALUES (1, 'kampung tangguh medokan surabaya');
INSERT INTO `mitra` VALUES (2, 'kampung sehat medokan surabaya');
INSERT INTO `mitra` VALUES (3, 'kampung cerdas medokan');
INSERT INTO `mitra` VALUES (4, 'kampung ngaglik cerdas');
INSERT INTO `mitra` VALUES (5, 'perumahan sugih');
INSERT INTO `mitra` VALUES (6, 'pondok benowo indah');
INSERT INTO `mitra` VALUES (7, 'kampung kemasan');
INSERT INTO `mitra` VALUES (9, 'wow');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

SET FOREIGN_KEY_CHECKS = 1;
