require 'rubygems'
require 'open-uri'
require 'nokogiri'

puts "Weather Forecast"
puts "Enter a town, city, or country:\n"
location = gets.chomp


array = []
doc = Nokogiri::HTML(open("http://www.google.com/search?q=weather+in+#{location}/"))
doc.xpath('//td').each do |node|
    array <<  node.text
end

puts "\nToday's weather forecast for #{location.capitalize} is #{(array[16]).downcase}"
puts array[20]
puts array[24]
puts "Temperature now: #{array[6]}\n\n"
puts "Temperature forecasts:"
puts "#{array[9]}: #{array[28]} - #{array[27]}"
puts "#{array[10]}: #{array[30]} - #{array[29]}"
puts "#{array[11]}: #{array[32]} - #{array[31]}"
