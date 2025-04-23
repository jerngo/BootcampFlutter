void main(){
    //Tugas 1
    LoopingWhile();
    //Tugas 2
    //LoopingFor();
    //Tugas 3
    //PersegiPanjang();
    //Tugas 4
    //Segitiga();
}


//Tugas 1 - Looping while
void LoopingWhile(){
    print("LOOPING PERTAMA");
    int loopingIndex1 = 2;
    while (loopingIndex1 <= 20) {
        print("$loopingIndex1 - I love coding");
        loopingIndex1 += 2;
    }

    print("LOOPING KEDUA");
    int loopingIndex2 = 20;
    while (loopingIndex2 >= 2) {
        print("$loopingIndex2 - I will become a mobile developer");
        loopingIndex2 -= 2;
    }
}

//Tugas 2 - Looping For
void LoopingFor(){
    for (int i = 1; i <= 20; i++) {
        if (i % 3 == 0 && i % 2 != 0) {
            print("$i - I Love Coding");
        } else if (i % 2 == 0) {
            print("$i - Berkualitas");
        } else {
            print("$i - Santai");
        }
  }
}

//Tugas 3 - Persegi Panjang
void PersegiPanjang(){
    for (int i = 0; i < 4; i++) {
        print("########");
    }
}

//Tugas 4 - Segitiga
void Segitiga(){
    for (int i = 1; i <= 7; i++) {
        String baris = '';
        for (int j = 1; j <= i; j++) {
            baris += '#';
        }
        print(baris);
    }
}