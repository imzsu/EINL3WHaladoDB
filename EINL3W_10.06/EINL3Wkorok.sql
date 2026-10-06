CREATE TABLE Korok (
Sugar NUMBER (4) PRIMARY KEY,
Kerulet NUMBER,
Terulet NUMBER
);

DESCRIBE Korok;

SELECT 1 Sugar, 2*1*3.1415926454 kerület from dual;

CREATE OR REPLACE FUNCTION PI RETURN number AS
BEGIN
RETURN 3.1415926454;
end;

SELECT 1 Sugar, 2*1*PI kerület from dual;

DECLARE
    Sugar number:=1;
    Kerulet number;
BEGIN
    Kerulet := 2*Sugar*PI();
    DBMS_OUTPUT.PUT_LINE ('Sugar: '||Sugar||'Kerület:'
    ||Kerulet);
end;

--kor terulet

DECLARE
    Sugar number:=1;
    Terulet number;
BEGIN
    Terulet := POWER(Sugar, 2) * PI();
    DBMS_OUTPUT.PUT_LINE('Sugár:' ||Sugar|| 'Terület:' ||Terulet);
end;


DECLARE
Kerület number;
x number:=1;
y number:=5;
BEGIN
for i in x..y LOOP
    Kerület:=2*i*PI();
    DBMS_OUTPUT.PUT_LINE('Sugar: ' ||i||' Kerület:'||Kerület);
end loop;
end;

CREATE OR REPLACE PROCEDURE Kor (x in number, y in number) IS
Kerület number;
BEGIN
For i in x..y LOOP
    Kerület:=2*i*PI();
    DBMS_OUTPUT.PUT_LINE('Sugar: ' ||i||' Kerület:'||Kerület);
    end loop;
end;

BEGIN
    Kor(1,5);
    end;
    
CREATE or REPLACE PROCEDURE Circle (x in number, y in number) IS 
Circleference number;
Area number;
BEGIN
for i in x..y LOOP
Circleference:=2*i*PI();
Area:= Power(i,2)*PI();
DBMS_OUTPUT.PUT_LINE('Radius: '||i||' Circleference:'||Circleference||'Area:'||Area);
end loop;
end;

begin
Circle(1,10);
end;

CREATE OR REPLACE PROCEDURE Circle (x in number, y in number) IS
    Kerulet number;
    Terulet number;
BEGIN
    FOR i IN x..y LOOP
        Kerulet:= 2*i*PI();
        Terulet:= power(i, 2)*PI();
        INSERT INTO Korok1 VALUES(i, Kerulet, Terulet);
    END LOOP;
    dbms_output.put_line('A Kör táblába bekerültek az adatok.');
END;

BEGIN
Circle(1,10);
End;


Create TABLE Korok1(
    Sugar NUMBER,
    Kerulet NUMBER,
    Terulet NUMBER
)

SELECT * FROM Korok1;



