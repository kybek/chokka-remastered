var gene_dictionary = preload("res://src/genedictionary/genedictionary.gd").new().data

var data = {
	"type1" : {
		"genes" : gene_dictionary["short"]
	},
	"type2" : {
		"genes" : gene_dictionary["long"]
	}
}
