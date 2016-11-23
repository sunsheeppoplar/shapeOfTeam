require 'rubygems'
require 'nokogiri'
require 'open-uri'

url_base = 'http://www.transfermarkt.com'

# statically coded for David De Gea right now
url = url_base + '/sergio-romero/profil/spieler/30690'
doc = Nokogiri::HTML(open(url))

# wanted some level of check, though hardcoding player_dob[0] and player[1] would work as well
info_spans = doc.css('span.dataValue>span')

info_spans.each do |s|
	if s.attributes["itemprop"].value === "birthPlace"
		birth_place = s.content
	else
		# other value being 'nationality'
		nat = s.content
	end

	puts birth_place
	puts nat
end