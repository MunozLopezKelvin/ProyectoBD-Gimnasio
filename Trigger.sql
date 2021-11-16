create or replace function conteo ()
returns trigger as $$
declare
	contar int;
begin
	contar := (select Count(*) from cliente);
	if(contar>0) then
	RAISE NOTICE 'La cantidad de usuarios registrados es de: (%)', contar;
	return new;
	end if;
end
$$
language plpgsql;

create trigger tr_conteo
after insert on cliente
for each row
execute procedure conteo();

--INSERT INTO cliente (CED_CLIENTE, COD_MEMBRESIA, NOMBRES_CLIENTE, TELF_CLIENTE, FECHA_REGISTRO_CLIENTE, FECHA_MEMBRESIA_CLIENTE) VALUES ('1315901271', 'DIAM', 'Muñoz Kelvin', '0991221203', '2020-06-09', '2021-11-01')

--DELETE FROM cliente WHERE CED_CLIENTE ='1315901271'

--select * from cliente