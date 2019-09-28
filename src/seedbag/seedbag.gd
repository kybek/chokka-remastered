extends Node

class_name SeedBag

var _seed : Seed = null setget set_seed, get_seed
var seed_count : int = 0

export var icon : Texture

func set_seed (new_seed : Seed) -> void:
	_seed = new_seed


func get_seed () -> Seed:
	return _seed


func set_seed_count (new_seed_count : int) -> void:
	seed_count = new_seed_count


func get_seed_count () -> int:
	return seed_count


func _init (_seed : Seed, seed_count : int):
	self._seed = _seed
	set_seed_count(seed_count)
	_ready()

func _ready ():
	assert(icon)
	var sprite = Sprite.new()
	sprite.name = "Icon"
	sprite.texture = icon
	add_child(sprite)