extends Node

class_name Tool

var effect : Dictionary = {}

export var icon : Texture

func set_effect (new_effect_dictionary : Dictionary) -> void:
	effect = new_effect_dictionary


func get_effect () -> Dictionary:
	return effect


func set_icon (new_icon : Texture) -> void:
	icon = new_icon


func get_icon () -> Texture:
	return icon


func _init (dictionary : Dictionary):
	set_effect(dictionary["effect"])
	set_icon(dictionary["icon"])


func _ready ():
	assert(icon)
	var sprite = Sprite.new()
	sprite.name = "Icon"
	sprite.texture = icon
	add_child(sprite)