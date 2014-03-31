altitudes = { "Seatle" => 0, "Denver" => 6512, "Minneapolis" => 841}

puts altitudes["Denver"]

altitudes.each_pair do |city, altitude|
  puts "#{city}: #{altitude}"
 
end
