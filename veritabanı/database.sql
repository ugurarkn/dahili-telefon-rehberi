-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 05 Oca 2023, 11:03:37
-- Sunucu sürümü: 5.7.24
-- PHP Sürümü: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `phonebook`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `site_logo` varchar(400) DEFAULT NULL,
  `site_baslik` varchar(350) DEFAULT NULL,
  `site_aciklama` varchar(300) DEFAULT NULL,
  `site_duyuru` varchar(600) DEFAULT NULL,
  `site_link` varchar(100) DEFAULT NULL,
  `site_sahip_mail` varchar(100) DEFAULT NULL,
  `site_mail_host` varchar(100) DEFAULT NULL,
  `site_mail_mail` varchar(100) DEFAULT NULL,
  `site_mail_port` int(11) DEFAULT NULL,
  `site_mail_sifre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_logo`, `site_baslik`, `site_aciklama`, `site_duyuru`, `site_link`, `site_sahip_mail`, `site_mail_host`, `site_mail_mail`, `site_mail_port`, `site_mail_sifre`) VALUES
(1, '298010favicon.png', 'Telefon Rehberi', 'Telefon Rehberi', '<p><strong>DUYURU!</strong> İletişim Bilgilerinizde eksiklik varsa, l&uuml;tfen <strong>3050</strong>, <strong>3051</strong>, <strong>3022</strong> dahili hattı arayınız.</p>\r\n', '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kisiler`
--

CREATE TABLE `kisiler` (
  `kisi_id` int(11) NOT NULL,
  `kisi_isim` varchar(400) DEFAULT NULL,
  `kisi_dahili` varchar(400) DEFAULT NULL,
  `kisi_cep` varchar(20) DEFAULT NULL,
  `kisi_birim` varchar(200) DEFAULT NULL,
  `kisi_mudurluk` varchar(200) DEFAULT NULL,
  `kisi_meslek` varchar(200) DEFAULT NULL,
  `kisi_detay` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kisiler`
--

INSERT INTO `kisiler` (`kisi_id`, `kisi_isim`, `kisi_dahili`, `kisi_cep`, `kisi_birim`, `kisi_mudurluk`, `kisi_meslek`, `kisi_detay`) VALUES
(2, 'Elmas COŞKUN', '5010 / 5011', '', 'Başkanlık Sekreteri', 'Özel Kalem', 'Başkanlık Sekreteri', ''),
(3, 'Şefik GÖKÜŞ', '4030', NULL, 'Evlendirme Memuru', 'Özel Kalem', NULL, NULL),
(4, 'Mehmet SEZER', '5016', '', 'Özel Kalem', 'Özel Kalem', 'Başkan Koruma', ''),
(5, 'Mükerrem TOLLU', '5115', '', 'Belediye Başkanı', 'Belediye Başkanı', 'Belediye Başkanı', ''),
(6, 'Hikmet YÜĞLÜK', '1002', '', 'Halkla İlişkiler', 'Basın Yayın ve Halkla İlişkiler', 'Halkla İlişkiler Sorumlusu', ''),
(8, 'Cengiz SEYRAN', '1006', NULL, 'Vezne', 'Mali Hizmetler', NULL, NULL),
(9, 'Selçuk UĞUZ', '1006', NULL, 'Vezne', 'Mali Hizmetler', NULL, NULL),
(10, 'Mehmet ÖZEN', '4043', '', 'Muhasebe Yetkilisi', 'Mali Hizmetler', '', ''),
(11, 'Sema KURT', '1009', '', 'ÇTV / İlan Reklam', 'Mali Hizmetler', '', ''),
(12, 'Hülya ABDİL', '1008', '', 'ÇTV / İlan Reklam', 'Mali Hizmetler', '', ''),
(14, 'Halil İbrahim DÖLEK', '1031', '', 'Emlak ', 'Mali Hizmetler', '', ''),
(15, 'Ömer ŞEN', '1033', NULL, 'Beyana Çağrı', 'Mali Hizmetler', NULL, NULL),
(16, 'Ahmet SOYDAN', '1033', NULL, 'Beyana Çağrı', 'Mali Hizmetler', NULL, NULL),
(17, 'Gökhan AKYEL', '1034', NULL, 'Emlak ', 'Mali Hizmetler', NULL, NULL),
(18, 'Cihat ALAKAYA', '1034', NULL, 'Emlak ', 'Mali Hizmetler', NULL, NULL),
(19, 'Ayşe BİLGEN', '1035', NULL, 'Emlak ', 'Mali Hizmetler', NULL, NULL),
(20, 'Behçet YILDIZ', '6031', '', 'KUMKUYU İMAR A.Ş.', 'KUMKUYU İMAR A.Ş.', '', ''),
(21, 'Emre KURT', '1080', '', 'Sicil Memurluğu', 'Mali Hizmetler', '', ''),
(22, 'Mehmet Ali KOCA', '1080', '', 'Tahakkuk', 'Mali Hizmetler', '', ''),
(25, 'Meriç BELCİ', '1038', '', 'Borcu Yoktur', 'Mali Hizmetler', '', ''),
(26, 'Saniye DURMUŞ', '1039', NULL, 'Emlak Şefi', 'Mali Hizmetler', NULL, NULL),
(27, 'Adem TEKİN', '4060', '', 'Müdür', 'İşletme ve İştirakler', '', ''),
(28, 'Soner Bağ', '1060', NULL, 'Gelirler Sorumlusu', 'Mali Hizmetler', NULL, NULL),
(30, 'Ayşe DÖM', '1071', '', 'Tahakkuk Şefi', 'Mali Hizmetler', '', ''),
(31, 'Mehmet DOĞAN', '1073', NULL, 'İcra', 'Mali Hizmetler', NULL, NULL),
(32, 'Üzeyir KARAÇOCUK', '1073', NULL, 'İcra', 'Mali Hizmetler', NULL, NULL),
(33, 'Bülent ÖZKAN', '1074', NULL, 'İcra', 'Mali Hizmetler', NULL, NULL),
(34, 'Vezne 1. kat', '1075', NULL, 'Vezne', 'Mali Hizmetler', NULL, NULL),
(35, 'Rüştü ÇINAR', '2010', NULL, 'Başkan Yardımcısı', 'Başkan Yardımcısı', NULL, NULL),
(37, 'Abdulkadir ALTUNÇİÇEK', '2070', '', ' Başkan Yardımcısı', 'Başkan Yardımcısı', 'Başkan Yardımcısı', ''),
(38, 'Mustafa KUTLU', '2030', NULL, 'Müdür', 'Temizlik İşleri', NULL, NULL),
(39, 'Devlet Doğukan ALTINTAŞ', '2020', NULL, ' Müdür', 'Park ve Bahçeler', NULL, NULL),
(40, 'Kürşat ARAS', '2050', NULL, 'Müdür', 'İmar ve Şehircilik', NULL, NULL),
(41, 'Aybike DEMİREL', '2061', NULL, 'Peyzaj Mimarı', 'Park ve Bahçeler', NULL, NULL),
(42, 'Huriye KALE', '2063', '', 'Park Bahçe', 'Park ve Bahçeler', '', ''),
(43, 'Mevlüt DÖLEK', '2232', '', 'planlama', 'imar ve Şehircilik Müd', '', ''),
(44, 'Fatma AKÇA', '2064', NULL, 'Park ve Bahçeler', 'Park ve Bahçeler', NULL, NULL),
(46, 'Niyazi YILDIZ', '3010', NULL, 'Başkan Yardımcısı', 'Başkan Yardımcısı', NULL, NULL),
(48, 'Osman GÜLDALI', '3021', '', 'ARGE', 'Araştırma ve Geliştirme Müdürlüğü', '', ''),
(49, 'Fahrettin ÇORTUL', '3023', '', 'Ar-Ge', 'Araştırma ve Geliştirme Müdürlüğü', '', ''),
(50, 'Esra ÖZCAN', '3040', NULL, 'Müdür', 'Zabıta', NULL, NULL),
(52, 'Süleyman ARICI', '3032', NULL, 'Zabıta', 'Zabıta', NULL, NULL),
(53, 'Ahmet Güray GEZER', '3050', NULL, 'Müdür', 'Bilgi İşlem', NULL, NULL),
(54, 'İlyas SAYGILI', '3051', NULL, 'Bilgi İşlem', 'Bilgi İşlem', NULL, NULL),
(55, 'Fehmi KUYUGÖZ', '3070', NULL, 'Müdür', 'Destek Hizmetleri', NULL, NULL),
(56, 'Emine DOĞAN', '3071', NULL, 'Destek Hizmetleri', 'Destek Hizmetleri', NULL, NULL),
(57, 'Adem KILIÇ', '3072', NULL, 'Destek Hizmetleri', 'Destek Hizmetleri', NULL, NULL),
(58, 'Sonay KARAKUŞ', '3074', '', 'Destek', 'Destek Hizmetleri', '', ''),
(59, 'Hüseyin ÇİMEN', '3074', NULL, 'Destek Hizmetleri', 'Destek Hizmetleri', NULL, NULL),
(60, 'Muhammet KURT', '3060', NULL, 'Müdür', 'Ruhsat ve Denetim', NULL, NULL),
(62, 'Mahmut Ergün ÇELİK', '3080', NULL, 'Müdür', 'Basın Yayın ve Halkla İlişkiler', NULL, NULL),
(64, 'Furkan GÖKTEPE', '3092', NULL, 'Basın Yayın', 'Basın Yayın ve Halkla İlişkiler', NULL, NULL),
(66, 'Yusuf KORKMAZ', '3092', NULL, 'Basın Yayın', 'Basın Yayın ve Halkla İlişkiler', NULL, NULL),
(67, 'Emine AKÇAKUYU KAVUNOĞLU', '4010', NULL, 'Müdür', 'Hukuk İşleri', NULL, NULL),
(69, 'Fazıl ÇETİNKAYA', '4011', NULL, 'Hukuk İşleri', 'Hukuk İşleri', NULL, NULL),
(70, 'Şule TURAN', '4011', NULL, 'Hukuk İşleri', 'Hukuk İşleri', NULL, NULL),
(71, 'Rabia KURNAZ', '4012', NULL, 'Hukuk İşleri', 'Hukuk İşleri', NULL, NULL),
(72, 'Gülsüm Gizem TUNÇ', '4013', NULL, 'Hukuk İşleri', 'Hukuk İşleri', NULL, NULL),
(74, 'Hatice YILMAZ', '4031', NULL, 'Evlendirme Memuru', 'Özel Kalem', NULL, NULL),
(75, 'Mehmet Ali KAYA', '4040', NULL, 'Müdür', 'Mali Hizmetler', NULL, NULL),
(76, 'Abdurrahman TOKER', '4041', '', 'Mali Hizmetler', 'Mali Hizmetler', '', ''),
(77, 'Meryem GÜRGAH', '4042', NULL, 'Mali Hizmetler', 'Mali Hizmetler', NULL, NULL),
(83, 'Onur Gök', '1007', '', 'Mali Hizmetler', 'Mali Hizmetler', '', ''),
(84, 'Cemal TURAN', '4080', '', 'İnsan Kaynakları', 'İnsan Kaynakları', 'Müdür', ''),
(85, 'Fatih KOÇ', '4091', NULL, 'İnsan Kaynakları ve Eğitm', 'İnsan Kaynakları ve Eğitim', NULL, NULL),
(86, 'Uğur ÇELİK', '4091', NULL, 'İnsan Kaynakları ve Eğitim', 'İnsan Kaynakları ve Eğitim', NULL, NULL),
(87, 'Çağlar CAN', '4092', NULL, 'İnsan Kaynakları ve Eğitim', 'İnsan Kaynakları ve Eğitim', NULL, NULL),
(88, 'Mesut AKKAYA', '4092', NULL, 'İnsan Kaynakları ve Eğitim', 'İnsan Kaynakları ve Eğitim', NULL, NULL),
(89, 'Şaban Dölek', '5030', NULL, 'Başkan Yardımcısı', 'Başkan Yardımcısı', NULL, NULL),
(90, 'Mehmet TOPÇU', '5040', NULL, 'Müdür', 'Özel Kalem', NULL, NULL),
(92, 'Zeynep HALLAÇ', '5050', NULL, 'Yazı İşleri', 'Yazı İşleri', NULL, NULL),
(93, 'Ayşen ERDOĞAN', '5052', '', 'Yazı İşleri', 'Yazı İşleri', '', ''),
(94, 'Yasemin SEZER', '5051', '', 'Yazı İşleri', 'Yazı İşleri', '', ''),
(95, 'İhsan UYSAL', '5060', NULL, 'Müdür', 'Yazı İşleri', NULL, NULL),
(97, 'Tekin KARABIYIK', '5090', NULL, 'Denetim', 'Denetim Odası', NULL, NULL),
(98, 'Ahmet EFE', '6020', NULL, 'Doktor', 'İşyeri Sağlığı ve Güvenliği', NULL, NULL),
(99, 'Melih KAŞ', '6025', NULL, 'İşyeri Sağlığı ve Güvenliği', 'İşyeri Sağlığı ve Güvenliği', NULL, NULL),
(100, 'Mehmet ERDOĞAN', '6025', NULL, 'İşyeri Sağlığı ve Güvenliği', 'İşyeri Sağlığı ve Güvenliği', NULL, NULL),
(101, 'Mevlüt DÖLEK', '6030', NULL, 'Müdür', 'Erdemli Personel A.Ş.', NULL, NULL),
(102, 'Hasan GÜNCÜ', '6030', '', 'Belediye Şirketi', 'Erdemli Personel A.Ş.', '', ''),
(103, 'Ramazan Okyar', '6040', NULL, 'Müdür', 'Sosyal Yardım İşleri', NULL, NULL),
(104, 'Hikmet GÜNDÜZ', '6000', NULL, 'Garaj', 'Fen İşleri', NULL, NULL),
(105, 'Bilal YAPAR', '6000', NULL, 'Garaj', 'Fen İşleri', NULL, NULL),
(106, 'Mehmet BAŞER', '6000', NULL, 'Garaj', 'Fen İşleri', NULL, NULL),
(107, 'Raşit GÜRSOY', '6130', '', 'İmar', 'İmar Arşiv', '', ''),
(108, 'Raşit GÜRSOY', '6130', NULL, 'İmar Arşiv', 'İmar ve Şehircilik', NULL, NULL),
(109, 'Mehmet İÇEL', '6140', NULL, 'Emlak ', 'Emlak Arşiv', NULL, NULL),
(110, 'Belediye Garajı', '515 18 58', NULL, '', 'Belediye Garajı', NULL, NULL),
(111, 'Parke Şantiyesi', '515 34 65', NULL, '', 'Parke Şantiyesi', NULL, NULL),
(112, 'Sosyal Yardım Evi', '515 60 20', NULL, '', 'Sosyal Yardım Evi', NULL, NULL),
(113, 'Erdemli Kültür Merkezi', '515 54 33', NULL, '', 'Erdemli Kültür Merkezi', NULL, NULL),
(114, 'Özel Kalem Md.', '515 17 90', NULL, 'Özel Kalem', 'Özel Kalem', NULL, NULL),
(115, 'Santral Santral', '515 10 43', NULL, '', 'Santral', NULL, NULL),
(116, 'Santral Santral 2', '515 10 17', NULL, '', 'Santral', NULL, NULL),
(117, 'Belediye FAKS', '515 41 28', NULL, 'Fax', 'Diğer', NULL, NULL),
(118, 'Alo Belediye', '444 5 609', NULL, 'Santral', 'Santral', NULL, NULL),
(120, 'Fatih M. YILDIRIM', '2031', '', 'Temizlik İşleri', 'Temizlik İşleri', '', ''),
(122, 'Özge KIRAN', '2088', '', 'fen işleri', 'Fen İşleri', '', ''),
(125, 'Gönül AY ÇINAR', '2081', NULL, 'Fen İşleri', 'Fen İşleri', NULL, NULL),
(126, 'Arzu BOSTANKOLU', '2087', '', 'Fen İşleri', 'Fen İşleri', '', ''),
(129, 'Mustafa USLU', '2084', '', 'Fen İşleri ', 'Fen İşleri', '', ''),
(130, 'Mustafa KALE', '2086', '', 'Fen İşleri', 'Fen İşleri', '', ''),
(132, 'M. Erkan KOCABAĞ', '2105', '', 'İhale', 'Fen İşleri', '', ''),
(133, 'C. Tarık ERDEM', '2085', '', 'Fen İşleri', 'Fen İşleri', '', ''),
(134, 'Fazilet ALTUNÇİÇEK', '2106', '', 'İhale', 'Fen İşleri', '', ''),
(135, 'İbrahim YAZAR', '2102', NULL, 'Satınalma', 'Fen İşleri', NULL, NULL),
(136, 'Osman KALENDER', '2242', '', 'imar koordinasyon', 'İmar ve Şehircilik', '', ''),
(137, 'Mine Bulut CAN', '2224', '', 'Ruhsat', 'İmar ve Şehircilik', '', ''),
(138, 'Mehmet ULUSOY', '2211', '', 'Yapı Kullanma', 'İmar ve Şehircilik', '', ''),
(140, 'Sıdıka SÖNMEZ ÜNAL', '2252', '', 'Harita ve Kamulaştırma ', 'İmar ve Şehircilik', '', ''),
(142, 'Ertuğrul ÖZDEMİR', '2213', '', 'Ruhsat', 'İmar ve Şehircilik', '', ''),
(143, 'Olcay Cansız ŞEN', '2272', '', 'Numarataj', 'İmar ve Şehircilik', '', ''),
(144, 'Tuğçe ÇALGAN', '2261', '', 'Yapı Denetim', 'İmar ve Şehircilik', '', ''),
(145, 'Ramazan KIRATLI', '2225', NULL, 'İmar', 'İmar ve Şehircilik', NULL, NULL),
(146, 'Teslime GÜNEŞ', '2231', NULL, 'Planlama ', 'İmar ve Şehircilik', NULL, NULL),
(147, 'Ayşe DUMAN', '2232', NULL, 'Planlama ', 'İmar ve Şehircilik', NULL, NULL),
(148, 'Deniz ÇAMLI', '2233', NULL, 'Planlama', 'İmar ve Şehircilik', NULL, NULL),
(149, 'Hasan SARI', '2234', NULL, 'Planlama ', 'İmar ve Şehircilik', NULL, NULL),
(150, 'Hakan YANAL', '2241', '', 'Kamulaştırma / Koordinasyon', 'İmar ve Şehircilik', '', ''),
(151, 'Murat AĞIRLAR', '2251', NULL, 'Harita ', 'İmar ve Şehircilik', NULL, NULL),
(152, 'Bayram Ali ERSÖZ', '2252', '', 'Harita Birimi', 'İmar ve Şehircilik', '', ''),
(153, 'Şamil KARA', '2253 -', '', 'Harita', 'İmar ve Şehircilik', '', ''),
(154, 'Emin OKUR', '2221', '', 'Ruhsat', 'İmar ve Şehircilik', '', ''),
(155, 'Furkan DEMİR', '2262', '', 'Yapı Denetim ', 'İmar ve Şehircilik', '', ''),
(156, 'Alper Utku ÇETİNEL', '2263', NULL, 'Yapı Denetim ', 'İmar ve Şehircilik', NULL, NULL),
(157, 'Hüseyin UYGUÇ', '2264', NULL, 'Yapı Denetim ', 'İmar ve Şehircilik', NULL, NULL),
(158, 'Cengiz KUŞ', '2271', NULL, 'Numarataj ', 'İmar ve Şehircilik', NULL, NULL),
(159, 'Nazife SARI', '2223', '', 'Ruhsat', 'İmar ve Şehircilik', '', ''),
(160, 'Atıf SUNGUROĞLU', '2273', NULL, 'Numarataj ', 'İmar ve Şehircilik', NULL, NULL),
(161, 'M. Kemal TURAN', '2274', NULL, 'Numarataj ', 'İmar ve Şehircilik', NULL, NULL),
(163, 'Uğur ARIKAN', '3020 - 3022', '0555 184 70 09', 'AR-GE ', 'Araştırma ve Geliştirme Müdürlüğü', 'Büro Personeli', ''),
(169, 'Ali ÇINAR', '1072', '', 'İcra', 'Mali Hizmetler', '', ''),
(171, 'Arzu KALAY', '5050', '', 'Yazı İşleri', 'Yazı İşleri', '', ''),
(174, 'Zeynep UYSAL', '1038', '', 'Borç Yoktur', 'Mali Hizmetler', '', ''),
(175, 'İlyas ÇEŞMELİ', '1038', NULL, 'Borcu Yoktur', 'Mali Hizmetler', NULL, NULL),
(177, 'Cüneyd UYSAL', '1035', NULL, 'Emlak', 'Mali Hizmetler', NULL, NULL),
(179, 'Ali Oğuzhan ÖZDEMİR', '1073', NULL, 'İcra', 'Mali Hizmetler', NULL, NULL),
(180, 'Yüksel İPLİ', '1074', NULL, 'İcra', 'Mali Hizmetler', NULL, NULL),
(181, 'Saim EKİZ', '1073', NULL, 'İcra', 'Mali Hizmetler', NULL, NULL),
(183, 'Nisa Nur KICALI', '3092', NULL, 'İletişim ', 'Basın Yayın ve Halkla İlişkiler', NULL, NULL),
(184, 'Gözde DÖLEK', '1000', '05', 'Santral', 'Basın Yayın ve Halkla İlişkiler Müdürlüğü', 'Santral Görevlisi', ''),
(185, 'Bayram YILDIRIM', '2260', '05', 'Yapı Denetim', 'İmar ve Şehircilik Müdürlüğü', 'Personel', ''),
(186, 'Hasan Akırdağ', '2025', '05', '', 'Fen İşleri', 'Müdür', ''),
(188, 'Selçuk ÇİFTÇİ', '6031', '05', 'KUMKUYU İMAR A.Ş.', 'KUMKUYU İMAR A.Ş.', '', ''),
(189, 'Halil YILDIRIM', '6031', '05', 'KUMKUYU İMAR A.Ş.', 'KUMKUYU İMAR A.Ş.', '', ''),
(191, 'Nazan ERDEM', '2222', '', 'Yapı Ruhsat', 'İmar ve Şehircilik', '', ''),
(193, 'Cihat KÖKTEBİR', '2251', '05', 'Harita Birimi', 'İmar ve Şehircilik Müd.', '', ''),
(194, 'Serkan GÖKSEL', '2211', '05', 'Harita Birimi', 'İmar ve Şehircilik Müd.', '', ''),
(195, 'Murat SEZER', '5053', '', 'YAZI İŞLERİ', 'YAZI İŞLERİ', '', ''),
(196, 'Ebru IŞIKELİ', '2082', '', 'Fen İşleri', 'Fen İşleRİ', '', ''),
(197, 'Zeliha ÖZDEMİR', '1036', '05', 'Beyana Çağrı', 'Mali HİZMETLER', '', ''),
(198, 'Serkan GÜCER', '1036', '05', 'Beyana Çağrı', 'Mali HİZMETLER', '', ''),
(199, 'Çay OCAĞI', '1011', '05', '', '', '', ''),
(200, 'Vera Nur ÖZDEMİR', '5015', '05', '', 'Özel Kalem Müdürlüğü', '', ''),
(201, 'Muhiddin ÖZSU', '3052', '', 'Bilgi İşlem ', '', '', ''),
(202, 'Hasan Emre ASLAN', '2042', '', 'İklim Değişikliği ve Sıfır Atık ', 'İklim Değişikliği ve Sıfır Atık ', '', ''),
(203, 'PARK BAHÇE', '2062', '05', 'PARK BAHAÇE', 'PARK BAHÇE', '', ''),
(204, 'Neşe SEYREK', '3061', '05', 'Ruhsat Denetim Servisi', 'Ruhsat Denetim Servisi', '', ''),
(205, 'Duriye GEÇİT', '3061', '05', 'Muhtarlık İşleri Müdürlüğü', 'Muhtarlık İşleri Müdürlüğü', '', ''),
(206, 'Naim YILMAZ', '2040', '', 'İklim Değişikliği ve Sıfır Atık', 'İklim Değişikliği ve Sıfır Atık', 'Müdür', ''),
(207, 'Sinan KOŞAK', '2083', '05', 'Fen İşleri', 'Fen İşleri', '', ''),
(209, 'Ali KOÇ - Serhat GÜLEÇ', '4051', '05', 'İşletme ve İştirakler Müdürlüğü', 'İşletme ve İştirakler Müdürlüğü', '', ''),
(210, 'Coşkun AK', '4044', '05', 'Mali Hizmetler Birimi', 'Mali Hizmetler', '', ''),
(212, 'Mehmet ÇAT - Gökhan SUPHİ', '4052', '05', 'İşletme ve İştirakler Müdürlüğü', 'İşletme ve İştirakler Müdürlüğü', '', ''),
(213, 'Filiz BALCI', '1003', '05', 'Danışma', 'Basın Yayın ve Halkla İlişkiler', '', ''),
(214, 'Durdu Songül MUTLU', '1003', '05', 'Danışma', 'Basın Yayın ve Halkla İlişkiler', '', ''),
(215, 'Bilge AYDIN', '2104', '05', 'İhale', 'Fen İşleri', '', ''),
(216, 'Hasan  ÜZER', '2101', '05', 'Satın Alma', 'Fen İşleri', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kul_id` int(11) NOT NULL,
  `kul_isim` varchar(200) DEFAULT NULL,
  `kul_mail` varchar(200) DEFAULT NULL,
  `kul_sifre` varchar(100) DEFAULT NULL,
  `kul_telefon` varchar(100) DEFAULT NULL,
  `kul_yetki` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kul_id`, `kul_isim`, `kul_mail`, `kul_sifre`, `kul_telefon`, `kul_yetki`) VALUES
(2, 'Erdemli Belediyesi', 'arge@erdemli.bel.tr', 'e10adc3949ba59abbe56e057f20f883e', '3022', 1),
(3, 'Erdemli Belediyesi', 'bilgi@erdemli.bel.tr', 'e10adc3949ba59abbe56e057f20f883e', '3050', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `mesaj_id` int(11) NOT NULL,
  `mesaj_gonderen` int(11) DEFAULT NULL,
  `mesaj_detay` text,
  `mesaj_eklenme_tarih` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kisiler`
--
ALTER TABLE `kisiler`
  ADD PRIMARY KEY (`kisi_id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kul_id`);

--
-- Tablo için indeksler `mesajlar`
--
ALTER TABLE `mesajlar`
  ADD PRIMARY KEY (`mesaj_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kisiler`
--
ALTER TABLE `kisiler`
  MODIFY `kisi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `mesaj_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
