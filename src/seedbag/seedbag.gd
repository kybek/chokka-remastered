extends Node

class_name SeedBag

var _seed : Seed = null setget set_seed, get_seed

export var icon : Texture

func set_seed (new_seed : Seed) -> void:
	_seed = new_seed


func get_seed () -> Seed:
	return _seed


func _init (_seed : Seed):
	self._seed = _seed
	_ready()


func _ready ():
	assert(icon)
	var sprite = Sprite.new()
	sprite.name = "Icon"
	sprite.texture = icon
	add_child(sprite)