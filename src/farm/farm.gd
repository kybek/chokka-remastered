extends Node2D

func _ready():
#	$"Dialogue Manager".load_dialogue("res://dialogues/example_dialogue.gd")
	pass

func _process(delta):
	$Player.move(Vector2(1, 1))