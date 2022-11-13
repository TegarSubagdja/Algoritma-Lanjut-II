program a_Top2R;

uses crt;

var 

    L,T,R,B : integer;
    i,d : integer;

label a_top, a_rgt;

begin
    clrscr;

    L := 5; T := 3; R := 40; B := 20; d:= 50;

    i := L; 
    while i < R do 
        begin
            repeat
                gotoxy(i,T);
                write('A');
                delay(d);
                i := i + 1;
            until (i >= R);
        end;

    i := T; 
    while i < B do 
        begin
            repeat
                gotoxy(R,i);
                write('A');
                delay(d);
                i := i + 1;
            until (i >= B);
        end;

    i := R; 
    while i > L do 
        begin
            repeat
                gotoxy(i,B);
                write('A');
                delay(d);
                i := i - 1;
            until (i <= L);
        end;

    i := B; 
    while i > T do 
        begin
            repeat
                gotoxy(L,i);
                write('A');
                delay(d);
                i := i - 1;
            until (i <= T);
        end;
        readkey;
end.