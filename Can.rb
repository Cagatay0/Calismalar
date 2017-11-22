giren_ogrenciler = [
  ["Ahmet", 50, 60], ["Mehmet", 60, 90], ["Temel", 70, 20], ["Dursun", 0, 100], ["Fadime", 100, 100],
  ["Zeynep", 30, 30]
]

  giren_ogrenciler.each do |aa|
    if aa[0].include? "h"
      aa[1] = aa[1] / 2
    end
    print aa
  end

ortalama_ogrenci = []
cana_girenler = []
cana_göre_dersi_gecen = []
  giren_ogrenciler.each do |ogrenci|
  bireysel_ortalama = ogrenci[1] * 0.4 + ogrenci[2] * 0.6 
  ortalama_ogrenci << [ogrenci[0], bireysel_ortalama]
  end
  puts "Öğrencilerin ortalaması : #{ortalama_ogrenci} "

  toplam1 = 0
  ortalama_ogrenci.each do |gnl|
    toplam1 = toplam1 + gnl[1]
  end
sinifin_genel_puan_ortalamasi = (toplam1).to_i / giren_ogrenciler.size

  ortalama_ogrenci.select do |ortlm| 
    if ortlm[1] >= 20 && ortlm[1] <= 80
     cana_girenler << [ortlm[0],ortlm[1]]
    end
  end
 
 puts "Çana giren öğrenciler : #{cana_girenler} "

 toplam = 0
   cana_girenler.each do |can_ortalama|
   toplam = toplam + can_ortalama[1]
   end
 
 genel_ortalama = (toplam) / cana_girenler.size
 
 
   giren_ogrenciler.each do |candan_gecen|
     ortalama1 = candan_gecen[1] * 0.4 + candan_gecen[2] * 0.6
    if candan_gecen[2] >= 50 && ortalama1 >= 40 && ortalama1 >= genel_ortalama
     cana_göre_dersi_gecen << [candan_gecen[0],ortalama1]
    end 
  end
 puts "Dersi geçen öğrenciler : #{cana_göre_dersi_gecen}"
 
  cana_göre_dersi_gecen.each do |dersi_gecen|
   puts "#{dersi_gecen[0]} isimli öğrenci #{dersi_gecen[1]} not ortalamasıyla dersi geçmiştir."
  end
 
 gecenlerin_yüzdesi = 100 * (cana_göre_dersi_gecen.size) / giren_ogrenciler.size
 
   puts "Toplam öğrenci sayısı : #{giren_ogrenciler.size}"
   puts "Geçen öğrenci sayısı : #{cana_göre_dersi_gecen.size}"
   puts "Sınıfın genel puan ortalaması : #{sinifin_genel_puan_ortalamasi}"
   puts "Çana girenlerin genel ortalaması : #{genel_ortalama} "
   puts "Geçenlerin yüzdesi : % #{gecenlerin_yüzdesi}"
 