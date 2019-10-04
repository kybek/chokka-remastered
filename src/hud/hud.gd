extends CanvasLayer

onready var toolbar = get_node("InventoryContainer/Toolbar")
onready var inventory = get_node("InventoryContainer/Inventory")


func _ready():
	print(name + ' alive')


func toggle_inventory () -> void:
	inventory.visible = not inventory.visible


var action_key_array = [
	["toggle_inventory", funcref(self, "toggle_inventory")]
]


func process_input () -> void:
	for action_pair in action_key_array:
		var action_name : String = action_pair[0]
		var action_func = action_pair[1]
		
		if Input.is_action_just_pressed(action_name):
			action_func.call_func()


func _process(delta):
	process_input()