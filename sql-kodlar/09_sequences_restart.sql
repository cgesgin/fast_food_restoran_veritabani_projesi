
-- postgresql de sequence(auto increment) sıfırlama işlemi 

delete from kategori where kategori_id>12;

ALTER SEQUENCE kategori_kategori_id_seq RESTART WITH 13;

insert into kategori (kategori_ad) values('veri');

select * from kategori;
