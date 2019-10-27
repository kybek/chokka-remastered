extends Node2D

var seedbag_dictionary = preload("res://src/seedbagdictionary/seedbagdictionary.gd").new().data
var item_dictionary = preload("res://src/itemdictionary/itemdictionary.gd").new().data

onready var player = get_node("World/Player")
onready var toolbar = get_node("World/Player/HUD/InventoryContainer/Toolbar")
onready var inventory = get_node("World/Player/HUD/InventoryContainer/Inventory")


func _ready():
#	$"Dialogue Manager".load_dialogue("res://dialogues/example_dialogue.gd")
	var seedbag1 = SeedBag.new(seedbag_dictionary["type1"])
	var seedbag2 = SeedBag.new(seedbag_dictionary["type2"])
	
	toolbar.add_item_to_slot(0, {"item" : seedbag1, "count" : 1})
	toolbar.add_item_to_slot(1, {"item" : seedbag2, "count" : 1})
	
	inventory.add_item_to_slot(4, {"item" : seedbag1, "count" : 1})
	inventory.add_item_to_slot(8, {"item" : seedbag2, "count" : 1})


func _process(delta):
	get_tree().call_group("Input", "set_input_mode", not $"Dialogue Manager".is_dialogue_active())


func _on_use_item():
	player.use_item()
