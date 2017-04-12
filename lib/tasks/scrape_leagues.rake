require 'nokogiri'
require 'open-uri'

namespace :app do
	task :scrape_leagues => :environment do
		url = 'http://www.transfermarkt.com'

		doc = Nokogiri::HTML(open(url))

		start = Time.now
		i = 0

		while i < 25 do
			League.create(
				# doesn't need to be converted to string
				country:		doc.css('tr.odd td.zentriert img, tr.even td.zentriert img')[i].values[1],
				league_link:	doc.css('tr.odd td a[title], tr.even td a[title]')[i].values[0].to_s,
				name:			doc.css('tr.odd td a[title], tr.even td a[title]')[i].values[1].to_s
			)
		i +=1

		print "\rNumber of leagues updated: #{i}"
		end

		finish = Time.now

		puts "\nIt took #{finish - start} seconds to get all leagues"
	end
end