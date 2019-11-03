extends Node

class_name ActionManager

var tilemap : TileMap = null

var apperance_tag_list = [
	"grass",
	"dirt",
	"plowed",
	"sowed",
	"watered"
]


var function_tag_dictionary = {
	"plowable" : {
		"allowed" : [["grass"]],
		"not_allowed" : [["plowed"], ["sowed"], ["watered"]]
	},
	"sowable" : {
		"allowed" : [["dirt", "plowed"]],
		"not_allowed" : [["grass"], ["dirt", "sowed"]]
	}
}


func is_flexible_matching_tags (origin_tags : Array, match_tags : Array) -> bool:
	var count = 0
	
	for match_tag in match_tags:
		for origin_tag in origin_tags:
			if origin_tag in match_tag:
				count += 1
		
		if count >= len(match_tag):
			return true
	
	return false


func is_tags_matching (tile : String, apperance_tags : Array, tag_dictionary : Dictionary) -> bool:
	var is_allowed = false
	
	if is_flexible_matching_tags(apperance_tags, tag_dictionary.allowed):
		is_allowed = true
	
	var is_not_allowed = false
	
	if is_flexible_matching_tags(apperance_tags, tag_dictionary.not_allowed):
		is_not_allowed = true
	
	if is_not_allowed:
		return false
	
	return is_allowed


func get_tile_tags (tile : String) -> Array:
	var apperance_tags = []
	
	for apperance_tag in apperance_tag_list:
		if tile.find(apperance_tag) != -1:
			apperance_tags.append(apperance_tag)
	
	var function_tags = []
	
	for function_tag in function_tag_dictionary:
		if is_tags_matching(tile, apperance_tags, function_tag_dictionary[function_tag]):
			function_tags.append(function_tag)
	
	return apperance_tags + function_tags


func is_strict_matching_tags (tile : String, tags : Array) -> bool:
	var tile_tags = get_tile_tags(tile)
	
	for tag in tags:
		if not tag in tile_tags:
			return false
	
	return true


func is_matching (position : Vector2, tags : Array):
	assert(tilemap)
	return is_strict_matching_tags(tilemap.tile_set.tile_get_name(tilemap.get_cellv(position)), tags)
	


func query_tile (tags : Array, position : Vector2, range_vector : Vector2 = Vector2(0, 0)) -> Array:
	var result = []
	
	for x in range(position.x - range_vector.x, position.x + range_vector.x + 1):
		for y in range(position.y - range_vector.y, position.y + range_vector.y + 1):
			for tag_list in tags:
				if is_matching(Vector2(x, y), tag_list):
					result.append(Vector2(x, y))
					break
	
	return result


#var data = {
#	"hoe" : {
#		"name" : "Hoe",
#		"icon" : load("res://assets/tools/hoe/icon.png"),
#		"effect" : {
#			"type" : "change_tile",
#			"target" : {
#				"type" : "cell",
#				"tags" : [["grass", "plowable"], ["dirt", "plowable"]],
#				"range" : Vector2(0, 0)
#			},
#			"final" : {
#				"type" : "tags",
#				"tags" : [["dirt"]]
#			}
#		}
#	}
#}


func change_tile (tags_array : Array, position : Vector2) -> void:
	var new_tile_id : int = -1
	
	for tile_id in tilemap.tile_set.get_tiles_ids():
		var tile_name = tilemap.tile_set.tile_get_name(tile_id)
		
		for tags in tags_array:
			if is_strict_matching_tags(tile_name, tags):
				new_tile_id = tile_id
				break
		
		if new_tile_id != -1:
			break
	
	tilemap.set_cellv(position, new_tile_id)


func use_item (item : Node, position : Vector2) -> void:
	if not item:
		push_error("ITEM IS NULL")
		return
	
	if not item.effect:
		push_error("ITEM HAS NO EFFECT!")
		return
	
	if item.effect.type == "change_tile":
		var tiles = query_tile(item.effect.target.tags, position, item.effect.target.range)
		for tile in tiles:
			if item.effect.final.type == "tags":
				change_tile(item.effect.final.tags, tile)