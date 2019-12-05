var seed_dictionary = preload("res://src/seeddictionary/seeddictionary.gd").new().data

var effects = {
	"basic_seed_effect" : {
		"type" : "change_tile",
		"target" : {
			"type" : "cell",
			"tags" : [["dirt", "watered"], ["dirt"]],
			"range" : Vector2(0, 0)
		},
		"final" : {
			"type" : "tags",
			"tags" : [["dirt", "sowed"]]
		}
	}
}

var data = {
	"type1" : {
		"icon" : preload("res://assets/seedbag/type1/icon.png"),
		"seed" : seed_dictionary["type1"],
		"effect" : effects["basic_seed_effect"]
	},
	"type2" : {
		"icon" : preload("res://assets/seedbag/type2/icon.png"),
		"seed" : seed_dictionary["type2"],
		"effect" : effects["basic_seed_effect"]
	}
}