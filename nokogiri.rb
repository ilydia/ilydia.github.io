# require the nokogiri gem and its dependencies
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.marthastewart.com/312598/brick-pressed-sandwich'))

# search the HTML until you find the right element for the list

# get the class with class called 'components-data' that is the span around
# each ingredient
list doc.css('.components-item')

list.each do |n|
    puts n.inner_html
end

