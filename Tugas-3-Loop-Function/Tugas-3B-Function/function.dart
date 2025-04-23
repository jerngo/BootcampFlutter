void main(){
    //Tugas 1
    print(teriak());

    //Tugas 2
    //var num1 = 12;
    //var num2 = 4;
    //var hasilKali = kalikan(num1, num2);
    //print(hasilKali);

    //Tugas 3
    //var name = "Agus";
    //var age = 30;
    //var address = "Jln. Malioboro, Yogyakarta";
    //var hobby = "Gaming";
    //var perkenalan = introduce(name, age, address, hobby);
    //print(perkenalan);

    //Tugas 4
    //print(factorial(6));
}

//Tugas 1 - Teriak
String teriak(){
    return "Halo Sanbers!"; 
}

//Tugas 2 - Kalikan
num kalikan(var num1, var num2){
    return num1*num2;
}

//Tugas 3 - Introduce
String introduce(var name, var age, var address, var hobby){
    return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
}

//Tugas 4 - Factorial
num factorial(var number){
    num hasilKali = number;
    if(number<=0){
        return 1;
    }else{
        while(number>1){
            hasilKali = hasilKali * (number-1);
            number--;
        }
    }
    return hasilKali;
}