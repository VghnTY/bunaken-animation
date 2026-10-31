---
tags: [produksi, teknis]
---

# Spesifikasi Teknis

## Render

| Item | Nilai |
|---|---|
| Resolusi | 1920 × 1080 (16:9) |
| Frame rate | 24 fps |
| Engine | EEVEE Next |
| Blender | 5.2 LTS |
| Output per scene | MP4 (H.264) + PNG sequence untuk arsip |
| Penggabungan | 4 scene digabung di tahap akhir (DaVinci/Premiere/FFmpeg) |

**Kenapa EEVEE:** 8 orang, waktu terbatas, tanpa render farm. Cycles akan
menghabiskan waktu di lighting, bukan di cerita.

## Format file

| Tahap | Format | Catatan |
|---|---|---|
| Master scene | `.blend` per scene | satu pemilik per file |
| Aset departemen | `.blend` terpisah | di-*link/append* ke master |
| Render still | PNG 16-bit | untuk review, tidak di-commit |
| Render animasi | MP4 H.264, CRF 18 | upload ke Releases |
| Audio | WAV 48 kHz 24-bit | final mix, di-commit jika <50 MB |

## Audio

| Elemen | Detail |
|---|---|
| Narasi | Bahasa Indonesia, direkam tim sendiri, 1 suara |
| Musik | Tema utama + variasi per scene |
| SFX | Ambient laut, gelembung, ledakan bawah laut (diredam), perahu, jaring |
| Mix | Narasi selalu dominan; musik turun -6 dB saat narasi |
| Silence | 1 detik hening sebelum tagline diucapkan |

**Aturan ledakan:** jangan pakai SFX ledakan film perang. Bom ikan di bawah air
terdengar **tertahan dan menggelegar**, bukan "BOOM" sinematik. Ini juga soal
tanggung jawab: jangan membuat kekerasan terhadap laut terdengar keren.

## Subtitle

- Bahasa Indonesia, satu file `.srt`
- Maksimal 2 baris, ~42 karakter per baris
- Warna putih, outline hitam tipis
- Tidak menimpa wajah tokoh
- Timing mengikuti narasi, bukan mengikuti shot

## Penamaan & folder

Lihat [[02-konvensi-penamaan]].

## Batasan teknis yang harus diingat

- Tanpa Git LFS → **jangan pack tekstur** di `.blend`, jaga file <50 MB
- Tanpa render farm → hindari volumetrik berat dan simulasi air skala besar
- 8 orang pemula → setiap file harus bisa dibuka sendiri tanpa dependensi aneh
