extends Node2D


func _ready():
#	$"Dialogue Manager".load_dialogue("res://dialogues/example_dialogue.gd")
	pass


func _process(delta):
	get_tree().call_group("Input", "set_input_mode", not $"Dialogue Manager".is_dialogue_active())
