--- tablolara veri eklenme işlemi

insert into adres  values(default,'istanbul','fatih','bakır','115',1); 
insert into adres  values(default,'Adana','çukurova','sarı','215',2); 
insert into adres  values(default,'Adıyaman','gölbaşı','aknaz','315',3); 
insert into adres  values(default,'Afyonkarahisar','Kızılören','gören','415',4); 
insert into adres  values(default,'Ağrı','Patnos','askılı','515',5); 
insert into adres  values(default,'Aksaray','Ağaçören','yakamoz','615',6); 
insert into adres  values(default,'Amasya','Merkez','zafer','715',7); 
insert into adres  values(default,'Ankara','Merkez','resim','815',8); 
insert into adres  values(default,'Antalya','Aksu','akar','915',9);
insert into adres  values(default,'Ardahan','Göle','sarık','1015',10); 

select  * from adres;
------------------------------------------------------------------------------

insert into kategori  values(default,'Hamburger'); 
insert into kategori  values(default,'Cheeseburger'); 
insert into kategori  values(default,'Sandwich'); 
insert into kategori  values(default,'Milk shake'); 
insert into kategori  values(default,'Büyük Boy'); 
insert into kategori  values(default,'Çocuk Boy'); 
insert into kategori  values(default,'Orta Boy'); 
insert into kategori  values(default,'Tatlılar'); 
insert into kategori  values(default,'İçecekler');
insert into kategori  values(default,'Pizza'); 
insert into kategori  values(default,'Ekstralar'); 
insert into kategori  values(default,'Tavuk'); 
insert into kategori  values(default,'Et'); 

select  * from kategori;
--------------------------------------------------------------------------------

insert into menü  values(default,'Big Hamburger Menü',1500,50 ); 
insert into menü  values(default,'Whopper Menü',562,30 ); 
insert into menü  values(default,'Rodeo Whopper Menü',960,37 ); 
insert into menü  values(default,'Double Whopper Menü',315,45 ); 
insert into menü  values(default,'Triple Whopper Menü',451,50); 
insert into menü  values(default,'Whopper Jr. Menü',647,14 ); 
insert into menü  values(default,'Mangalda Izgara Tavuk Menü',678,54 ); 
insert into menü  values(default,'BK Kral Burger Menü',182,74 ); 
insert into menü  values(default,'Tavuklu Barbekü Brioche Menü',147,35 );
insert into menü  values(default,'Mega Double Cheeseburger Menü',319,30 ); 

select * from menü;
------------------------------------------------------------------------------

insert into ürün  values(default,'Patates', 96.0); 
insert into ürün  values(default,'Coca Cola', 52); 
insert into ürün  values(default,'Fanta', 100.0); 
insert into ürün  values(default,'Ayran', 10.0); 
insert into ürün  values(default,'Çikolata', 98.0); 
insert into ürün  values(default,'Dondurma', 47.0); 
insert into ürün  values(default,'Orta Boy', 85.0); 
insert into ürün  values(default,'Tatlılar', 60.0); 
insert into ürün  values(default,'Süt', 70.0);
insert into ürün  values(default,'Kahve', 60.0); 

select * from ürün;
------------------------------------------------------------------------------

insert into sube  values(default,'istanbul',444); 
insert into sube  values(default,'antalya Cola', 445); 
insert into sube  values(default,'Adıyaman', 446); 
insert into sube  values(default,'Ankara', 447); 
insert into sube  values(default,'Ağrı', 448); 
insert into sube  values(default,'Aksaray', 449); 
insert into sube  values(default,'Amasya', 450); 
insert into sube  values(default,'Ardahan', 451); 
insert into sube  values(default,'Afyonkarahisar', 452);
insert into sube  values(default,'Aksaray', 453); 

select * from sube;
------------------------------------------------------------------------------

insert into personel values (default,'Ahmet','Akıl',121,141,'hotmail1',1500.25,'12.12.2020');
insert into personel values (default,'Mehmet','Zeka',122,142,'hotmail2',1550.25,'12.12.2020');
insert into personel values (default,'Cem','Verim',123,143,'hotmail3',1590.25,'12.12.2020');
insert into personel values (default,'Can','Baş',124,144,'hotmail4',1900.25,'12.12.2020');
insert into personel values (default,'Canan','Kara',125,145,'hotmail5',1507.25,'12.12.2020');
insert into personel values (default,'Cengiz','Salı',126,146,'hotmail6',1900.25,'12.12.2020');
insert into personel values (default,'Cemşit','Saz',127,147,'hotmail7',1990.25,'12.12.2020');
insert into personel values (default,'Cingöz','Sağ',128,148,'hotmail8',2500.25,'12.12.2020');
insert into personel values (default,'Aşi','Selim',129,149,'hotmail9',2502.25,'12.12.2020');
insert into personel values (default,'Veli','Ses',120,140,'hotmail10',1300.25,'12.12.2020');

select * from personel;
------------------------------------------------------------------------------


insert into unvan values (default,'Kasiyer');
insert into unvan values (default,'Aşçı');
insert into unvan values (default,'Aşçı yardımcısı');
insert into unvan values (default,'Temizlik görevlisi');
insert into unvan values (default,'Müdür');
insert into unvan values (default,'Bölge müdürü');
insert into unvan values (default,'Garson');
insert into unvan values (default,'Müfettiş');
insert into unvan values (default,'Stajyer');
insert into unvan values (default,'Kurye');

select * from unvan;
------------------------------------------------------------------------------

insert into siparisdurum values (default,'Hazır');
insert into siparisdurum values (default,'Yolda');
insert into siparisdurum values (default,'İptal');
insert into siparisdurum values (default,'Hazırlanıyor');
insert into siparisdurum values (default,'Teslim edildi');

select * from siparisdurum;
------------------------------------------------------------------------------

insert into musteri values (default , 'Can' , 'Can' , 0541,'hotmail1');
insert into musteri values (default , 'Veli' , 'Can' , 0542,'hotmail2');
insert into musteri values (default , 'Selim' , 'Cam' , 0543,'hotmail3');
insert into musteri values (default , 'Melis' , 'Van' , 0544,'hotmail4');
insert into musteri values (default , 'Elif' , 'Vali' , 0545,'hotmail5');
insert into musteri values (default , 'Aslı' , 'Pek' , 0546,'hotmail6');
insert into musteri values (default , 'Mahmut' , 'Sel' , 0547,'hotmail7');
insert into musteri values (default , 'Çakır' , 'Sakız' , 0548,'hotmail8');
insert into musteri values (default , 'Polat' , 'Yeşil' , 0549,'hotmail9');
insert into musteri values (default , 'Memoli' , 'Kara' , 0540,'hotmail10');


select * from musteri;
------------------------------------------------------------------------------

