uses crt;
var //pendeklarasian variabel
    n,x,y : integer; //mendeklaraasikan nilai variabel n,x,y bertipe data integer

begin //memulai program
    clrscr;
    write ('n : '); //input data
    readln (n); //membaca nilai inputan sebagai n
    
    if n mod 2 = 1 then //operasi kondisi jika nilai n bernilai ganjil
    begin //memulai operasi kondisi
        for x:=1 to n do //menginisialisasikan nilai x dimulai dari 1 hingga n
        begin //memulai operasi untuk x
            for y:=1 to n do //menginisialisasikan nilai y dimulai dari 1 hingga n
            begin //memulai operasi untuk y
                if  (x=y) or (x+y=n+1) then //operasi kondisi untuk output
                    write('*') //output jika kondisi terpenuhi
                else //operasi kondisi untuk output
                    write(' ');//output jika kondisi tidak terpenuhi
            end; //mengakhiri operasi untuk y
            writeln; //berpindah baris
        end; //mengakhiri operasi untuk x
    end //mengakhiri operasi kondisi
    else //jika kondisi tidak terpenuhi (diinput angka genap)
        write ('angka tidak valid, harus angka ganjil'); //output jika memasukkan angka genap
end. //mengakhiri program
