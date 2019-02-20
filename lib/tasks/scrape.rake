require 'nokogiri'
require 'open-uri'
namespace :scrape do
  task :yahoo_title => :environment do

  URL = "https://news.yahoo.co.jp/"

  charset = nil

  html = open(URL) do |f|
    charset = f.charset
    f.read
  end

  doc = Nokogiri::HTML.parse(html, nil, charset)

  doc.xpath('//dt[@class="yjnSub_list_head"]').each do |node|
    puts node.inner_text
  end
  end
end
