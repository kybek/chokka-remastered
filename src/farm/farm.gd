extends Node2D

var seedbag_dictionary = preload("res://src/seedbagdictionary/seedbagdictionary.gd").new().data
var tool_dictionary = preload("res://src/tooldictionary/tooldictionary.gd").new().data

onready var player = get_node("World/Player")
onready var toolbar = get_node("World/Player/HUD/InventoryContainer/Toolbar")
onready var inventory = get_node("World/Player/HUD/InventoryContainer/Inventory")
onready var tilemap = get_node("Ground")

func get_current_mouse_position () -> Vector2:
	return get_local_mouse_position()


func get_current_mouse_tile () -> Vector2:
	var mouse_pos = get_current_mouse_position()
	return tilemap.world_to_map(mouse_pos)
	

func _ready():
	get_node("ActionManager").tilemap = get_node("Ground")
	
#	$"Dialogue Manager".load_dialogue("res://dialogues/example_dialogue.gd")
	var seedbag1 = SeedBag.new(seedbag_dictionary["type1"])
	var seedbag2 = SeedBag.new(seedbag_dictionary["type2"])
	var hoe = Tool.new(tool_dictionary["hoe"])
	var grass_planter = Tool.new(tool_dictionary["grass_planter"])
	
	toolbar.add_item_to_slot(0, {"item" : seedbag1, "count" : 1})
	toolbar.add_item_to_slot(1, {"item" : seedbag2, "count" : 1})
	toolbar.add_item_to_slot(2, {"item" : hoe, "count" : 1})
	toolbar.add_item_to_slot(3, {"item" : grass_planter, "count" : 1})
	
	inventory.add_item_to_slot(4, {"item" : seedbag1, "count" : 1})
	inventory.add_item_to_slot(8, {"item" : seedbag2, "count" : 1})


func _process(delta):
	get_tree().call_group("Input", "set_input_mode", not $"Dialogue Manager".is_dialogue_active())


func _on_use_item():
	get_node("ActionManager").use_item(player.get_current_item(), get_current_mouse_tile())
