dizi = [4, 26, 99, 3, 100, 8, 94]
max = dizi.first
min = dizi.first
  dizi.each do |sayi|
    if sayi < min
       min = sayi
    end
    
    if sayi > max
       max = sayi
    end
  end 
puts "En büyük sayı= #{max}" ; puts "En küçük sayı= #{min}"