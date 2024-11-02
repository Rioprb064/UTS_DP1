program perjalanan;
uses crt;
var
    jarak,total,hasil,akhir:real; //mendeklarasikan nilai variabel menjadi tipe data real
    anggota:string; //mendeklarasikan nilai variabel menjadi string
label 1; //mendeklarasikan nilai label
begin //memulai program
    clrscr;
    1: //label 1
    write ('Jarak (KM) : '); readln (jarak); //input data untuk variabel jarak
    write ('Anggota premium : '); readln (anggota); //input data untuk variabel anggota
        begin //memulai proses untuk menentukan tambahan biaya
            if jarak<5 then //operasi jika kondisi terpenuhi
                total:=20000+(jarak*5000) //menginisialisasikan nilai total menjadi 20000+(jarak*5000) jika jarak kurang dari 5
            else if jarak<=10 then //operasi jika kondisi terpenuhi
                total:=20000+(jarak*4000) //menginisialisasikan nilai total menjadi 20000+(jarak*4000) jika jarak 5-10 KM
            else //operasi jika kedua kondisi di atas tidak terpenuhi
                total:=20000+(jarak*3000) //menginisialisasikan nilai total menjadi 20000+(jarak*3000) jika jarak lebih dari 10 KM
        end; //mengakhiri proses untuk menentukan biaya tambahan

    //menentukan diskon ketika biaya dasar ditambah biaya tambahan
    if total>100000 then //operasi jika kondisi terpenuhi
        hasil:=total*0.9 //menginisialisasikan nilai hasil menajadi total*0.9 karena diskon 10%
    else //operasi jika kondisi tidak terpenuhi
        hasil:=total; //menginisialisasikan nilai hasil menjadi total karena tidak mendapat diskon

    //menentukan diskon anggota premium
    case anggota of // menentukan proses berdasarkan inputan variabel anggota
        'True','TRUE','true': akhir:=hasil*0.95; //menginisialisasikan nilai akhir menjadi hasil*0.95 karena diskon 5%
        'False','FALSE','false': akhir:=hasil; // menginisialisasikan nilai akhir menjadi hasil karena tidak ada diskon anggota
    else //menentukan kondisi jika variabel anggota tidak ditemukan
        write ('Tak terdefinisi'); readln; //ouput jika kondisi tidak terpenuhi
        goto 1 //pergi ke label 1 jika kondisi tidak terpenuhi
    end; //mengakhiri proses untuk menentukan diskon anggota premium
    write ('Total akhir : Rp',akhir:0:0); //output akhir
end. //mengakhiri program
