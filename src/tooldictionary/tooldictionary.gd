var data = {
	"hoe" : {
		"name" : "Hoe",
		"icon" : load("res://assets/tools/hoe/icon.png"),
		"effect" : {
			"type" : "change_tile",
			"target" : {
				"type" : "cell",
				"tags" : [["grass", "plowable"], ["dirt", "plowable"]],
				"range" : Vector2(0, 0)
			},
			"final" : {
				"type" : "tags",
				"tags" : [["dirt"]]
			}
		}
	},
	# Remove it later. For debug purposes only.
	"grass_planter" : {
		"name" : "Grass Planter",
		"icon" : load("res://icon.png"),
		"effect" : {
			"type" : "change_tile",
			"target" : {
				"type" : "cell",
				"tags" : [["dirt"]],
				"range" : Vector2(1, 1)
			},
			"final" : {
				"type" : "tags",
				"tags" : [["grass"]]
			}
		}
	}
}