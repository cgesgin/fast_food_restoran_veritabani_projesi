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
