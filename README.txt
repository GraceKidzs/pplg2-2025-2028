PPLG 2 — WEBSITE KELAS 2025/2028
=================================

CARA MENJALANKAN
1. Extract ZIP.
2. Buka folder PPLG2_Website.
3. Klik dua kali index.html, atau buka folder tersebut di Visual Studio Code lalu buka index.html di browser.
4. Website berjalan offline untuk fitur utama. Chrome dan Microsoft Edge didukung.
5. Untuk HP melalui kabel USB (cara paling stabil):
   - Jalankan start-server.bat di laptop (Windows + Python diperlukan).
   - Aktifkan USB Debugging di Android dan pasang ADB.
   - Jalankan `adb reverse tcp:5500 tcp:5500`.
   - Buka Chrome di HP dan masuk ke `http://127.0.0.1:5500`.

STRUKTUR
- index.html   = struktur halaman dan menu
- style.css    = desain, responsif, animasi
- script.js    = data murid, album, promosi + game + pengaturan
- assets/      = semua foto/poster

ALBUM BERTINGKAT
Menu Album sekarang memiliki struktur:
  Album utama → Subalbum → Foto

Contoh:
  Momen Kebersamaan
    → Foto Bersama
      → 3 foto kebersamaan

Untuk menambah subalbum, edit const albums di script.js. Setiap subalbum memiliki:
  id, title, desc, cover, photos

PROMOSI DI FOTO MURID
Menu Promosi terpisah sudah dihilangkan dari navigasi.
Setiap kartu Foto Murid sekarang memiliki tombol "📣 Promosi".
Saat tombol diklik, terbuka halaman promosi baru yang menampilkan:
- nama murid
- poster promosi
- keterangan promosi
- tombol WhatsApp

Saat ini semua murid memakai data promosi yang tersedia di const promos. Jika nanti setiap murid mempunyai poster/nomor berbeda, data tersebut bisa dibuat per murid di script.js.

MENAMBAH FOTO MURID
Di script.js cari:
const students = [...]
Tambahkan objek murid dan taruh file fotonya di folder assets dengan nama yang sama persis.

TTS
Ada 6 kategori:
TKR, TKJ, AKL, KU, RPL, RANDOM.

Setiap kategori memiliki 25 soal pada Putaran 1 dan 25 soal berbeda pada Putaran 2.
Jika pengguna berhasil menjawab 25/25 dengan benar, game otomatis membuat papan baru dengan soal dari putaran berikutnya.
Setelah Putaran 2 selesai, game kembali ke Putaran 1 sehingga soal tidak terus-menerus berada pada satu set saja.

CATATAN
- Website tetap dapat dibuka offline untuk fitur utama.
- Link Instagram dan WhatsApp membutuhkan internet saat dibuka.


PROMOSI PER MURID
- Promosi sekarang dipisahkan berdasarkan nama murid.
- Saat ini hanya RAHMAT ADI PRASETYO yang memiliki promosi: promo-01-banner-chiken-nabila.png.
- Untuk menambah promosi murid lain, tambahkan satu entri baru pada objek `promos` di script.js menggunakan nama murid yang persis sama.
- Murid yang belum memiliki entri promosi akan memiliki ruang promosi kosong dan tidak akan memakai promosi murid lain.


UPDATE: Game TTS sekarang memiliki 1.250 soal total dalam 6 kategori. Setiap sesi berisi 25 soal dan riwayat soal yang sudah diselesaikan disimpan di localStorage agar sesi berikutnya mendapat variasi berbeda. Sistem promosi mendukung beberapa promosi per murid; Rahmat Adi Prasetyo memiliki Promosi 1 dan Promosi 2.
