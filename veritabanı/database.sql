-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 05 Oca 2023, 11:22:23
-- Sunucu sürümü: 8.0.30
-- PHP Sürümü: 8.1.10

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
  `id` int NOT NULL,
  `site_logo` varchar(400) DEFAULT NULL,
  `site_baslik` varchar(350) DEFAULT NULL,
  `site_aciklama` varchar(300) DEFAULT NULL,
  `site_duyuru` varchar(600) DEFAULT NULL,
  `site_link` varchar(100) DEFAULT NULL,
  `site_sahip_mail` varchar(100) DEFAULT NULL,
  `site_mail_host` varchar(100) DEFAULT NULL,
  `site_mail_mail` varchar(100) DEFAULT NULL,
  `site_mail_port` int DEFAULT NULL,
  `site_mail_sifre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `site_logo`, `site_baslik`, `site_aciklama`, `site_duyuru`, `site_link`, `site_sahip_mail`, `site_mail_host`, `site_mail_mail`, `site_mail_port`, `site_mail_sifre`) VALUES
(1, '298010favicon.png', 'Telefon Rehberi', 'Telefon Rehberi', '<p><strong>DUYURU!</strong>&nbsp;Duyuru Metniniz buraya gelecek.</p>\r\n', '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kisiler`
--

CREATE TABLE `kisiler` (
  `kisi_id` int NOT NULL,
  `kisi_isim` varchar(400) DEFAULT NULL,
  `kisi_dahili` varchar(400) DEFAULT NULL,
  `kisi_cep` varchar(20) DEFAULT NULL,
  `kisi_birim` varchar(200) DEFAULT NULL,
  `kisi_mudurluk` varchar(200) DEFAULT NULL,
  `kisi_meslek` varchar(200) DEFAULT NULL,
  `kisi_detay` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `kisiler`
--

INSERT INTO `kisiler` (`kisi_id`, `kisi_isim`, `kisi_dahili`, `kisi_cep`, `kisi_birim`, `kisi_mudurluk`, `kisi_meslek`, `kisi_detay`) VALUES
(1, 'Örnek Kişi 1', '3020', '05555555555', 'İnsan Kaynakları', 'İnsan Kaynakları', 'Sekreter', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kul_id` int NOT NULL,
  `kul_isim` varchar(200) DEFAULT NULL,
  `kul_mail` varchar(200) DEFAULT NULL,
  `kul_sifre` varchar(100) DEFAULT NULL,
  `kul_telefon` varchar(100) DEFAULT NULL,
  `kul_yetki` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`kul_id`, `kul_isim`, `kul_mail`, `kul_sifre`, `kul_telefon`, `kul_yetki`) VALUES
(1, 'Yönetici', 'admin@admin.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, 1),
(2, 'Editör', 'editor@editor.com', 'e10adc3949ba59abbe56e057f20f883e', '', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `mesajlar`
--

CREATE TABLE `mesajlar` (
  `mesaj_id` int NOT NULL,
  `mesaj_gonderen` int DEFAULT NULL,
  `mesaj_detay` text,
  `mesaj_eklenme_tarih` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kisiler`
--
ALTER TABLE `kisiler`
  MODIFY `kisi_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kul_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `mesajlar`
--
ALTER TABLE `mesajlar`
  MODIFY `mesaj_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
