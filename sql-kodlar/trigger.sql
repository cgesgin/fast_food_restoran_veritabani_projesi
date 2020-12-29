--Trigger işlemleri

 CREATE OR REPLACE FUNCTION befor_insert_personel()
   RETURNS trigger AS
 $$
 BEGIN
 NEW.ad= UPPER(NEW.ad);
 NEW.soyad= UPPER(NEW.soyad);
 RETURN NEW;
 END;
 $$
 LANGUAGE 'plpgsql';

 CREATE TRIGGER trg_Ad_soyad
   BEFORE INSERT
ON personel
   FOR EACH ROW
   EXECUTE PROCEDURE befor_insert_personel();
