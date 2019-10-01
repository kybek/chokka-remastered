extends Node

class_name Dialogue

var data : Dictionary
var state : Stack
var variables := {}
var is_button_active : bool = false

signal showed_buttons
signal hided_buttons
signal cleared_buttons
signal changed_avatar (image_path)
signal changed_name (name)
signal text_changed (text)
signal dialogue_finished


func show_buttons (options : Dictionary) -> void:
	is_button_active = true
	emit_signal("showed_buttons", options)


func hide_buttons () -> void:
	is_button_active = false
	emit_signal("hided_buttons")


func clear_buttons () -> void:
	emit_signal("cleared_buttons")


func change_avatar (image_path) -> void:
	emit_signal("changed_avatar", image_path)


func change_name (name) -> void:
	emit_signal("changed_name", name)


func start_element() -> void:
	assert(get_current_element().has("type"))
	
	match get_current_element()["type"]:
		"dialogue":
			state.push("data")
			state.push("start")
		
		"option":
			state.push("data")
			state.push("start")
		
		"button":
			show_buttons(get_current_element()["options"])
			state.push("data")
			state.push("start")
		
		"call":
			state.push("data")
		
		"avatar":
			change_avatar(get_current_element()["data"])
			state.push("end")
		
		"name":
			change_name(get_current_element()["data"])
			state.push("end")

		"if":
			assert(get_current_element().has("var"))
			
			if variables.has(get_current_element()["var"]) and variables[get_current_element()["var"]] == true:
				state.push("data")
				state.push("start")
			
			else:
				state.push("data")
				state.push("end")
		_:
			assert(false)


func next_element ():
	if state.size() == 0:
		return
	
	if state.top() == "end":
		while state.size() > 0 and not get_current_element().has("next"):
			state.pop()
		
		if state.size() == 0:
			return
		
		else:
			var temp = get_current_element()["next"]
			state.pop()
			state.push(temp)
	
	else:
		if get_current_element().has("data") and get_current_element()["data"] is Dictionary and (get_current_element()["data"].has("type") or get_current_element()["data"].has("start")):
			start_element()
		
		elif get_current_element().has("next"):
			var temp = get_current_element()["next"]
			state.pop()
			state.push(temp)
		
		else:
			start_element()


func next_state () -> void:
	if state.size() == 0:
		emit_signal("dialogue_finished")
		return
	
	if state.top() == "End":
		state.pop()
		return
	
	next_element()
	
	while (state.size() > 0 and
			(state.top() == "end" or
					state.top() == "start" or
					state.top() == "data" or
							(get_current_element().has("type") and get_current_element()["type"] != "line")
					)
			):
#		print (state.s)
		next_element()
	
	if get_current_element().has("type") and get_current_element()["type"] == "line":
		if get_current_element().has("data"):
			emit_signal("text_changed", get_current_element()["data"])


func get_current_element () -> Dictionary:
	var pos := data
	
	for i in state.s:
		assert(pos.has(i))
		pos = pos[i]
	
	return pos


func _init ():
	data = {}
	state = Stack.new()
	state.push("Main")
	variables = {}


func _ready ():
	print("Dialogue is online")


func _reset ():
	print("Dialogue is reseted")
	data = {}
	state = Stack.new()
	variables = {}


func start () -> void:
	state.push("Main")


func _process (delta):
	if data.size() > 0 and ((state.size() > 0 and state.top() == "Main") or Input.is_action_just_pressed("next_line")):
		if not is_button_active:
			clear_buttons()
			next_state()