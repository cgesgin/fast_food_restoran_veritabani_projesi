# Restoran Veri Tabanı

* Proje : Fast food restoranlarının modellenmesi
* Kullanılan veri tabanı [PostgreSQL Version 13.1](https://www.postgresql.org/) ' dir
* E-R Diyagram Çizimi için [Umlet](https://www.umlet.com/) kullanılmıştır.
### Projeye Genel Bakış

---
* **Neden Fast food restourant'larında veri tabanına ihtiyaç vardır?**

  Fast food restoranları hızlı ve paket yemek hizmeti sunan bir restoran çeşididir.
	
  Bir müşteri herhangi bir fast food şubesinde siparis vermek için menüden bir seçim yapar restoran personeli bir siparis kaydı oluşturmak için bir uygulama kullanır. Siparişi izlemek için bir kayıt olusturulur. Form daha sonra yazdırılır ve bir kopyası müşteriye fatura olarak verilir. 

  Sipariş hazırlanırken verilen sipariş stoğu kontrol edilir ve siparis hazırlanır. Bu bilgiler tekrar personelin kullandığı uygulamaya girilir. Mali personele giderken, diğer idari personel, bir ay içinde ne kadar ürün satıldığını, ne kadar ürün stokta ürün kaldığını vb. gibi etkinlik verilerini oluşturmak için genel faaliyet bilgilerini formdan özetler ve kaydeder. 
	

  Amacım, Fast Food Restoranını tek basına bir uygulamadan ziyade birçok uygulamadan desteklenebilecek daha zengin bir kullanım sunmak için ve veri yönetimini daha kolay yapılacak şekilde bir sistem haline getirmektir. Buna ek olarak personelin iş akışına daha iyi desteklemek ve sipariş akışı daha iyi yönetmek için avantajlar sağlaması örneğin stok kontrolü, sipariş kontrolü, personel kontrolü vb. işlerin yapılması.

**Önceki Modelde Temel Eksiklikler;**

*	Tek bir uygulamadan yönetilen sistem
*	Veri Yönetimi Fatura özetlerinden ve yapılıyor
*	Ürün Takibi zorluğu
*	Stok Takibi Zorluğu
*	Personel Takibi kolaylığı
*	Sipariş durum belirsizliği
*	Menü Kontrolü zorluğu
*	Sipariş Takibi zorluğu
*	Personelin sipariş alma zorluğu


**Yeni Modelde Elde Edilen Temel Avantajlar;**

*	Sistem uygulamadan bağımsız
*	Veri yönetimi daha kolay
*	Ürün Takibi kolaylığı
*	Stok Takibi Kolaylıgı
*	Sipariş Takibi Kolaylığı
*	Personel Takibi kolaylığı
*	Fatura Takibi kolaylağı
*	Sipariş durum takibi
*	Menüden kolay sipariş verme
*	Personelin sipariş alma kolaylığı



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
### Veri tabanında bulunan nesneler

*	4 adet Cascade 
*	2 adet Fonksiyon
*	1 adet Prosedür
*	5 adet View
*	1 adet Trigger

#### PostgreSQL Veri tabanı için Faydalı kaynaklar

* https://www.postgresqltutorial.com/
* https://pgexercises.com/
* https://www.postgresql.org/docs/
