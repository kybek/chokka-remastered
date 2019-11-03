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
	}
}