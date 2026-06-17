# Panduan Menjalankan Aplikasi Blog (Laravel)

Dokumen ini berisi panduan singkat, padat, dan jelas untuk memasang dan menjalankan aplikasi blog berita berbasis Laravel ini di komputer lokal Anda.

---

## 🛠️ Prasyarat (Prerequisites)
Pastikan Anda sudah menginstal perangkat lunak berikut:
* **PHP** (minimal versi 8.3)
* **Composer**
* **Node.js** & **NPM**
* **Database Server** (MySQL / MariaDB via Laragon, XAMPP, atau sejenisnya)

---

## 🚀 Langkah Instalasi & Konfigurasi

Ikuti langkah-langkah di bawah ini secara berurutan:

### 1. Salin Konfigurasi Environment (`.env`)
Salin file konfigurasi contoh menjadi file `.env` aktif.
```bash
cp .env.example .env
```
*(Catatan: Jika sudah ada file `.env`, Anda bisa melewati langkah ini).*

### 2. Instal Dependensi PHP (Composer)
Unduh semua dependensi PHP yang dibutuhkan proyek.
```bash
composer install
```

### 3. Generate Application Key Laravel
Buat kunci pengaman aplikasi Laravel Anda.
```bash
php artisan key:generate
```

### 4. Instal Dependensi Frontend (NPM)
Pasang semua dependensi JavaScript/CSS.
```bash
npm install
```

### 5. Bangun (Build) Aset Frontend
Kompilasi aset CSS & JavaScript agar tampilan web termuat dengan benar.
* **Untuk mode Development** (sambil mengedit kode):
  ```bash
  npm run dev
  ```
* **Untuk mode Production** (sekali kompilasi statis):
  ```bash
  npm run build
  ```

---

## 🗄️ Konfigurasi & Import Database

1. **Aktifkan MySQL** di Laragon / XAMPP Anda.
2. **Buat Database Baru** dengan nama: **`db_blog`** (sesuai konfigurasi pada `.env`).
3. **Import File SQL**:
   * Masuk ke phpMyAdmin / database client Anda (HeidiSQL, DBeaver, dll.).
   * Import file database yang sudah disediakan di folder proyek:
     ```text
     database/db_blog.sql
     ```
   * *Alternatif via CLI (jika MySQL terdaftar di PATH):*
     ```bash
     mysql -u root -p db_blog < database/db_blog.sql
     ```

---

## 💻 Menjalankan Aplikasi

Jalankan server lokal Laravel menggunakan perintah berikut:
```bash
php artisan serve
```

Aplikasi dapat diakses melalui browser di alamat:
🔗 **[http://localhost:8000](http://localhost:8000)** atau **[http://127.0.0.1:8000](http://127.0.0.1:8000)**

*(Jika Anda menggunakan Laragon, Anda juga bisa langsung membukanya di **http://aplikasi-blog.test**).*

---

## 🔑 Akun Login Default (Penulis)

Untuk masuk ke dashboard manajemen (menambah/mengubah artikel, penulis, dan kategori), kunjungi halaman login:
🔗 **[http://localhost:8000/login](http://localhost:8000/login)**

Berikut daftar akun penulis bawaan dari database (`db_blog.sql`):

| No. | Nama Penulis | Username | Password |
|---|---|---|---|
| 1 | Hilmi Aziz | `hilmi` | `12345678` |
| 2 | Najwa Shihab | `najwa` | `12345678` |
| 3 | Rosiana Silalahi | `rosi` | `12345678` |

---
*Selamat mencoba! Jika terjadi masalah koneksi database, pastikan konfigurasi `DB_USERNAME` dan `DB_PASSWORD` di file `.env` sudah sesuai dengan kredensial server MySQL lokal Anda.*
