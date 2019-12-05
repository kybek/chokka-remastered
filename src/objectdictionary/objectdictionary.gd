var data = {
	"sprinkler" : {
		"name" : "Sprinkler",
		"icon" : load("res://assets/tools/hoe/icon.png"),
		"effect" : {
			"type" : "change_tile",
			"timer" : {
				"one_shot" : true,
				"automatic" : true,
				"time" : {
					"morning" : true
				}
			},
			"target" : {
				"type" : "cell",
				"tags" : [["dirt", "waterable"]],
				"range" : Vector2(1, 1)
			},
			"final" : {
				"type" : "tags",
				"tags" : [["dirt", "watered"]]
			}
		}
	}
}