require 'rubygems'
require 'nokogiri'
require 'open-uri'

def findGame(gameName)
	spielbound = Nokogiri::HTML(open("http://www.spielbound.org/library?title=" + gameName + "&field_playing_time_min__value=&p=All&min=All&max=All&rating=All&sort_by=title&sort_order=ASC"))
	spielbound.css('#wrap #content div #block-system-main div div div table tbody').each do |el|
		spielbound.css('h2.name').each do |line|
	   		puts line.text
	   	end
	end
end

pandemic = "pandemic"
risk = "risk"
agricola = "agricola"

findGame(agricola)