BMG_KREDI = 3
PG_KREDI = 3
AYRIK_KREDI = 3
IS_SAGLIGI_KREDI = 2
FIZIK_KREDI = 3
MATEMATIK_KREDI = 4
YABANCI_DIL_KREDI = 2
print "Bilgisayar Mühendisliğine Giriş notunuz = "
bmg_not = gets.chomp.to_f
print "Programlamaya Giriş notunuz = "
pg_not = gets.chomp.to_f
print "Ayrık Matematik notunuz = "
ayrık_not = gets.chomp.to_f
print "İş Sağlığı ve Güvenliği notunuz = "
saglik_not = gets.chomp.to_f
print "Fizik notunuz = "
fizik_not = gets.chomp.to_f
print "Matematik notunuz = "
mat_not = gets.chomp.to_f
print "Yabancı Dil notunuz = "
yabanci_not = gets.chomp.to_f
puts "Dönem sonu ortalamanız hesaplanıyor,lütfen bekleyiniz..."
toplam = BMG_KREDI * bmg_not + PG_KREDI * pg_not + AYRIK_KREDI * ayrık_not + IS_SAGLIGI_KREDI * saglik_not + FIZIK_KREDI * fizik_not + MATEMATIK_KREDI * mat_not + YABANCI_DIL_KREDI * yabanci_not 
sonuc = toplam / (BMG_KREDI + PG_KREDI + AYRIK_KREDI + IS_SAGLIGI_KREDI + FIZIK_KREDI + MATEMATIK_KREDI + YABANCI_DIL_KREDI)
print "Dönem sonu ortalamanız = #{sonuc}"