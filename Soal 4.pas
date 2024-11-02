program Toko_IKLC;
uses crt;
var
    a,b,total:longint; //mendeklarasikan nilai variable menjadi long integer
begin //memulai program
    clrscr;
    readln (a); //input jumlah kembalian
    total:=0; //menginisialisasikan nilai total menjadi 0
    b:=100000; //menginisialisasikan nilai b menjadi 100000
    while (a>0) do //melakukan perulangan ketika a lebih besar dari 0
    begin //memulai perulangan
        total:=total+(a div b); //menginisialisasikan nilai total agar jumlah lembar kembalian terus terhitung
        a:= a mod b; //menginisialisasikan nilai a menjadi jumlah sisa bagi uang kembalian dengan nominal kembalian
        if b = 100000 then b:=75000 //jika nilai b adalah 100000 maka diubah menjadi 75000
        else if b = 75000 then b:=50000 //jika nilai b adalah 75000 maka diubah menjadi 50000
        else if b = 50000 then b:=20000 //jika nilai b adalah 50000 maka diubah menjadi 20000
        else if b = 20000 then b:=10000 //jika nilai b adalah 20000 maka diubah menjadi 10000
        else if b = 10000 then b:=5000 //jika nilai b adalah 10000 maka diubah menjadi 5000
        else if b = 5000 then b:=2000 //jika nilai b adalah 5000 maka diubah menjadi 2000
        else if b = 2000 then b:=1000 //jika nilai b adalah 2000 maka diubah menjadi 1000
        else if b = 1000 then b:=500 //jika nilai b adalah 1000 maka diubah menjadi 500
        else if b = 500 then b:=200 //jika nilai b adalah 500 maka diubah menjadi 200
        else if b = 200 then b:=100 //jika nilai b adalah 100 maka diubah menjadi 100
    end; //mengakhiri perulangan
    write (total); //output jumlah lembar kembalian
end. //mengakhiri program
