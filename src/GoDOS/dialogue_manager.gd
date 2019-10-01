extends Node2D

var dialogue : Dialogue


func load_dialogue (file_path) -> void:
	dialogue._reset()
	dialogue.data = load(file_path).new().data
	$DialogueBox.show()
	dialogue.start()


func set_var (key : String, value : bool) -> void:
	dialogue.variables[key] = value


func button_clicked (name : String, option : Dictionary) -> void:
	dialogue.is_button_active = false
	set_var(option["var"], true)


func merge_lines (data : Dictionary) -> String:
	var pos = "start"
	var string = ""
	
	while pos != "end":
		if data[pos].has("data"):
			if string != "":
				string = string + '\n' + data[pos]["data"]
			else:
				string = data[pos]["data"]
		
		assert(data[pos].has("next"))
		pos = data[pos]["next"]
	
	return string


func add_button (name : String, option : Dictionary) -> void:
	var button = Button.new()
	button.name = name
	button.text = merge_lines(option["data"])
	
	get_node("DialogueBox/OptionBox").add_child(button)
	print("Added " + name + " button.")
	button.connect("button_down", self, "button_clicked", [name, option])


func show_buttons (options : Dictionary) -> void:
	for name in options.keys():
		add_button(name, options[name])


func hide_buttons () -> void:
	for child in get_node("DialogueBox/OptionBox").get_children():
		child.hide()


func clear_buttons () -> void:
	for child in get_node("DialogueBox/OptionBox").get_children():
		get_node("DialogueBox/OptionBox").remove_child(child)


func on_text_change (text) -> void:
	get_node("DialogueBox/Text").text = text
	get_node("DialogueBox/Text").visible_characters = 0


func on_dialogue_finished () -> void:
	$DialogueBox.hide()
	dialogue._reset()


func _ready ():
	print("Dialogue Manager is online.")
	dialogue = Dialogue.new()
	add_child(dialogue)
	
	dialogue.connect("showed_buttons", self, "show_buttons")
	dialogue.connect("hided_buttons", self, "hide_buttons")
	dialogue.connect("cleared_buttons", self, "clear_buttons")
	dialogue.connect("text_changed", self, "on_text_change")
	dialogue.connect("dialogue_finished", self, "on_dialogue_finished")


func _process(delta):
	get_node("DialogueBox/Label").text = str(dialogue.state.s)
	get_node("DialogueBox/Label2").text = str(dialogue.variables)
	get_node("DialogueBox/Text").visible_characters += 1