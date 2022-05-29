#Muhammad Lintang Panjerino
#5025201045
#Probstat E

install.packages("BSDA")
library(BSDA)

#Soal1
#Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas A terhadap
#kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
#sebanyak 9 responden. Pertama, sebelum melakukan aktivitas A, peneliti mencatat
#kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
#diminta melakukan aktivitas A. Setelah 15 menit, peneliti tersebut mencatat kembali
#kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
#mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A

#1a
#Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

tabel_saturasi_oksigen <- data.frame(
  Responden = c(1,2,3,4,5,6,7,8,9),
  X = c(78,75,67,77,70,72,78,74,77),
  Y = c(100,95,70,90,90,90,89,90,100)
)
selisih_xy <- tabel_saturasi_oksigen$Y - tabel_saturasi_oksigen$X
sd_saturasi <- sd(selisih_xy)
print(sd_saturasi)

#1b
#carilah nilai t (p-value)

mu_saturasi <- 0
n_saturasi <- 9
rerata_saturasi <- mean(selisih_xy)

t_kadar_saturasi <- (rerata_saturasi - mu_saturasi)/(sd_saturasi/sqrt(n_saturasi))
p_value <- 2*pt(-abs(t_kadar_saturasi), df=n_saturasi-1)
print(p_value)


#1c
#tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal 
#kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A jika diketahui 
#tingkat signifikansi alfa = 5% serta H0 : "tidak ada pengaruh yang signifikan secara 
#statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas A"

#H0 : tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi 
#oksigen , sebelum dan sesudah melakukan aktivitas A

#H0: mu <= mean_x (mean sebelum aktivitas A)
#H1: mu > mean_x (mean sebelum aktivitas A)

t.test(tabel_saturasi_oksigen$Y, tabel_saturasi_oksigen$X, alternative = "greater", mu = mean(tabel_saturasi_oksigen$X), conf.level = 0.95, paired = TRUE)


#Soal2
#Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
#Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
#mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
#23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan library seperti referensi pada modul).

#H0: mean <= 20000
#H1: mean > 20000
#< dan > sehingga merupakan one-tail

mean_mobil_H0 <- 20000
sampel_mobil <- 100  # n > 30 sehingga dilakukan z-test
mean_mobil_H1 <- 23500
sd_mobil <- 3900
alfa_mobil <- 0.05

zsum.test(mean.x = mean_mobil_H1, sigma.x = sd_mobil, n.x = 100, alternative = "greater", mu = mean_mobil_H0)

#2a Apakah Anda setuju dengan klaim tersebut?

print("Setuju")

#2b Jelaskan maksud dari output yang dihasilkan!

#output dari z-tes adalah : z = 8.9744 , p-value = 2.2e-16

#2c Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

#Berdasarkan p-value yaitu 2.2e-16 dimana lebih kecil dari nilai alfa (0.05), maka H0 dapat ditolak, 
#sehingga kesimpulannya adalah mobil dikemudikan rata-rata lebih dari 20000 km per tahun


#Soal3
#Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
#permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
#didapatkanlah data berikut dari perusahaan saham tersebut.

#Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
#diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
#rata-ratanya (alfa= 0.05)? Buatlah :

# A. H0 dan H1
# B. Hitung Sampel Statistik
# C. Lakukan Uji Statistik (df =2)
# D. Nilai Kritikal
# E. Keputusan
# F. Kesimpulan

n_bandung <- 19
mean_bandung <- 3.64
sd_bandung <- 1.67

n_bali <- 27
mean_bali <- 2.79
sd_bali <- 1.32

#karena n_bandung < 30 dan n_bali < 30, maka digunakan uji t

#H0: mu_Bandung = mu_Bali
#H1: mu_Bandung != mu_Bali

tsum.test(mean.x = mean_bandung, s.x = sd_bandung, n.x = n_bandung, mean.y = mean_bali, s.y = sd_bali, n.y = n_bali, var.equal = TRUE, conf.level = 0.95)
#p-value = 0.06049, alfa = 0.05
#p-value > alfa, maka H0 tidak ditolak

#nilai kritikal
qt(p = 0.05, df = 2)

#Keputusan
#H0 tidak ditolak karena tidak ada cukup bukti yang bertentangan dengan H0

#Kesimpulan
#Jadi, tidak ada perbedaan yang signifikan dari rata-rata saham di Bandung dan Bali

