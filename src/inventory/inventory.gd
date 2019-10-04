extends Node2D

class_name Inventory

var slots : Array
var current_slot : int = -1 setget set_current_slot, get_current_slot


func set_current_slot (slot_no : int) -> void:
	if slot_no == current_slot:
		return
	
	if current_slot != -1:
		slots[current_slot].toggle_highlight()
	
	current_slot = slot_no
	slots[current_slot].toggle_highlight()


func get_current_slot () -> int:
	return current_slot


func clicked_on_slot (slot_no : int) -> void:
	set_current_slot(slot_no)


func add_item_to_slot (slot_no : int, dictionary : Dictionary) -> void:
	assert(slot_no >= 0 and slot_no <= 9)
	
	slots[slot_no].add_item(dictionary)


func _ready ():
	print(name + ' alive')
	slots = $SlotContainer.get_children()
	
	for i in range(slots.size()):
		slots[i].no = i
	
	for slot in slots:
		slot.connect("clicked_on", self, "clicked_on_slot", [slot.no])
	
	set_current_slot(0)
