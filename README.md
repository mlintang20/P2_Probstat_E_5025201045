# P2_Probstat_E_5025201045

## Muhammad Lintang Panjerino

## 5025201045

## Probstat E

<br>

## Soal 1

### 1a

Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

Membuat tabel menggunakan data.frame kemudian menghitung selisih antara kolom X dan Y, baru menggunakan fungsi sd() untuk menghitung standar deviasi

![alt text](https://github.com/mlintang20/P2_Probstat_E_5025201045/blob/master/images/ss_1a.png?raw=true)

### 1b

Carilah nilai t (p-value)

Mencari nilai t terlebih dahulu, kemudian mencari p-value dari t tersebut, sesuai dengan rumus di bawah

![alt text](https://github.com/mlintang20/P2_Probstat_E_5025201045/blob/master/images/ss_1b.png?raw=true)

### 1c

Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A jika diketahui tingkat signifikansi alfa = 5% serta H0 : "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas A"

Menggunakan fungsi t.test() :

```r
t.test(tabel_saturasi_oksigen$Y, tabel_saturasi_oksigen$X, alternative = "greater", mu = mean(tabel_saturasi_oksigen$X), conf.level = 0.95, paired = TRUE)
```

![alt text](https://github.com/mlintang20/P2_Probstat_E_5025201045/blob/master/images/ss_1c.png?raw=true)

## Soal 2

![alt text](https://github.com/mlintang20/P2_Probstat_E_5025201045/blob/master/images/ss_2.png?raw=true)

### 2a

Apakah Anda setuju dengan klaim tersebut?

```
Setuju
```

### 2b

Jelaskan maksud dari output yang dihasilkan!

```
output dari z-tes adalah : z = 8.9744 , p-value = 2.2e-16
```

### 2c

Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

```
Berdasarkan p-value yaitu 2.2e-16 dimana lebih kecil dari nilai alfa (0.05), maka H0 dapat ditolak, sehingga kesimpulannya adalah mobil dikemudikan rata-rata lebih dari 20000 km per tahun
```

## Soal 3

### 3a

```
H0: mu_Bandung = mu_Bali
H1: mu_Bandung != mu_Bali
```

### 3b

Dilakukan t test karena n < 30, kemudian dilakukan perhitungan dengan menggunakan fungsi tsum.test() :

```r
tsum.test(mean.x = mean_bandung, s.x = sd_bandung, n.x = n_bandung, mean.y = mean_bali, s.y = sd_bali, n.y = n_bali, var.equal = TRUE, conf.level = 0.95)
```

![alt text](https://github.com/mlintang20/P2_Probstat_E_5025201045/blob/master/images/ss_3b.png?raw=true)

### 3d

Menggunakan fungsi qt() dari R :

```r
qt(p = 0.05, df = 2)
```

![alt text](https://github.com/mlintang20/P2_Probstat_E_5025201045/blob/master/images/ss_3d.png?raw=true)

### 3e

#### Keputusan

```
H0 tidak ditolak karena tidak ada cukup bukti yang bertentangan dengan H0
```

### 3f

#### Kesimpulan

```
Jadi, tidak ada perbedaan yang signifikan dari rata-rata saham di Bandung dan Bali
```
