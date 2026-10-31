---
tags: [produksi, gaya-visual]
---

# Gaya Visual

## Arah gaya

**Stylized semi-realistis** — bentuk disederhanakan, warna diperkaya, tapi
proporsi dan cahaya tetap masuk akal. Referensi rasa: film pendek animasi 3D
yang hangat dan manusiawi, bukan kartun slapstick, bukan dokumenter fotorealistik.

## Palette

| Nama | Hex | Dipakai untuk |
|---|---|---|
| Teal laut | `#1FA3A3` | Air dangkal, rash guard Nara, aksen UI |
| Teal dalam | `#0F5C63` | Air dalam, bayangan bawah laut |
| Hijau terumbu | `#3E8E6E` | Karang hidup, vegetasi pulau |
| Oranye karang | `#E4713C` | Aksen hangat, karang, sinar matahari |
| Pasir hangat | `#E8D5B0` | Pantai, dermaga, kulit terkena cahaya |
| Krem tulang | `#F2E9DC` | Highlight, langit berkabut |

**Aturan:** oranye karang hanya muncul **sedikit** di setiap frame — sebagai aksen,
bukan warna dominan. Kalau satu frame terasa oranye, itu terlalu banyak.

## Aturan cahaya

| Scene | Mood | Cahaya |
|---|---|---|
| 1 | Hangat, aman | Golden hour, god rays lembut, saturasi tinggi |
| 2 | Dingin, tertekan | Subuh biru, kontras tinggi, saturasi turun |
| 3 | Tegang tapi manusiawi | Sore, bayangan panjang, satu sumber hangat |
| 4 | Harapan | Pagi cerah, cahaya dari atas, saturasi kembali |

Perubahan suhu warna antar scene adalah alat bercerita — jangan pakai look yang
sama di keempat scene.

## Larangan (biar tidak terlihat murah)

- ❌ Air neon biru ala iklan minuman
- ❌ Karang warna-warni pelangi
- ❌ Depth of field ekstrem di semua shot
- ❌ Lens flare setiap kali ada matahari
- ❌ Gerakan kamera goyang (handheld) di bawah laut — hanya di shot 090
- ❌ Model karakter dengan mata anime besar

## Detail yang membuat terasa Bunaken

- Dermaga **berpagar merah-putih** (bukan kayu polos)
- Perahu kecil dengan cadik, bukan hanya speedboat
- Vegetasi rapat sampai garis pantai
- Gunung **Manado Tua** berbentuk kerucut di horizon
- Pelampung tambat (mooring buoy) oranye di Scene 4

## Konsistensi antar-artist

1. Semua tekstur memakai palette di atas — tidak ada warna di luar daftar tanpa
   persetujuan lead.
2. Semua render look dev memakai **satu file** `assets/look/scene-1-look.blend`.
3. Sebelum mulai, lihat 3 frame referensi yang sudah disetujui di
   `storyboard/frames/scene-1/`.
