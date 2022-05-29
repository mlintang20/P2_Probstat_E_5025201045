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

### 2b

### 2c

## Soal 3

### 3a

### 3b

![alt text](https://github.com/mlintang20/P2_Probstat_E_5025201045/blob/master/images/ss_3b.png?raw=true)

### 3d

![alt text](https://github.com/mlintang20/P2_Probstat_E_5025201045/blob/master/images/ss_3d.png?raw=true)

### 3e

### 3f
