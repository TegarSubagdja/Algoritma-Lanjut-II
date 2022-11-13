program a_top2w;

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
            while i < R do 
                begin
                    gotoxy(i,T);
                    write('A');
                    delay(d);
                    i := i + 1;
                    goto a_top;
                end;
        end;

    i := T;
    a_rgt :
    if i < B then 
        begin
            while i < B do 
                begin
                    gotoxy(R,i);
                    write('A');
                    delay(d);
                    i := i + 1;
                    goto a_rgt;
                end;
        end;

    i := R;
    a_btm :
    if i > L then 
        begin
            while i > L do 
                begin
                    gotoxy(i,B);
                    write('A');
                    delay(d);
                    i := i - 1;
                    goto a_btm;
                end;
        end;

    i := B;
    a_left :
    if i > T then 
        begin
            while i > T do 
                begin
                    gotoxy(L,i);
                    write('A');
                    delay(d);
                    i := i - 1;
                    goto a_left;
                end;
        end;

    readkey;        
end.