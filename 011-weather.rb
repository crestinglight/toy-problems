require 'net/http'
require 'json'


def getAllWeather
	url = "https://api.darksky.net/forecast/f23267b6360f990933cdec797dda20df/41.253549,-95.927725"
	uri = URI(url)
	response = Net::HTTP.get(uri)
	newResponse = JSON.parse(response)
	getTodayWeather(newResponse)
	
end

def getTodayWeather(newResponse)
	todaysHigh = newResponse['daily']['data'][0]['temperatureMax']
	todaysLow = newResponse['daily']['data'][0]['temperatureMin']
	precipChance = newResponse['daily']['data'][0]['precipProbability']
	displayWeather(todaysHigh, todaysLow, precipChance)
end

def displayWeather(todaysHigh, todaysLow, precipChance)
	puts "Today's high is: " + todaysHigh.to_s
	puts "Today's low is: " + todaysLow.to_s
	puts precipChance
end


getAllWeather()
