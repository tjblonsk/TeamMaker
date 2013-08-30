require 'nokogiri'
require 'open-uri'
require 'pry'

#front page. this has made the http request to hacker news and is
# storing the document in a doc
doc = Nokogiri::HTML(open('https://raw.github.com/tibbon/scraping_example/master/index.html'))

# #finds all the things that have title as the class
#  firts_title = doc.css('.title a').first
#  doc.css('.title a').each do |title|
#    puts title.test.attributes["href"].value
#    puts ""
#  end

# doc.css('.subtext a').each_with_index do |item, index|
#   if (index % 2 == 1) then
#     puts item.text.to_i
#   end
# end

# # comments = []
# # doc.search('.subtext').each do |text|
# #   comments << subtext.text.split('|')

# all_articles = doc.css('.title a')

# /\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\b$/
##############################################

#Extract the text of my name in the first paragraph.
# name = doc.css('.name')
# name.text

# Extract my phone number from the first paragraph.
# phone = doc.css('p')
# phone_number = phone.children[3].to_s
# daves_number = phone_number.match(/\d{3}-\d{3}-\d{4}/)

# Extract all valid 10-digit phone numbers in the "call logs" list below.
# calls = doc.css('#call-logs li')
# nums = calls.children
# nums.each do |name|
#   puts name.to_s.match(/\d{3}-\d{3}-\d{4}/)
# end

# # Extract all the website URLs I attempted to visit
# webs = doc.css('ul')
# sites = webs[2]
# sites.children.each do |x|
#   puts x.to_s.match(/(http|https):..(www|\w).\w+.(org|com)/)
# end


# Extract all the website URLs I attempted to visit
  #gets all <ul> text
# webs = doc.css('ul')
#   #gets the third array
# sites = webs[2]
# urls = sites.children.children
# urls.each do |x|
#  puts x.to_s.match(/\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3}$/)
# end

# Extract my affiliations and suspected titles
webs = doc.css('.affiliations li')
names = webs.each do |x|
  puts x.children.to_s
end

# binding.pry




