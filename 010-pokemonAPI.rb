require 'net/http'
require 'json'


def inputURLNumbers(urlBase, inputNum)
	firstPoke = inputNum[0]
	secondPoke = inputNum[1]
	firstPokeURL = urlBase + firstPoke.to_s + "/"
	secondPokeURL = urlBase + secondPoke.to_s + "/"
	speed1 = parse1(firstPokeURL)
	speed2 = parse2(secondPokeURL)
	whoWon(speed1, speed2)
end

def parse1(url)
	uri = URI(url)
	response = Net::HTTP.get(uri)
	newResponse = JSON.parse(response)
	return newResponse['stats'][0]['base_stat']
end

def parse2(url)
	uri = URI(url)
	response = Net::HTTP.get(uri)
	newResponse = JSON.parse(response)
	return newResponse['stats'][0]['base_stat']
end

def whoWon(speed1, speed2)
	if speed1 > speed2
		puts "First pokemon won with a speed of " + speed1.to_s + " to " + speed2.to_s + "."
	elsif speed1 === speed2
		puts "It's a tie, with " + speed1.to_s + " to " + speed2.to_s + "."
			
	else
		puts "Second pokemon won with a speed of " + speed2.to_s + " to " + speed1.to_s + "."
	end
end

url = "http://pokeapi.co/api/v2/pokemon/"
testInput01 = [1, 5]
testInput02 = [134, 116]
inputURLNumbers(url, testInput02)