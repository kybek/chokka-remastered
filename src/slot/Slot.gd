extends Control

class_name Slot

var item
var is_highlighted := false setget set_highlight, get_highlight

func set_highlight (highlight_mode : bool) -> void:
	print(highlight_mode)
	is_highlighted = highlight_mode
	
	if is_highlighted:
		$Highlight.show()
	else:
		$Highlight.hide()


func get_highlight () -> bool:
	return is_highlighted


func _gui_input (event):
	print(event)
	print(event.is_pressed())
	if event is InputEventMouseButton and event.is_pressed():
		set_highlight(!get_highlight())


func _input(event):
	print(event)


func _init (item):
	self.item = item