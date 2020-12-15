
create table Musteri(
	musteri_id serial primary key not null,
	ad varchar(20) not null ,
	soyad varchar(20) not null,
	telefon int unique not null,
	e_mail varchar(40) unique
);

create table Adres (
	adres_id serial primary key not null,
	il varchar(20) not null,
	ilçe varchar(20) not null,
	Mahalle varchar(20) not null,
	sokak varchar(20) not null,
	bina_no int not null
);

create table Personel(
	personel_id serial primary key not null,
	ad varchar(20) not null,
	soyad varchar(20) not null,
	tc_no int unique not null,
	telefon int unique not null,
	e_mail varchar(40) unique ,
	maas real ,
	ise_giris_tarihi date
);

create table Unvan(
	unvan_id serial primary key not null,
	unvan varchar(20) not null
);

create table Fatura(
	fatura_id serial primary key not null,
	islem_tarihi date not null,
	odenecek_tutar real not null
);

create table SiparisDurum(
	siparis_durum_id serial primary key not null,
	durum varchar(40)
);

create table Sube(
	sube_id serial primary key not null,
	sube_ad varchar(40),
	telefon int unique
);

create table ürün(
	ürün_id serial primary key not null,
	ürün_ad varchar(40) not null,
	kalori real not null
);

create table Kategori(
	kategori_id serial primary key not null,
	kategori_ad varchar(40) not null
);

create table Menü(
	menü_id serial primary key not null,
	menü_ad varchar(40) not null,
	kalori real not null,
	fiyat real not null
);

create table siparis(
	siparis_id serial primary key not null,
	menü_ad varchar(40) not null,
	siparis_türü varchar(40) not null,
	siparis_tarihi date not null	
);

ALTER TABLE fatura ADD ödeme_türü varchar(40) not null;

alter table fatura add personel_id int references personel(personel_id);

alter table fatura add musteri_id int references musteri(musteri_id);

alter table siparis add fatura_id int references fatura(fatura_id);

alter table musteri add adres_id int references adres(adres_id);

alter table siparis add musteri_id int references musteri(musteri_id);

alter table siparis add siparis_durum_id int references siparisdurum (siparis_durum_id);

alter table personel add unvan_id int references unvan (unvan_id);

alter table personel add adres_id int references adres (adres_id);

alter table personel add sube_id int references sube(sube_id);

alter table siparis add personel_id int  references personel(personel_id);

create table Siparis_Sube(
	id serial primary key not null,
	siparis_id int references siparis(siparis_id),
	sube_id  int references sube(sube_id)
);

create table Siparis_Menu(
	id serial primary key not null,
	menü_id int references menü(menü_id),
	siparis_id  int references siparis(siparis_id)
);

create table Sube_menü(
	id serial primary key not null,
	menü_id int references menü(menü_id),
	sube_id  int references sube(sube_id)
);

create table menü_ürün(
	id serial primary key not null,
	menü_id int references menü(menü_id),
	ürün_id  int references ürün(ürün_id)
);

create table menü_kategori(
	id serial primary key not null,
	menü_id int references menü(menü_id),
	kategori_id  int references kategori(kategori_id)
);

create table ürün_kategori(
	id serial primary key not null,
	ürün_id int references ürün(ürün_id),
	kategori_id  int references kategori(kategori_id)
);


