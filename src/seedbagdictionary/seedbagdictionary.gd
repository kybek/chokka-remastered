var seed_dictionary = preload("res://src/seeddictionary/seeddictionary.gd").new().data

var data = {
	"type1" : {
		"icon" : preload("res://assets/seedbag/type1/icon.png"),
		"seed" : seed_dictionary["type1"]
	},
	"type2" : {
		"icon" : preload("res://assets/seedbag/type2/icon.png"),
		"seed" : seed_dictionary["type2"]
	}
}
