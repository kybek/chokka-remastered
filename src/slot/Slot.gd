extends TextureRect

class_name Slot

signal clicked_on


var item
var count := -1
var is_highlighted := false setget set_highlight, get_highlight


func get_count () -> int:
	return item.get_count()


func add_item (item) -> void:
	if not item:
		return
	
	self.item = item
	mouse_default_cursor_shape = Control.CURSOR_POINTING_HAND


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


func _gui_input (event):
	if event is InputEventMouseButton and event.is_pressed():
		emit_signal("clicked_on")


func _ready ():
	print('alive')