import 'dart:io';

void main(){
    //Tugas 1
    MembuatKalimat();

    //Tugas 2
    //Mengurai_Kalimat();

    //Tugas 3
    //InputNamaLengkap();

    //Tugas 4
    //Perhitungan();
}

// Tugas 1 - Membuat Kalimat 
void MembuatKalimat(){
    var word = 'dart';
    var second = 'is';
    var third = 'awesome';
    var fourth = 'and';
    var fifth = 'I';
    var sixth = 'love';
    var seventh = 'it!';

    String combinedWord = "$word $second $third $fourth $fifth $sixth $seventh";

    print(combinedWord);
}

//Tugas 2 - Mengurai Kalimat
void Mengurai_Kalimat(){
    var sentence = "I am going to be Flutter Developer";

    var firstWord = sentence[0] ;
    var secondWord = sentence[2] + sentence[3] ;
    var thirdWord = sentence[5] + sentence[6] + sentence[7]+ sentence[8]+ sentence[9]; // lakukan sendiri
    var fourthWord = sentence[11] + sentence[12] ; // lakukan sendiri
    var fifthWord =  sentence[14] + sentence[15]; // lakukan sendiri
    var sixthWord = sentence[17] + sentence[18] + sentence[19]+ sentence[20]+ sentence[21]+ sentence[22]+ sentence[23]; // lakukan sendiri
    var seventhWord = sentence[25] + sentence[26]+ sentence[27] + sentence[28]+ sentence[29]+ sentence[30]+ sentence[31]+ sentence[32]+ sentence[33]; // lakukan sendiri


    print('First Word: ' + firstWord);
    print('Second Word: ' + secondWord);
    print('Third Word: ' + thirdWord);
    print('Fourth Word: ' + fourthWord);
    print('Fifth Word: ' + fifthWord);
    print('Sixth Word: ' + sixthWord);
    print('Seventh Word: ' + seventhWord);

}

//Tugas 3 - input dinamis yang akan menginput nama depan dan belakang
void InputNamaLengkap(){
    print("Masukan Nama Depan:");
    
    String? inputNamaDepan = stdin.readLineSync()!;
    
    print("Masukan Nama Belakang:");

    String? inputNamaBelakang = stdin.readLineSync()!;

    print("Nama Lengkap Anda Adalah : ${inputNamaDepan} ${inputNamaBelakang}");

}

//Tugas 4 - perkalian, penjumlahan, pengurangan dan pembagian
void Perhitungan(){
    var nilaiA=5;
    var nilaiB=10;

    var hasilPerkalian = nilaiA * nilaiB;
    var hasilPembagian = nilaiA / nilaiB;
    var hasilPenjumlahan = nilaiA + nilaiB;
    var hasilPengurangan = nilaiA - nilaiB;

    print("Perkalian : $hasilPerkalian");
    print("Pembagian : $hasilPembagian");
    print("Penjumlahan : $hasilPenjumlahan");
    print("Pengurangan : $hasilPengurangan");

}