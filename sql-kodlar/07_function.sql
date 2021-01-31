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

--------------------------------------------------------------------------

create function icerir_menu(v varchar)
	returns table
	(
		id int,
		ad varchar,
		kalori real,
		fiyat real
	)
as 
$$
	begin 
		return query
		select 
			menü_id,
			menü_ad,
			kalori,
			fiyat
		from menü
			where ad like v;
	end;
$$
language plpgsql;

select * from icerir_menu(%a%);

--------------------------------------------------------------------------


