
-- postgresql de sequence(auto increment) sıfırlama işlemi 

delete from kategori where kategori_id>12;

ALTER SEQUENCE kategori_kategori_id_seq RESTART WITH 13;

insert into kategori (kategori_ad) values('veri');

select * from kategori;

--tablodaki en son kaydın id'ni döndöüren kod
INSERT INTO category (name) VALUES ('John') RETURNING category_id

--max id
select max(tablo_id) from tablo_ad;
