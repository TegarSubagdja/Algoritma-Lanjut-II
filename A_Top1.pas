program A_Top1;

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
    gotoxy (i,T);
    write('A');
    delay (d);
    i := i + 1;
    
    if i < R then 
        begin
            goto a_top;
        end;

    i := T;
    a_rgt :
    gotoxy (R,i);
    write('A');
    delay (d);
    i := i + 1;
    
    if i < B then 
        begin
            goto a_rgt;
        end;

    i := R;
    a_btm :
    gotoxy (i,B);
    write('A');
    delay (d);
    i := i - 1;
    
    if i > L then 
        begin
            goto a_btm;
        end;

    i := B;
    a_left :
    gotoxy (L,i);
    write('A');
    delay (d);
    i := i - 1;
    
    if i > T then 
        begin
            goto a_left;
        end;

    
    readkey;

end.