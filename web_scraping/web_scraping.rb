require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com', 443)

# Para fazer chamadas https
https.use_ssl = true

response = https.get("/")

doc = Nokogiri::HTML(response.body)

h1 = doc.at('h1')
puts h1.content

href_post = doc.at('div a')
puts href_post.content
puts href_post['href']

# Para pegar o resultado de todos
doc.search('div a').each do |a|
    puts a.content
    puts a['href']
    puts ''
end
