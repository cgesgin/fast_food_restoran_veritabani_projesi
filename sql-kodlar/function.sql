--Function işlemleri

create function kdvHesapla(fiyat real)
returns real
language plpgsql
as
$$
	begin 
		fiyat:=fiyat*0.18+fiyat;
		return fiyat;
	end;
$$

select *,kdvHesapla(fiyat) as kdvli from menü;
