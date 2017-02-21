require 'rubygems'
require 'nokogiri'
require 'open-uri'

humaDoc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Huma_bird"))
humaDoc.css('div#content.mw-body div#bodyContent.mw-body-content div#mw-content-text.mw-content-ltr p').each do |el|
   puts el.text
end

agniDoc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Agni"))
agniDoc.css('div#content.mw-body div#bodyContent.mw-body-content div#mw-content-text.mw-content-ltr p').each do |el|
   puts el.text
end

budaiDoc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Budai"))
budaiDoc.css('div#content.mw-body div#bodyContent.mw-body-content div#mw-content-text.mw-content-ltr p').each do |el|
   puts el.text
end

cadejoDoc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Cadejo"))
cadejoDoc.css('div#content.mw-body div#bodyContent.mw-body-content div#mw-content-text.mw-content-ltr p').each do |el|
   puts el.text
end