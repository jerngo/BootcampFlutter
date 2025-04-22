import 'dart:io';

void main(){
    //Tugas 1
    //TernaryOperator();

    //Tugas 2
    //PeranWerewolf();

    //Tugas 3
    //QuotesHariini();

    //Tugas 4
    FormatTanggal();
}

//Tugas 1 - Ternary Operator
void TernaryOperator() {
    print("Apakah Anda Ingin Menginstall Aplikasi Dart? (Y/T):");
    String? jawaban = stdin.readLineSync();

    (jawaban == "Y" || jawaban == "y")
        ? print("anda akan menginstall aplikasi dart")
        : (jawaban == "T" || jawaban == "t")
            ? print("aborted")
            : TernaryOperator();
}

//Tugas 2 - if, else-if, else
void PeranWerewolf(){
    print("Nama:");
    String? nama = stdin.readLineSync();

    print("Peran:");
    String? peran = stdin.readLineSync();

    if(peran!=null && peran.isNotEmpty){
        peran = peran![0].toUpperCase() + peran!.substring(1);
    }

    if(nama == ""){
        print("Nama Harus Diisi!");
        PeranWerewolf();
    }else{
        if(peran == ""){
            print("Halo $nama, Pilih peranmu untuk memulai game!");
            PeranWerewolf();
        }else if(peran != "Penyihir" && peran != "Guard" && peran != "Werewolf"){
            print("Hai $nama, peran $peran tidak tersedia.");
            PeranWerewolf();
        }else{
            if(peran == "Penyihir"){
                print("Halo $peran $nama, kamu dapat melihat siapa yang menjadi werewolf!");
            }else if(peran == "Guard"){
                print("Halo $peran $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
            }else{
                print("Halo $peran $nama, Kamu akan memakan mangsa setiap malam!");
            }
        }
    }
}

//Tugas 3 - Switch Case
void QuotesHariini(){
    print("Hari:");
    String? hari = stdin.readLineSync();
    if(hari!=null && hari.isNotEmpty){
        hari = hari![0].toUpperCase() + hari!.substring(1);
    }

    switch(hari){
        case "Senin":
            print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
            break;
        case "Selasa":  
            print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
            break;
        case "Rabu":  
            print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
            break;
        case "Kamis":  
            print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
            break;
        case "Jumat":  
            print("Hidup tak selamanya tentang pacar.");
            break;
        case "Sabtu":  
            print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
            break;
        case "Minggu":  
            print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
            break;
        default: 
            print("Hari yang anda masukkan invalid.");
    }

}

//Tugas 4 - Format Tanggal
void FormatTanggal(){
    var tanggal = 21; 
    var bulan = 1; 
    var tahun = 1945;

    if(tanggal<1 || tanggal>31){
        print("Tanggal tidak valid");
    }else if(bulan < 1 || bulan > 12){
        print("Bulan tidak valid");
    }else{
        String? bulanStr;
        switch (bulan){
            case 1: 
                bulanStr="Januari";
                break;
            case 2: 
                bulanStr="Febuari";
                break;
            case 3: 
                bulanStr="Maret";
                break;
            case 4: 
                bulanStr="April";
                break;
            case 5: 
                bulanStr="Mei";
                break;
            case 6: 
                bulanStr="Juni";
                break;
            case 7: 
                bulanStr="Juli";
                break;
            case 8: 
                bulanStr="Agustus";
                break;
            case 9: 
                bulanStr="September";
                break;
            case 10: 
                bulanStr="Oktober";
                break;
            case 11: 
                bulanStr="November";
                break; 
            case 12: 
                bulanStr="Desember";
                break;
        }

        print("$tanggal $bulanStr $tahun");
    }
}