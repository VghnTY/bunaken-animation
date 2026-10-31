---
tags: [panduan, ai]
---

# Panduan Penggunaan AI

Aturan lengkap untuk AI ada di **`AGENTS.md`** di root repository.
File itu dibaca otomatis oleh OpenCode setiap sesi.

→ [`AGENTS.md`](../../AGENTS.md)

## Ringkasan untuk tim

### 1. AI selalu membaca vault dulu

Setiap sesi dimulai dengan AI membaca **seluruh catatan** di
`Obsidian-Project-Animasi/` sebelum menjawab atau mengerjakan apa pun.

Artinya: **kalau kamu mengubah keputusan penting, tulis di vault.** Kalau tidak
ditulis, AI tidak akan tahu dan bisa mengerjakan hal yang bertentangan.

Kalau AI dan permintaanmu bertentangan dengan vault, permintaanmu menang — tapi
minta AI memperbarui catatan vault-nya juga.

### 2. Minta pembuatan aset model? Siapkan gambar referensi

AI **tidak akan** langsung memodelkan dari deskripsi teks. Ia akan meminta
gambar, karena satu gambar dipakai untuk dua hal:

- **bentuk** → proporsi, siluet, detail
- **warna & material** → shading, tekstur

Kalau gambarmu kurang bagus, AI akan bilang apa yang kurang dan minta ulang.
Itu bukan menolak, itu mencegah kerja yang terbuang.

### Gambar seperti apa yang bagus?

| Aset | Yang perlu dikirim |
|---|---|
| **Karakter** | Character sheet: depan, 3/4, samping + close-up wajah |
| **Props** | 1 sudut jelas + 1 tampak atas |
| **Bangunan/environment** | 3 sudut + 1 wide shot |
| **Tekstur** | Close-up tegak lurus, cahaya merata, tanpa bayangan |

Enam syarat umum: sudut jelas, cahaya merata, tajam (≥1000 px), latar polos,
tidak tertutup objek lain, ada acuan skala.

### 3. Commit message selalu mengikuti konvensi

Format: `<type>(<scope>): <subject>`

Contoh:
```
feat(char): tambah model nara v001 dari character sheet
asset(env): tambah tekstur pasir 2k dari poly haven
docs(vault): kunci jadwal animatic kasar ke 2 november
```

Type yang dipakai: `feat`, `fix`, `docs`, `asset`, `scene`, `refactor`, `chore`,
`build`. Scope: `scene-1`…`scene-4`, `char`, `env`, `props`, `audio`, `docs`,
`repo`, `storyboard`.

Dilarang: `update`, `fix`, `asdf`, `final beneran`.

### 4. Batas kemampuan AI

| Bisa | Tidak bisa |
|---|---|
| Terumbu, karang, batu, pulau, perahu, jaring, ikan sederhana | Sculpt detail karakter |
| Shader air/pasir/karang, lighting, kamera | Rigging halus |
| Render previz, blockout karakter | Tekstur hand-painted produksi |
| Dokumentasi & review | Audio mixing profesional |

Untuk yang tidak bisa, minta AI **menulis panduan langkah-demi-langkah** untuk
dikerjakan manusia.

## Cara memanggil AI dengan efektif

Sebutkan **scene**, **shot**, dan **aset** yang dimaksud:

```
❌ "bikin laut dong"
✅ "buat blockout terumbu untuk scene-1 shot 030-060, pakai palette
   di 20-Produksi/03-gaya-visual.md"
```

Kalau hasilnya tidak sesuai, sebut yang salah, bukan "kurang bagus":

```
❌ "airnya jelek"
✅ "warna air terlalu neon, turunkan saturasi dan tambah tint hijau"
```

## Bantuan cepat

Untuk menyuplai seluruh isi vault ke AI di luar OpenCode, jalankan:

```powershell
powershell -File scripts/baca-vault.ps1
```
