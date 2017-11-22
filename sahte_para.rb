sahte_para = []
gercek_para = []
paralar = [[5, "587459"], [10, "875695"], [20, "fabri"], [50, "578954"], [100, "quaresma"], [200, "579864"]]

paralar.each do |para|
  para.last
    if para.last == "fabri"
       sahte_para << para
    elsif para.last == "quaresma"
          sahte_para << para
    else
        gercek_para << para
    end
end

sahte_toplam = 0
  sahte_para.each do |sahte|
  sahte_toplam = sahte_toplam + sahte.first
  end

gercek_toplam = 0
  gercek_para.each do |gercek|
  gercek_toplam = gercek_toplam + gercek.first
  end
puts "Gercek paralar = #{gercek_para}"  
puts "Gerçek paraların toplamı = #{gercek_toplam}"
puts "Sahte paralar = #{sahte_para}" 
puts "Sahte paraların toplamı = #{sahte_toplam}"
