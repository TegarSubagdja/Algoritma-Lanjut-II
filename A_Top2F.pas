program a_Top2F;

uses crt;

var 

    L,T,R,B : integer;
    i,d : integer;

label a_top, a_rgt;

begin
    clrscr;

    L := 5; T := 3; R := 40; B := 20; d:= 50;

    for i := L to R-1 do 
        begin
            gotoxy(i,T);
            write('A');
            delay(d);
        end;

    for i := T to B-1 do 
        begin
            gotoxy(R,i);
            write('A');
            delay(d);
        end;

    for i := R downto L do 
        begin
            gotoxy(i,B);
            write('A');
            delay(d);
        end;

    for i := B downto T do 
        begin
            gotoxy(L,i);
            write('A');
            delay(d);
        end;

                readkey;
end.