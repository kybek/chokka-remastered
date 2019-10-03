extends Node2D

func move_up () -> void:
	$Player.move(Vector2(0, -1))


func move_down () -> void:
	$Player.move(Vector2(0, 1))


func move_left () -> void:
	$Player.move(Vector2(-1, 0))


func move_right () -> void:
	$Player.move(Vector2(1, 0))


var action_key_array = [
	["move_up", funcref(self, "move_up")],
	["move_down", funcref(self, "move_down")],
	["move_left", funcref(self, "move_left")],
	["move_right", funcref(self, "move_right")]
]


var input_is_enabled := true


func set_input_mode (input_mode : bool) -> void:
	input_is_enabled = input_mode


func process_input () -> void:
	for action_pair in action_key_array:
		var action_name : String = action_pair[0]
		var action_func = action_pair[1]
		
		if Input.is_action_pressed(action_name):
			action_func.call_func()


func _process (delta):
	if input_is_enabled:
		process_input()


func _ready ():
	add_to_group("Input")
