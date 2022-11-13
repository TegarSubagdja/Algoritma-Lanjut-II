program a_Top3B;

uses crt;

var 

    L,T,R,B : integer;
    i,d : integer;

begin
    clrscr;

    L := 5; T := 3; R := 40; B := 20; d:= 50;

    textcolor(lightMagenta);

    gotoxy(L,T); write(char(218));
    for i := L+1 to R-1 do 
        begin
            gotoxy(i,T);
            write(char(196));
            delay(d);
        end;

    gotoxy(R,T); write(char(218));
    for i := T+1 to B-1 do 
        begin
            gotoxy(R,i);
            write(char(179));
            delay(d);
        end;

    gotoxy(R,B); write(char(218));
    for i := R-1 downto L+1 do 
        begin
            gotoxy(i,B);
            write(char(196));
            delay(d);
        end;

    gotoxy(L,B); write(char(218));
    for i := B-1 downto T+1 do 
        begin
            gotoxy(L,i);
            write(char(179));
            delay(d);
        end;

                readkey;
end.