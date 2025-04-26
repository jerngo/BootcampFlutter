import 'dart:io';

class Buku {
  String judul;
  String pengarang;
  String isbn;
  int jumlah;

  Buku(this.judul, this.pengarang, this.isbn, this.jumlah);

  void tambahBuku(int tambahan) {
    jumlah += tambahan;
    print('=====Tambah Buku=====');
    print('$judul berhasil ditambahkan. Jumlah sekarang: $jumlah');
    print('===============================');
  }

  void hapusBuku(int pengurangan) {
    jumlah -= pengurangan;
    print('=====Hapus Buku=====');
    print('$judul berhasil dihapus. Jumlah sekarang: $jumlah');
    print('===============================');
  }

  void editBuku(Buku bukuBaru) {
    judul = bukuBaru.judul;
    pengarang = bukuBaru.pengarang;
    isbn = bukuBaru.isbn;
    jumlah = bukuBaru.jumlah;
    print('=====Edit Buku=====');
    print('Info buku berhasil diperbarui.');
    print('===============================');
  }

  void tampilkanInfo() {
    print('=====Hasil Pembaharuan Buku=====');
    print('Judul: $judul, Pengarang: $pengarang, ISBN: $isbn, Jumlah: $jumlah');
    print('===============================');
  }
}

class Anggota {
  String nama;
  String idAnggota;
  String alamat;

  Anggota(this.nama, this.idAnggota, this.alamat);
}

class Peminjaman {
  Buku buku;
  Anggota anggota;
  DateTime tanggalPinjam;
  DateTime? tanggalKembali;

  Peminjaman(this.buku, this.anggota, this.tanggalPinjam, [this.tanggalKembali]);

  void pinjamBuku() {
    print('=====Proses Pinjam Buku=====');
    print('${anggota.nama} berhasil meminjam buku "${buku.judul}" pada tanggal $tanggalPinjam.');
    print('===============================');
  }

  void kembalikanBuku() {
    tanggalKembali = DateTime.now();
    print('=====Proses Pengembalian Buku=====');
    print('${anggota.nama} berhasil mengembalikan buku "${buku.judul}" pada tanggal $tanggalKembali.');
    print('===============================');
  }

  void lihatRiwayat() {
    print('=====Proses Lihat Riwayat Peminjaman=====');
    stdout.write('Riwayat Peminjaman: ${anggota.nama} meminjam "${buku.judul}" pada $tanggalPinjam');
    if (tanggalKembali == null) {
      print(' dan belum mengembalikan.');
    } else {
      print(' dan mengembalikan pada $tanggalKembali.');
    }
    print('===============================');
  }
}

class Petugas {
  String nama;
  String idPetugas;

  Petugas(this.nama, this.idPetugas);

  bool login() {
    print('Admin berhasil login.');
    return true;
  }

  void kelolaBuku({required Buku buku, required String aksi, int jumlah = 0, Buku? editBuku}) {
    if (aksi == 'tambah') {
      buku.tambahBuku(jumlah);
    } else if (aksi == 'hapus') {
      buku.hapusBuku(jumlah);
    } else if (aksi == 'edit' && editBuku != null) {
      buku.editBuku(editBuku);
    }
  }
}

void main() {
  Buku buku1 = Buku("Pemrograman Dart", "John Doe", "9876543210", 3);
  Anggota anggota1 = Anggota("Jane Smith", "A002", "Jl. Sudirman No. 2");
  Petugas petugas1 = Petugas("Admin", "P001");

  petugas1.login();

  // Tambah Buku
  petugas1.kelolaBuku(buku: buku1, aksi: 'tambah', jumlah: 3);

  // Hapus Buku
  petugas1.kelolaBuku(buku: buku1, aksi: 'hapus', jumlah: 2);

  // Edit Buku
  Buku editBuku = Buku('Pemrograman Baru', 'Joko Tingkir', '978-602-8519-93', 4);
  petugas1.kelolaBuku(buku: buku1, aksi: 'edit', editBuku: editBuku);

  // Tampilkan info setelah edit
  buku1.tampilkanInfo();

  // Peminjaman
  Peminjaman peminjaman1 = Peminjaman(buku1, anggota1, DateTime.parse('2024-05-22 14:17:42.876'));
  peminjaman1.pinjamBuku();

  // Lihat Riwayat
  peminjaman1.lihatRiwayat();

  // Pengembalian
  peminjaman1.kembalikanBuku();

  // Lihat Riwayat lagi
  peminjaman1.lihatRiwayat();
}
