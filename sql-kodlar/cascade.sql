
--Cascade işlemleri

ALTER TABLE personel DROP COLUMN unvan_id;
alter table personel add unvan_id int references unvan (unvan_id) on delete cascade;
select * from personel;

ALTER TABLE personel DROP COLUMN adres_id;
ALTER TABLE personel DROP COLUMN sube_id;

alter table personel add adres_id int references adres (adres_id) on delete cascade;
alter table personel add sube_id int references sube(sube_id) on delete cascade;

ALTER TABLE ürün_kategori DROP COLUMN ürün_id;
alter table ürün_kategori add ürün_id int references ürün (ürün_id) on delete cascade;

