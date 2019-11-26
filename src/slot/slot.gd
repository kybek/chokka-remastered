extends TextureRect

class_name Slot

signal clicked_on
signal hovered_on


var item
var no : int
var count := -1
var is_highlighted := false
var is_lighted := false

func get_count () -> int:
	return count


func add_item (dictionary : Dictionary) -> void:
	if not dictionary.has("item"):
		push_error("NO ITEM TO ADD")
		return
	
	if not dictionary.has("count"):
		push_error("NO COUNT TO ADD")
		return
	
	self.item = dictionary["item"]
	self.count = dictionary["count"]
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND
	set_texture(self.item.icon)


func remove_item () -> Dictionary:
	var temp = {
		"item" : item,
		"count" : count
	}
	
	self.item = {}
	self.count = 0
	mouse_default_cursor_shape = Control.CURSOR_ARROW
	return temp


func set_highlight (highlight_mode : bool) -> void:
	is_highlighted = highlight_mode
	
	if is_highlighted:
		$Highlight.show()
	else:
		$Highlight.hide()


func get_highlight () -> bool:
	return is_highlighted


func toggle_highlight () -> void:
	set_highlight(!get_highlight())


func set_light (light_mode : bool) -> void:
	is_lighted = light_mode
	
	if is_lighted:
		$Background/Light.show()
	else:
		$Background/Light.hide()


func get_light () -> bool:
	return is_lighted


func toggle_light () -> void:
	set_light(!get_light())



func get_item ():
	print(item)
	return item


var input_is_enabled = true


func set_input_mode (input_mode : bool) -> void:
	input_is_enabled = input_mode


func _gui_input (event):
	if input_is_enabled:
		if event is InputEventMouseButton and event.is_pressed():
			emit_signal("clicked_on")
		
		elif event is InputEventMouse:
			emit_signal("hovered_on")


func _ready ():
	set_texture(preload("res://icon.png"))
	add_to_group("Input")
#	print('alive')