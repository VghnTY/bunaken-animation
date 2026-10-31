---
tags: [panduan, penamaan]
---

# Konvensi Penamaan File

## Pola umum

```
<scene>_<shot>_<deskripsi>_v<versi>.<ekstensi>
```

Contoh:

```
scene-1_shot-010_bunaken-aerial_v001.blend
scene-1_shot-050_nara-dive_v002.blend
scene-1_animatic_v001.mp4
warisan-bunaken_keyart_v001.png
```

## Aturan dasar

| Aturan | Contoh benar | Contoh salah |
|---|---|---|
| Huruf kecil semua | `scene-1` | `Scene-1` |
| Pemisah antar-bagian: `_` | `scene-1_shot-010` | `scene1-shot10` |
| Pemisah antar-kata: `-` | `nara-dive` | `nara_dive` |
| Tanpa spasi | `nara-dive` | `nara dive` |
| Tanpa karakter aneh | `daniel` | `daniel(2)` |
| Versi 3 digit | `_v001` | `_final-final2` |
| Tanpa nama orang di file | `nara.blend` | `nara_bikin_andi.blend` |

## Penomoran shot

Kelipatan **10**: `010`, `020`, `030` — supaya bisa menyisipkan shot baru
(`015`) tanpa menomori ulang semuanya.

## Versi

- `v001`, `v002`, … untuk iterasi.
- **Jangan** pakai `final`, `final2`, `fix`, `beneran-final`.
- Versi final ditentukan lewat catatan di [[04-tugas-scene-1]], bukan lewat nama file.

## Folder

| Folder | Isi |
|---|---|
| `assets/env/` | environment (terumbu, pulau, permukaan) |
| `assets/char/` | karakter + rig |
| `assets/props/` | perahu, jaring, peralatan selam, buoy |
| `assets/textures/` | tekstur gambar, tidak dipack ke `.blend` |
| `assets/audio/` | narasi, musik, SFX per scene |
| `assets/look/` | file look dev & shader |
| `scenes/` | master `.blend` per scene |
| `renders/` | hasil render (tidak di-commit) |
| `storyboard/frames/` | gambar frame storyboard per scene |

## Nama aset di dalam Blender

Wajib konsisten, karena `scene-1.blend` me-link dari banyak file:

```
ENV_reef_table-coral
ENV_surface_pier
CHR_nara_body
CHR_nara_mask
PRP_boat_small
LGT_sun_underwater
```

Prefix: `ENV_`, `CHR_`, `PRP_`, `LGT_`, `FX_`. Semua huruf kecil setelah prefix.

## Larangan

- ❌ `copy of nara.blend`
- ❌ `nara fix beneran.blend`
- ❌ `asdf.blend`
- ❌ `nara.blend` di dua folder berbeda
