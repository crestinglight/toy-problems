$pokemonTypes = ["normal","fire","water","electric","grass","ice","fighting","poison","ground","flying","psychic","bug","rock","ghost","dragon","dark","steel","fairy"]

$battle_chart = [[1,1,1,1,1,1,1,1,1,1,1,1,0.5,0,1,1,0.5,1], #Normal Attacking
            [1,0.5,0.5,1,2,2,1,1,1,1,1,2,0.5,1,0.5,1,2,1], #Fire Attacking
            [1,2,0.5,1,0.5,1,1,1,2,1,1,1,2,1,0.5,1,1,1], #Water Attacking
            [1,1,2,0.5,0.5,1,1,1,0,2,1,1,1,1,0.5,1,1,1], #Electric Attacking
            [1,0.5,2,1,0.5,1,1,0.5,2,0.5,1,0.5,2,1,0.5,1,0.5,1], #Grass Attacking
            [1,0.5,0.5,1,0.5,1,1,0.5,2,0.5,1,0.5,2,1,0.5,1,0.5,1], #Ice Attacking
            [2,1,1,1,1,2,1,0.5,1,0.5,0.5,0.5,2,0,0.5,1,0.5,1], #Fighting Attacking
            [1,1,1,1,2,1,1,0.5,0.5,1,1,1,0.5,0.5,1,1,0,2], #Poison Attacking
            [1,2,1,2,0.5,1,1,2,1,0,1,0.5,2,1,1,1,2,1], # Ground Attacking
            [1,1,1,0.5,2,1,2,1,1,1,1,2,0.5,1,1,1,0.5,1], # Flying Attacking
            [1,1,1,1,1,1,2,2,1,1,0.5,1,1,1,1,0,0.5,1], # Psychic Attacking
            [1,0.5,1,1,2,1,0.5,0.5,1,0.5,2,1,1,0.5,1,2,0.5,0.5], #Bug Attacking
            [1,2,1,1,1,2,0.5,1,0.5,2,1,2,1,1,1,1,0.5,1], # Rock Attacking
            [0,1,1,1,1,1,1,1,1,1,2,1,1,2,1,0.5,1,1], #Ghost Attacking
            [1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,0.5,0], #Dragon Attacking
            [1,1,1,1,1,1,0.5,1,1,1,2,1,1,2,1,0.5,1,0.5], # Dark Attacking
            [1,0.5,0.5,0.5,1,2,1,1,1,1,1,1,2,1,1,1,0.5,2], # Steel Attacking
            [1,0.5,1,1,1,1,2,0.5,1,1,1,1,1,1,2,2,0.5,1]] # Fairy Attacking

testInput01 = ["fire", "grass"]
testInput02 = ["fighting", "normal"]
testInput03 = ["ghost", "dark"]

def attackerVictimFind(input)
	for i in 0..$pokemonTypes.length-1
		if input[0] === $pokemonTypes[i]
			$attackerVictimPosition.push(i)
		end
	end
	for x in 0..$pokemonTypes.length-1
		if input[1] === $pokemonTypes[x]
			$attackerVictimPosition.push(x)
		end
	end
	pokeFight
end

def pokeFight
	multiplier = $battle_chart[$attackerVictimPosition[0]][$attackerVictimPosition[1]]
	puts "The battle multiplier is " + multiplier.to_s + "."
end

$attackerVictimPosition = []
attackerVictimFind(testInput02)