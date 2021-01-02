--View işlemleri

-----------------------------------------------------------------------------------------------

--personellerin ad ,soyad ve maas bilgileri ile birlikte hangi subede calıstıklarını düşük maastan yüksek maas göre ve subelerin hangi adreste bulundukları listeleyen view
create view vw_personel_sube
as
select p.ad,
       p.soyad,
       p.maas,
       sube.sube_ad,
       sube.telefon ,
       adres.adres_id
  from personel p 
    inner join sube on sube.sube_id=p.personel_id 
    inner join adres on adres.adres_id=sube.sube_id 
 order by p.maas ;

-----------------------------------------------------------------------------------------------

--view silme
--drop view vw_personel_sube;

-----------------------------------------------------------------------------------------------

--Müsterilerin fatura bilgilerini ve hangi personel tarafindan yapıldıgını ve nakit yada kart şeklinde ödeme yapanların 
--tutarlarına göre sağladıgı kazanç oranını listeleyen view'dir.
create view vw_fatura_musteri_personel
as
select 
	fatura.odenecek_tutar as tutar,
	fatura.ödeme_türü as ödeme,
	CASE
        WHEN fatura.odenecek_tutar >0 and fatura.odenecek_tutar<=100 THEN 'düşük kazanç'
 		WHEN fatura.odenecek_tutar >100 and fatura.odenecek_tutar<500 THEN 'iyi kazanç'
		WHEN fatura.odenecek_tutar >500  THEN 'mükemmel kazanç'
        END AS kazaç,
	personel.ad as personelAd,
	personel.soyad as personelSoyad,
	musteri.ad as musteriAd,
	musteri.soyad as musteriSoyad
from fatura 
		inner join personel on personel.personel_id=fatura.personel_id 
		inner join musteri on musteri.musteri_id=fatura.musteri_id 
	where fatura.ödeme_türü='nakit' or fatura.ödeme_türü='kart'
	order by fatura.odenecek_tutar;

-----------------------------------------------------------------------------------------------

--personel tablosunda cinsiyetleri sayan view
create view vw_cinsiyet
as 
SELECT
       SUM(CASE cinsiyet WHEN 'erkek' THEN 1  ELSE 0   END) "Erkek",
       SUM(CASE cinsiyet WHEN 'kadın' THEN 1  ELSE 0   END) "Kadın"
FROM personel;

