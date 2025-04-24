//Tugas 3
void main(List<String> args) {
    var input = [
        ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'Membaca'],
        ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
        ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
        ['0004', 'Bintang Senjaya', 'Martapura', '6/04/1970', 'Berkebun']
    ];

    if (args.isNotEmpty && args.length % 5 == 0) {
        input = [];
        for (var i = 0; i < args.length; i += 5) {
            input.add([
                args[i],
                args[i + 1],
                args[i + 2],
                args[i + 3],
                args[i + 4],
            ]);
        }
    }

    dataHandling(input);
      
}

void dataHandling(List<List<String>> data) {
    for (var item in data) {
        print('Nomor Id   : ${item[0]}');
        print('Nama Lengkap : ${item[1]}');
        print('TTL          : ${item[2]} ${item[3]}');
        print('Hobby        : ${item[4]}\n');
    }
}