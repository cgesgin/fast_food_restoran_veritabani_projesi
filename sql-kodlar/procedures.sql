--Procedure işlemleri

--Ornek procedure işlemi
create or replace  procedure pr_unvan(unvan varchar)
language sql
as
$$
	insert into unvan values(default,unvan);
$$
--procedure çagırma
call pr_unvan('Motorlu Kurye');
-----------------------------------------------------------------------
