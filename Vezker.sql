/*1 Feladat*/
begin
dbms_output.put_line('Kuknyó Imre');
end;

/*2. Feladat*/

DECLARE
 s number;
 BEGIN
 s := (10+3);
 dbms_output.put_line(TO_CHAR (s));
end;

/*3. Feladat*/

DECLARE
    a number DEFAULT 10;
    b number DEFAULT 20;
    s number;
begin
s := a*b;
dbms_output.put_line(TO_CHAR(s));
end;

/*4. Feladat*/

DECLARE
t VARCHAR(20) := 'Kuknyó Imre';
BEGIN
SELECT upper(t) INTO t FROM dual;
dbms_output.put_line((t));
SELECT Lower(t) INTO t FROM dual;
dbms_output.put_line((t));
SELECT Initcap(t) INTO t FROM dual;
dbms_output.put_line((t));
end;

/*5. Feladat*/

DECLARE
t1 VARCHAR(10) := 'Kuknyó';
t2 VARCHAR(10) := 'Imre';
t VARCHAR(20) := '';
BEGIN
SELECT concat(t1,t2) INTO t FROM dual;
dbms_output.put_line(t);
end;

/*6. Feladat*/

DECLARE
d DATE;
BEGIN
SELECT sysdate INTO d FROM dual;
dbms_output.put_line(d);
end;

/*7. Feladat*/

DECLARE
igaz BOOLEAN := TRUE;
BEGIN
IF igaz THEN
dbms_output.put_line('igaz');
ELSE
dbms_output.put_line('hamis');
end IF;
end;