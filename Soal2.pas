program PakStephen;
uses crt;
var
    orang,a,sayur,jsayur,jumlah:integer; //mendeklarasikan nilai variabel bertipe data integer
    harga,total:real; //mendeklarasikan nilai variabel beripe data real
begin
    clrscr;
    write ('Masukkan jumlah pelanggan : '); readln (orang); //input jumlah pelanggan
    writeln; //lanjut ke baris selanjutnya
    a:=1; //menginisialisasikan nilai a menjadi 1
    while (a<=orang) do //pengulangan a sebanyak nilai orang
    begin  //memulai perulangan untuk jumlah pelanggan
        writeln ('Pelanggan ke-',a,': '); //output urutan pelanggan
        write ('Masukkan jumlah jenis sayur yang dibeli : '); readln(jsayur); //input jumlah jenis sayur
        writeln; //lanjut ke baris selanjutnnya
        total:=0; //menginisialisasikan nilai total menjadi 0
        sayur:=1; //menginisialisasikan nilai sayur menjadi 1
        while (sayur<=jsayur) do //pengulangan untuk jumlah jenis sayur
        begin //memulai perulangan untuk jumlah jenis sayur pada setiap pelanggan
            write ('Masukkan harga sayur ke-',sayur,': '); readln(harga); //input harga sayur
            write ('Masukkan jumlah sayur yang dibeli : '); readln(jumlah); //input jumlah sayur
            total:=harga*jumlah+total; //menginisialisasikan nilai total untuk perulangan pada setiap pelanggan
            sayur:=sayur+1 //menginisialisasikan nilai sayur agar perulangan harga sayur dan jumlah sayur bertambah 1
        end; //mengakhiri program untuk jumlah jenis sayur
    writeln; //lanjut ke baris berikutnya
    writeln ('Total belanja untuk pelanggan ke-',a,': Rp',total:0:2); //output harga untuk setiap pelanggan
    a:=a+1; //menginisialisasikan nilai a agar perulangan pelanggan bertambah 1
    end; //mengakhiri program perulangan pelanggan
end. //mengakhiri program keseluruhan
