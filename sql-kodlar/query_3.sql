--Basit olmayan sql ifadeleri tablolarda işlemler

update  personel set unvan_id=1  where ad='Ahmet' and soyad='Akıl';

update personel set maas=(select avg(maas) from personel where personel_id<5 )+maas/2 where soyad='Kaygusuz';

update personel set unvan_id=3 where ad='Ahmet' or ad Like  '%a%';

update personel set unvan_id=(select unvan_id from unvan where unvan='Müdür') where soyad like '%a%';

SELECT * FROM personel INNER JOIN unvan ON personel.unvan_id = unvan.unvan_id;

select count(soyad)  kisiSayisi  , soyad   from personel   group by soyad having count(soyad)=3;

select *  from personel full outer join unvan on personel.unvan_id=unvan.unvan_id;

DELETE FROM personel WHERE personel_id=(select unvan_id from unvan where  unvan='Müdür');

DELETE FROM personel WHERE personel_id=(select unvan_id from unvan where  unvan='Kasiyer' and maas>20000 and soyad like '_a%');

ALTER TABLE personel ADD cinsiyet varchar(1);

ALTER TABLE personel ALTER COLUMN cinsiyet  type char(5);

ALTER TABLE personel DROP COLUMN cinsiyet;

--ALTER TABLE fatura ADD ödeme_türü varchar(40) not null;

--alter table fatura add personel_id int references personel(personel_id);

--alter table fatura add musteri_id int references musteri(musteri_id);

--alter table siparis add fatura_id int references fatura(fatura_id);

--alter table musteri add adres_id int references adres(adres_id);

--alter table siparis add musteri_id int references musteri(musteri_id);

--alter table siparis add siparis_durum_id int references siparisdurum (siparis_durum_id);

--alter table personel add unvan_id int references unvan (unvan_id);

--alter table personel add adres_id int references adres (adres_id);

--alter table personel add sube_id int references sube(sube_id);

--alter table siparis add personel_id int  references personel(personel_id);

--alter table sube add adres_id int references adres(adres_id);
