program a_top2;

uses crt;

var 

    L,T,R,B : integer;
    i,d : integer;

label a_top, a_rgt, a_btm, a_left;
begin
clrscr;
    L := 5; T := 3; R := 40; B := 20; d := 50;

    i := L;
    a_top :
    if i < R then 
        begin
            gotoxy(i,T);
            write('A');
            delay(d);
            i := i + 1;
            goto a_top;
        end;

    i := T;
    a_rgt :
    if i < B then 
        begin
            gotoxy(R,i);
            write('A');
            delay(d);
            i := i + 1;
            goto a_rgt;
        end;

    i := R;
    a_btm :
    if i > L then 
        begin
            gotoxy(i,B);
            write('A');
            delay(d);
            i := i - 1;
            goto a_btm;
        end;

    i := B;
    a_left :
    if i > T then 
        begin
            gotoxy(L,i);
            write('A');
            delay(d);
            i := i - 1;
            goto a_left;
        end;
    readkey;
end.