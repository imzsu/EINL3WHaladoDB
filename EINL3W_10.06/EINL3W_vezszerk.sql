declare
x number := 25;
begin
if x < 10 then
dbms_output.put_line('A szám kisebb mint 10');

elsif x < 20 then
dbms_output.put_line('A szám 10 és 20 között van');

elsif x < 20 then 
dbms_output.put_line('A szám kisebb mint 20');

else 
dbms_output.put_line('A szám 20 vagy nagyobb');
end if;
end;

/*2. feladat*/
DECLARE
beosztas VARCHAR(10) := 'dev';
BEGIN 
CASE
WHEN beosztas = 'dev' THEN dbms_output.put_line('Fejleszto, tervezo');
WHEN beosztas = 'root' THEN dbms_output.put_line('Rendszergazda(UNIX/LINUX)');
WHEN beosztas = 'admin' THEN dbms_output.put_line('Renddszergazda(Windows)');
WHEN beosztas = 'dba' THEN dbms_output.put_line('Adatbazis Adminisztrator');
WHEN beosztas = 'coder' THEN dbms_output.put_line('Programozo');
WHEN beosztas = 'sec' THEN dbms_output.put_line('Adminisztrativ');
ELSE dbms_output.put_line('egyedi munkakor');
end case;
end;

/*3. feladat*/

DECLARE
n number :=10;
BEGIN
for i IN 1..10 loop
dbms_output.put_line(to_char(i));
end loop;
end;

/*4. feladat*/

declare
type tomb is varray(3) of number;

arak tomb := tomb(1500000, 2200000, 1800000);

BEGIN
 for i in 1..arak.count loop
 dbms_output.put_line(arak(i));
 end loop;
 end;
 