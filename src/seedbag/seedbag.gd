extends Node

class_name SeedBag

var _seed : Seed = null

export var icon : Texture

func set_seed (new_seed_dictionary : Dictionary) -> void:
	_seed = Seed.new(new_seed_dictionary)


func get_seed () -> Seed:
	return _seed


func set_icon (new_icon : Texture) -> void:
	icon = new_icon


func get_icon () -> Texture:
	return icon


func _init (dictionary : Dictionary):
	set_seed(dictionary["seed"])
	set_icon(dictionary["icon"])


func _ready ():
	assert(icon)
	var sprite = Sprite.new()
	sprite.name = "Icon"
	sprite.texture = icon
	add_child(sprite)