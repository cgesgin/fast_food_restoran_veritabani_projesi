# Restoran Veri Tabanı

* Proje : Fast food restoranların veri tabanının modellenmesi
* Kullanılan veri tabanı [PostgreSQL Version 13.1](https://www.postgresql.org/) ' dir
* E-R Diyagram Çizimi için [Umlet](https://www.umlet.com/) kullanılmıştır.


### Veritabanı Yapısı

---

  Veritabanı on bir tablodan oluşur. Ana tablolar Fatura, Kategori, Menü , Müşteri, Personel, Sipariş, Ürün, Şube , sipariş_Durum ,Adres ,personel türü tablolarıdır. Diğer Tablolar varlık-ilişkilerinin durumlarının oluşumundan meydana gelecek tablolardır.

| Tablolar     | İşlevi        |
| -------------| ------------- |
|Fatura	|Müşterinin ödeyeceği tutar bilgilerini içerir.
|Kategori|	Ürünlerin türleri bulundugu bilgileri içerir.
|Menü	|Menü bilgilerini içerir.
|Personel| 	Çalısanların Bilgilerini içerir.
|Müşteri	|Müsterinin bilgileri bulunur.
|Sipariş	|Müşterinin aldıgı ürün burada turulur
|Adres	|Personellerin ,müsterilerin ve subelerin bilgilerini içeren varlıktır
|Şube	|Fast food restoranları birer zincir olduğundan bu kısımda Subenin bilgileri yer alıyor
|Personel Türü| Fast food restoranlarında birçok personel türü vardır . Bunların yaptığı işlerin bölündirilmesi işlevi görür
|Sipariş_Durum	|Verilen siparişin hangi aşamada olduğunu gösterir.
|Ürün	|Menülerin içeriğinde bulunan ürünleri içeriyor


### E-R Diyagram

---

![](https://github.com/cgesgin/fast_food_restaurant_database/blob/main/E-R%20Diyagram%C4%B1/E-R%20Diyagram.png)

---
### Veri tabanında bulunan nesneler(son hali)

*	4 adet Cascade 
*	2 adet Fonksiyon
*	1 adet Prosedür
*	5 adet View
*	1 adet Trigger
*	17 adet Tablo

#### PostgreSQL Veri tabanı için Faydalı kaynaklar

* https://www.postgresqltutorial.com/
* https://pgexercises.com/
* https://www.postgresql.org/docs/
