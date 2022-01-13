-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 10 Oca 2022, 20:18:37
-- Sunucu sürümü: 8.0.17
-- PHP Sürümü: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keyword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_autor` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_title`, `ayar_description`, `ayar_keyword`, `ayar_autor`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/31849as2.png', 'EngLeng Shopping', 'Her Türlü Ürün Satışı EngLeng ', 'urun,yuzuk,forma,alısveris,para,odeme,sapka,pırlan', 'Engin Gültekin  ( EngLeng Kurum CEOsu )', '0312 531 61 10', '0531 481 03 00', '0850 840 80 76', 'engingultekin839@gmail.com', 'Gölbası', 'Ankara', '312.Sk. Bahçelievler Evler Mah.  ', '7/24 Acık Alışveriş Sitesi', 'maps_api', 'analystic_api', 'zopim_api', 'www.facebook.com', 'www.twitter.com', 'www.google.com', 'www.youtube.tr.com', 'mail.alanadiniz.com', 'EngLeng1071', 'password', '587', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapadsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapadsoyad`, `banka_durum`) VALUES
(1, 'İş Bankası', 'TR66 0001 0002 0012  56', 'Engin Gültekin', '1'),
(2, 'Garanti Bankası', 'TR12 0021 0054 1542 85', 'Deniz Kurtuluş', '1'),
(3, 'TC Ziraat Bankası', 'TR99 5002 5421 0034 35', 'Volkan Demir', '1'),
(5, 'Yapı Kredi', 'TR08 0020 0034 0045 65', 'Engin Gültekin', '1'),
(6, 'HalkBank', 'TR45 0025 2458 6500 01', 'Engin Gültekin', '1'),
(7, 'AkBank', 'TR08 0020 0034 0045 65', 'Engin Gültekin', '1'),
(8, 'FinansBank', 'TR08 0020 0034 0045 65', 'Engin Gültekin', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'EngLeng San. ve Tic. A.Ş.', '<h2><strong>EngLeng Akademi ile PHP_S&uuml;r&uuml;m&uuml; Kullanarak E-Ticaret Sitesi </strong>Geliştirme,Oluşturma,Yeniden Yapılandırma işlemleri ile Hizmet Vermekteyiz</h2>\r\n\r\n<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yaratıcı &Ccedil;&ouml;z&uuml;mler</h3>\r\n\r\n<p>E-Ticaret ile Yaşam, şirketinizin en karmaşık sorunlarını &ccedil;&ouml;zmenizde size <img alt=\"\" src=\"https://dinamikwebtasarim.com/wp-content/uploads/2021/06/e-ticaret-sitesi-isim-onerileri.jpg\" style=\"float:right; height:110px; width:150px\" />yardımcı olacak kapsamlı becerilere ve derin bir sekt&ouml;r bilgisine sahiptir. Kurulduğumuz 2017&nbsp;yılından bu yana, bizimle tekrar &ccedil;alışmak isteyen veya ilk kez &ccedil;alışmak i&ccedil;in kapımızı &ccedil;alan m&uuml;şterilerin sayısı her yıl daha da artıyor.</p>\r\n\r\n<p>E-Ticaretin ve Dijital Pazarlamanın g&uuml;c&uuml;n&uuml; bilen m&uuml;şterilerimize uluslararası E-Ticaret sitelerinde danışmanlık hizmeti sunuyoruz. Mağaza hesap a&ccedil;ılımları, &ouml;deme alma sisteminin kurulması , &uuml;r&uuml;nlerin&nbsp;y&uuml;klenmesi&nbsp;ve kargolama s&uuml;re&ccedil;leri&nbsp;dahil bir&ccedil;ok konuda sizlerle birlikte&nbsp;&ccedil;alışıyoruz. Sosyal Medya Y&ouml;netimi, Dijital Pazarlama ve PR Danışmanlığı&nbsp;hizmetlerimiz&nbsp;ile marka bilinirliğinizi sosyal platformlarda &ouml;ne &ccedil;ıkararak , kitlenizi ve m&uuml;şteri portf&ouml;y&uuml;n&uuml;z&uuml; genişletiyoruz.</p>\r\n\r\n<p>E-Ticaret ile Yaşam deneyimini bizzat yaşamak ister misiniz? Sizin i&ccedil;in neler yapabileceğimizi g&ouml;r&uuml;şmek &uuml;zere hemen bizi arayın.</p>\r\n\r\n<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; İletişime Ge&ccedil;in</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'GRxofEmo3HA', 'EngLeng San. ve Tic. A.Ş. olarak sizin için geliştiriyoruz sizlerle beraber büyüyoruz görkemli geleceklere', 'EngLeng San. ve Tic. A.Ş. Misyonumuz sizlere daha önce karşılaşmadığınız  hizmeti ve kaliteyi tek tıkla ulaştımrkatır'),
(1, 'EngLeng San. ve Tic. A.Ş.', '<h2><strong>EngLeng Akademi ile PHP_S&uuml;r&uuml;m&uuml; Kullanarak E-Ticaret Sitesi </strong>Geliştirme,Oluşturma,Yeniden Yapılandırma işlemleri ile Hizmet Vermekteyiz</h2>\r\n\r\n<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Yaratıcı &Ccedil;&ouml;z&uuml;mler</h3>\r\n\r\n<p>E-Ticaret ile Yaşam, şirketinizin en karmaşık sorunlarını &ccedil;&ouml;zmenizde size <img alt=\"\" src=\"https://dinamikwebtasarim.com/wp-content/uploads/2021/06/e-ticaret-sitesi-isim-onerileri.jpg\" style=\"float:right; height:110px; width:150px\" />yardımcı olacak kapsamlı becerilere ve derin bir sekt&ouml;r bilgisine sahiptir. Kurulduğumuz 2017&nbsp;yılından bu yana, bizimle tekrar &ccedil;alışmak isteyen veya ilk kez &ccedil;alışmak i&ccedil;in kapımızı &ccedil;alan m&uuml;şterilerin sayısı her yıl daha da artıyor.</p>\r\n\r\n<p>E-Ticaretin ve Dijital Pazarlamanın g&uuml;c&uuml;n&uuml; bilen m&uuml;şterilerimize uluslararası E-Ticaret sitelerinde danışmanlık hizmeti sunuyoruz. Mağaza hesap a&ccedil;ılımları, &ouml;deme alma sisteminin kurulması , &uuml;r&uuml;nlerin&nbsp;y&uuml;klenmesi&nbsp;ve kargolama s&uuml;re&ccedil;leri&nbsp;dahil bir&ccedil;ok konuda sizlerle birlikte&nbsp;&ccedil;alışıyoruz. Sosyal Medya Y&ouml;netimi, Dijital Pazarlama ve PR Danışmanlığı&nbsp;hizmetlerimiz&nbsp;ile marka bilinirliğinizi sosyal platformlarda &ouml;ne &ccedil;ıkararak , kitlenizi ve m&uuml;şteri portf&ouml;y&uuml;n&uuml;z&uuml; genişletiyoruz.</p>\r\n\r\n<p>E-Ticaret ile Yaşam deneyimini bizzat yaşamak ister misiniz? Sizin i&ccedil;in neler yapabileceğimizi g&ouml;r&uuml;şmek &uuml;zere hemen bizi arayın.</p>\r\n\r\n<h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; İletişime Ge&ccedil;in</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'GRxofEmo3HA', 'EngLeng San. ve Tic. A.Ş. olarak sizin için geliştiriyoruz sizlerle beraber büyüyoruz görkemli geleceklere', 'EngLeng San. ve Tic. A.Ş. Misyonumuz sizlere daha önce karşılaşmadığınız  hizmeti ve kaliteyi tek tıkla ulaştımrkatır');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'Ayakkabılar', 0, 'ayakkabilar', 1, '1'),
(2, 'Şapka\r\n', 0, 'bluz', 3, '1'),
(3, 'Saatler', 0, '', 5, '1'),
(4, 'Pantolon', 0, 'pantolon', 6, '1'),
(6, 'Tişörtler', 0, 'tisortler', 8, '1'),
(8, 'Aksesuarlar', 0, 'aksesuarlar', 2, '1'),
(9, 'Forma', 0, 'forma', 4, '1'),
(12, 'Camera', 0, 'Camera', 7, '1'),
(13, 'Cep Telefonu', 0, 'Pırlanta', 9, '1'),
(14, 'Pırlanta Yüzük', 0, 'pantolon', 10, '1'),
(15, 'Makyaj Malzemeleri', 0, 'tisortler', 11, '1'),
(16, 'Altın Setler', 0, 'aksesuarlar', 12, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(1, '2021-12-09 09:43:31', '', '48756542301', 'EngLeng', 'engleng@gmail.com', '05347810600', '81dc9bdb52d04dc20036dbd8313ed055', 'Engin Leng (Admin) ', '', '', '', '', '5', 1),
(5, '2021-12-22 10:39:55', '', '', '', 'engin@gmail.con', '', '202cb962ac59075b964b07152d234b70', 'Engin Gültekin', '', 'Ankara', 'Gölbaşı', '', '1', 1),
(8, '2021-12-22 10:55:45', '', '5562212442', '', 'eng@gmail.com', '', '19ca14e7ea6328a42e0eb13d585e4c22', 'Volkan Kurtuluş', '', '', '', '', '1', 1),
(12, '2022-01-10 15:05:20', '', '', '', 'engleng_ceo@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', 'EngLeng CEO', '', '', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda ', '', 'hakkimizda.php', 1, '1', ''),
(2, '0', 'İletişim', '<h3><strong>EngLeng San. ve Tic. A.Ş.</strong></h3>\r\n\r\n<p><strong>EngLeng şirketi olarak m&uuml;şteri memnuniyeti bizim i&ccedil;in her şeyden &ouml;nceliklidir, bu nedenle aşağıdaki iletişim bilgilerimizden her hangi bir istek , sipariş , </strong><strong>&ouml;neri , şikayet veya benzeri durumlar farketmeksizin 7/24 canlı destek ile beraber bize ulaşabilirsiniz. Kalitei hizmet ve &uuml;r&uuml;nlerin tek adresi EngLeng A.Ş. sizler i&ccedil;in geliştiriyoruz sizinle b&uuml;y&uuml;yoruz ...</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Gsm: 0 (531) 481 03 00</p>\r\n\r\n<p>E-mail: engingultekin1071@gmail.com</p>\r\n\r\n<p>Facebook: www.google.facebook.com</p>\r\n\r\n<p>Instegram: www.google.ınstegram.com</p>\r\n\r\n<p>Linkedin : www.google.linkedin.com</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Canlı Destek , hattına bağlanmak i&ccedil;in aşağıdaki numaraya mesaj atmanız ya da &ccedil;aldır kapat yapmanız size geri d&ouml;n&uuml;ş yapmamız i&ccedil;in yeterlidir.</p>\r\n\r\n<p>Canlı Destek Hattı : 0 (531) 481 03 00</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>İletişim bilgileri m&uuml;şteri temsilcisi m&uuml;d&uuml;r&uuml; ayrıca Şirketin CEO&#39;su olan &nbsp;&nbsp;</p>\r\n\r\n<p>&#39; Engin G&uuml;ltekin &#39; ne&nbsp; aittir...</p>\r\n\r\n<p>Aramaktan &ccedil;ekinmeyin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://4.bp.blogspot.com/-tWEr18XP0Ek/VsHfNk_mubI/AAAAAAAAAQ8/USvkhHcZRt0/s1600/facebook_15-2_1%2B%25282%2529.png\" style=\"height:446px; width:850px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'menudetay.php', 2, '1', ''),
(3, '0', 'Kategoriler', '', 'kategoriler.php', 3, '1', ''),
(4, '', 'Gizlilik Koşulları', '<p>Amacımız mahremiyetinizi ve İnternet &uuml;zerinden bize sunduğunuz bilgileri korumaktır. PepsiCo bu internet sitesini Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin Purchase şehrindeki ofisinden işletmektedir. Bu internet sitesiyle ilgili b&uuml;t&uuml;n konular Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin kanunlarına tabidir ve onlar kapsamında yorumlanır.</p>\r\n\r\n<p>Bu internet sitesine erişerek bu Gizlilik Koşulları&rsquo;nı ve bu siteye yazılmış Kullanım Şartları&rsquo;nı kabul ettiğinizi belirtirsiniz.</p>\r\n\r\n<p>Bu internet sitesi 13 yaşın altındaki &ccedil;ocuklara y&ouml;nelik değildir ve sitede 13 yaşın altındaki &ccedil;ocuklardan bilerek kişisel bilgi toplamayız. Eğer sitede kasıtsız olarak 13 yaşın altındaki bir ziyaret&ccedil;inin kişisel bilgilerini aldığımızın farkına varırsak, bu bilgileri kayıtlarımızdan sileriz.</p>\r\n\r\n<p>Diğer Sitelere Bağlantı Verme&nbsp;<br />\r\nBu politika www.PepsiCo.com&rsquo;u (PepsiCo&rsquo;nun kurumsal internet sitesini) kapsar. İştiraklerimizden ve/veya programlarımızdan bazıları kendi, muhtemelen farklı politikalarını kendi internet sitelerine yazabilirler. Sizi o internet sitelerine bağlantı verirken o politikaları g&ouml;zden ge&ccedil;irmeye teşvik ediyoruz.</p>\r\n\r\n<p>Topladığımız bilgiler ve onları kullanım şeklimiz&nbsp;<br />\r\nKişisel Bilgiler &ndash; Bu internet sitesinde kişisel bilgiler (isminiz, adresiniz, telefon numaranız ve e-posta adresiniz gibi) verebilirsiniz. Bilgileri vermek i&ccedil;in kullanabileceğiniz bazı y&ouml;ntemler ve verebileceğiniz bilgi tipleri aşağıdadır. Size bilgiyi nasıl kullanabileceğimizi de a&ccedil;ıklayacağız.</p>\r\n\r\n<p>Bizimle İrtibat Kurun- Sitedeki &ldquo;Bizimle İrtibat Kurun&rdquo; bağlantısından bize e-posta g&ouml;nderirseniz sorularınıza ve yorumlarınıza cevap verebilmek i&ccedil;in sizden isminiz ve e-posta adresiniz gibi bilgiler isteriz. İlave bilgiler de verebilirsiniz.</p>\r\n\r\n<p>İ&ccedil;eriği Bir Arkadaşa Yolla &ndash; Bazı i&ccedil;erikleri arkadaşlarınıza yollayabilirsiniz. Bunu yapmak i&ccedil;in sizden isminizi ve arkadaşınızın e-posta adresini vermenizi isteriz. Bu bilgiyi i&ccedil;eriği arkadaşınıza yollamak i&ccedil;in kullanırız.</p>\r\n\r\n<p>Internet Protokol&uuml; Adresi&nbsp;<br />\r\nSitemizin b&uuml;t&uuml;n ziyaret&ccedil;ilerinin İnternet Protokol&uuml; adreslerini toplarız. IP adresinizi sitemizi y&ouml;netmemize yardımcı olmak i&ccedil;in kullanırız. IP adresiniz sitemizi ne zaman ziyaret ettiğinizi belirlemek i&ccedil;in de kullanılır.</p>\r\n\r\n<p>Paylaştığımız Bilgiler&nbsp;<br />\r\nİnternet sitemizin ziyaret&ccedil;ileri hakkındaki kişisel bilgileri burada a&ccedil;ıklanan haller haricinde satmayız ya da başka bir suretle a&ccedil;ıklamayız. Bu sitenin ziyaret&ccedil;ilerinin sağladığı bilgileri adımıza hizmetler y&uuml;r&uuml;tmek i&ccedil;in tuttuğumuz hizmet sağlayıcılarla paylaşabiliriz. Bu hizmet sağlayıcıların adımıza hizmetler y&uuml;r&uuml;tmek ya da yasal gereksinimlere uymak i&ccedil;in gerekli olan haller dışında bu bilgileri kullanmaları ya da a&ccedil;ıklamaları yasaktır. Ek olarak, (i) kanunen ya da yasal bir s&uuml;re&ccedil; nedeniyle a&ccedil;ıklamamız gerekiyorsa, (ii) emniyet g&ouml;revlilerine ya da diğer devlet yetkililerine (iii) a&ccedil;ıklamanın fiziksel hasarı veya mali kaybı &ouml;nlemek veya ş&uuml;pheli veya ger&ccedil;ek yasadışı faaliyete ilişkin bir soruşturmayla ilişkili olarak gerekli veya uygun olduğunu d&uuml;ş&uuml;nd&uuml;ğ&uuml;m&uuml;z zaman hakkınızdaki bilgileri a&ccedil;ıklayabiliriz.</p>\r\n\r\n<p>Şirketimizin ya da varlıklarımızın tamamını ya da bir kısmını satmamız ya da devretmemiz halinde hakkınızdaki bilgileri devretme hakkını saklı tutarız. B&ouml;yle bir satış ya da devir meydana gelirse, devralanı bu internet sitesinden verdiğiniz kişisel bilgileri bu Gizlilik Koşulları&rsquo;na uygun bir şekilde kullanmaya teşvik etmek i&ccedil;in makul &ccedil;aba g&ouml;stereceğiz.</p>\r\n\r\n<p>Aktardığımız Bilgiler&nbsp;<br />\r\nBu sitede topladığımız kişisel bilgileri iş yaptığımız diğer &uuml;lkelere aktarabiliriz, ama bunu sadece yukarıda a&ccedil;ıklanmış ama&ccedil;larla yapacağız. Bilgilerinizi diğer &uuml;lkelere aktardığımız zaman uygulanabilen kanunlar aksini gerektirmediği s&uuml;rece o bilgiyi burada a&ccedil;ıklandığı gibi koruyacağız.</p>\r\n\r\n<p>Kişisel Bilgiyi Nasıl Koruyoruz?&nbsp;<br />\r\nBu internet sitesinden verdiğiniz kişisel bilgileri yetkisiz a&ccedil;ıklanmaya, kullanıma, değiştirmeye ya da tahribata karşı korumak i&ccedil;in idari, teknik ve fiziksel tedbirler uyguluyoruz. Bu sitede verdiğiniz kişisel bilgilerin g&uuml;venli kalması i&ccedil;in G&uuml;venli Şifreleme Protokol&uuml; (SSL) teknolojisini kullanıyoruz.</p>\r\n\r\n<p>Gizlilik Beyanımızın G&uuml;ncellemeleri&nbsp;<br />\r\nBu Gizlilik Beyanı &ccedil;evrimi&ccedil;i bilgi uygulamalarımızdaki değişiklikleri yansıtması i&ccedil;in periyodik olarak ve &ouml;nceden size haber verilmeden g&uuml;ncellenebilir. Gizlilik Beyanımızdaki &ouml;nemli değişiklikleri size bildirmek i&ccedil;in bu internet sitesine bir bildirim yazacak ve en son ne zaman g&uuml;ncellendiğini belirteceğiz.</p>\r\n\r\n<p>Bizimle İrtibat Kurma&nbsp;<br />\r\nEğer bu Gizlilik Beyanı hakkında sorularınız veya yorumlarınız varsa veya siz ya da tercihleriniz hakkındaki bilgileri g&uuml;ncellememizi istiyorsanız l&uuml;tfen aşağıda listelenen adreslerden ya da telefon numaralarından biri vasıtasıyla bizimle irtibat</p>\r\n', 'menudetay.php', 4, '1', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(19, 0, 11, 1),
(28, 0, 10, 1),
(29, 0, 10, 1),
(30, 5, 10, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_banka` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_toplam`, `siparis_tip`, `siparis_banka`, `siparis_odeme`) VALUES
(480010, '2022-01-10 10:54:35', NULL, 5, 2490.00, 'Banka Havalesi', 'Garanti Bankası', '0'),
(480011, '2022-01-10 11:14:02', NULL, 5, 6994.00, 'Banka Havalesi', 'Garanti Bankası', '0'),
(480012, '2022-01-10 17:47:50', NULL, 5, 4703.95, 'Banka Havalesi', 'TC Ziraat Bankası', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(13, 480010, 10, 1245.00, 2),
(14, 480011, 10, 1245.00, 1),
(15, 480011, 11, 5624.00, 1),
(16, 480011, 9, 125.00, 1),
(17, 480012, 6, 125.00, 2),
(18, 480012, 10, 1245.00, 3),
(19, 480012, 3, 469.00, 1),
(20, 480012, 4, 49.99, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(7, 'Galatasaray Forması', 'dimg/slider/30126271102609531958gal.png', 1, '', '1'),
(8, 'Hatay Spor Forması', 'dimg/slider/29102283572971220073hatay.png', 2, '', '1'),
(9, 'Deri Ceket', 'dimg/slider/26446252432952222612slide-1.jpg', 3, '', '1'),
(10, 'Nike Airbax', 'dimg/slider/23911298092636023681ayakkabı.png', 4, '', '1'),
(11, 'Kapşonlu Mont', 'dimg/slider/30420311792906824508slide-2.jpg', 5, '', '1'),
(12, 'Nike Spor Ayakkabı', 'dimg/slider/30770310922084321504slide-3.jpg', 6, '', '1'),
(13, 'Gümüş Yüzük', 'dimg/slider/25718291102875420524slide-4.jpg', 7, '', '1'),
(14, 'Puf Mont', 'dimg/slider/29082227523175927400mont.png', 8, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1',
  `urun_onecikan` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikan`) VALUES
(2, 1, '2021-12-22 15:48:53', 'Rugan Kundura ', 'kategoriler.php', 'İç dış Deri Kaplama kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane', 254.99, '', '', 75, '1', '1'),
(3, 3, '2021-12-22 16:10:43', 'Saat', 'kategoriler.php', 'Dışı gümüş kaplama içi özel metallerle tasarlanmış mekanik su geçirmez saat kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane', 469, '', 'Lux', 423, '1', '0'),
(4, 2, '2021-12-22 16:11:20', 'Şapka', 'kategoriler.php', 'Erkek ve Kadınlar için uygun  unisex mükemmel Bluzlar kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane', 49.99, '', 'sap', 756, '1', '0'),
(6, 9, '2021-12-22 15:48:53', 'GS Forması', 'kategoriler.php', 'Orjinal Galatasaray forması GSstoredan daha ucuza alıp sizlerle bedava kargo aracılığı ile buluştuuyoruz gerçek Galatasaraylılar bu Fırsatı Asla kaçırmazlar  kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane', 125, 'IeoIqsUTqsA', 'gal', 155, '1', '0'),
(7, 9, '2021-12-22 16:10:43', 'FB Forması', 'kategoriler.php', 'Orjinal Fenerbahçe forması FBstoredan daha ucuza alıp sizlerle bedava kargo aracılığı ile buluştuuyoruz gerçek Fenerbahçeliler bu Fırsatı Asla kaçırmazlar  kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane', 125, '', 'fer', 423, '1', '1'),
(8, 9, '2021-12-22 16:11:20', 'BJK Forması', 'kategoriler.php', 'Orjinal Beşiktaş forması BJKstoredan daha ucuza alıp sizlerle bedava kargo aracılığı ile buluştuuyoruz gerçek Beşiktaşlılar bu Fırsatı Asla kaçırmazlar  kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane\r\n', 125, '', 'bes', 55, '1', '1'),
(9, 9, '0000-00-00 00:00:00', 'HS Forması', 'kategoriler.php', 'Orjinal Hatayspor forması HSstoredan daha ucuza alıp sizlerle bedava kargo aracılığı ile buluştuuyoruz gerçek Hataylılar bu Fırsatı Asla kaçırmazlar  kalitesine göre bedava sayılacak bir ürün kaçıran enayi kaçırmayan Akıllı Durma sende al birtane', 125, '', 'jkj', 55, '1', '0'),
(10, 12, '2022-01-08 11:23:40', 'Fotoğraf Makinesi', 'kategori.php', 'Full Donanımlı Efsane Mercekleriyle birlikte Her şeyi Sanki yanınızdaymış gibi gösteren göz gibi gören uzağı yakın edebilen sizin için özel tasarlanabilen 8 ayrı mercek yapısı bulunan bu ürünü sakın kaçırmayın aldığınzda yeni birtane sipariş edeceğinizde bu ürün çoktan tükenmiş olacaktır ', 1245, '', 'camera', 13, '1', '0'),
(11, 13, '2022-01-08 11:23:40', 'Cep Telefonu', 'kategori.php', 'Full Donanımlı Efsane Mercekleriyle birlikte Her şeyi Sanki yanınızdaymış gibi gösteren göz gibi gören uzağı yakın edebilen sizin için özel tasarlanabilen 8 ayrı mercek yapısı bulunan bu ürünü sakın kaçırmayın aldığınzda yeni birtane sipariş edeceğinizde bu ürün çoktan tükenmiş olacaktır ', 5624, '', 'telefon', 124, '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urunfoto_sira` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(1, 4, 'dimg/urun/01.jpg', 1),
(2, 4, 'dimg/urun/02.jpg', 2),
(3, 4, 'dimg/urun/03.jpg', 3),
(4, 4, 'dimg/urun/04.jpg', 4),
(5, 2, 'dimg/urun/08.jpg', 5),
(6, 2, 'dimg/urun/07.jpg', 6),
(7, 2, 'dimg/urun/06.jpg', 7),
(8, 2, 'dimg/urun/05.jpg', 8),
(9, 3, 'dimg/urun/11.jpg', 1),
(10, 3, 'dimg/urun/12.jpg', 2),
(11, 3, 'dimg/urun/09.jpg', 3),
(12, 3, 'dimg/urun/10.jpg', 4),
(13, 6, 'dimg/urun/15.jpg', 5),
(14, 6, 'dimg/urun/14.jpg', 6),
(15, 6, 'dimg/urun/16.jpg', 7),
(16, 6, 'dimg/urun/13.jpg', 8),
(17, 7, 'dimg/urun/18.jpg', 1),
(18, 7, 'dimg/urun/17.jpg', 2),
(19, 7, 'dimg/urun/19.jpg', 3),
(20, 7, 'dimg/urun/20.jpg', 4),
(21, 8, 'dimg/urun/24.jpg', 5),
(22, 8, 'dimg/urun/23.jpg', 6),
(23, 8, 'dimg/urun/22.jpg', 7),
(24, 8, 'dimg/urun/21.jpg', 8),
(25, 9, 'dimg/urun/28.jpg', 1),
(26, 9, 'dimg/urun/27.jpg', 2),
(27, 9, 'dimg/urun/26.jpg', 3),
(28, 9, 'dimg/urun/25.jpg', 4),
(29, 10, 'dimg/urun/29.jpg', 5),
(30, 10, 'dimg/urun/30.jpg', 6),
(31, 10, 'dimg/urun/31.jpg', 7),
(32, 10, 'dimg/urun/32.jpg', 8),
(33, 11, 'dimg/urun/34.jpg', 1),
(34, 11, 'dimg/urun/33.jpg', 2),
(35, 11, 'dimg/urun/35.jpg', 3),
(36, 11, 'dimg/urun/36.jpg', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_zaman`, `yorum_onay`) VALUES
(1, 5, 2, 'Harika Bir ürün aşık oldum', '2022-01-08 08:50:22', '1'),
(2, 5, 2, 'Harika Bir Cihaz \r\n', '2022-01-08 08:50:22', '0'),
(3, 5, 0, 'Mükemmel', '2022-01-08 08:53:28', '1'),
(4, 5, 9, 'Harika Bir ürün aşık oldum', '2022-01-08 08:50:22', '1'),
(5, 5, 9, 'Harika Bir Cihaz \r\n', '2022-01-08 08:50:22', '1'),
(6, 5, 8, 'Mükemmel', '2022-01-08 08:53:28', '1'),
(7, 5, 0, 'efsaneeeeeeee', '2022-01-08 09:09:18', '1'),
(8, 5, 9, 'Çok Kullanışlı ben çok beğendim herkese tavsiye ederim ama fiyatı biraz tuzlu ancak fiyatına gre kalitesi muazzam', '2022-01-08 09:53:32', '1'),
(9, 5, 10, 'İnanılması Zor bir makina Bayıldım\r\n', '2022-01-08 11:43:28', '1'),
(10, 5, 10, 'Gerçekmiş gibi her şey yanımda gibi geliyor bu muhteşem  bir şey daha çok alacaktım ama tükenmiş ', '2022-01-08 11:44:12', '1'),
(11, 5, 10, 'Ben Çok Beğendim ama bu kadar abartmaya gerek yok evet kullanışlı iyi bir ürün', '2022-01-08 11:46:02', '1'),
(12, 5, 5, 'Efsaneee formaaa\r\n', '2022-01-08 11:46:37', '1'),
(14, 5, 4, 'Mükemmel herkesin bahsettiği gibi çok iyi kullanışlı \r\n', '2022-01-09 15:36:58', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480013;

--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
