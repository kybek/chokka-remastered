extends KinematicBody2D

export var MOVE_SPEED = 200
export var idle_front : SpriteFrames
export var idle_back : SpriteFrames
export var walk_front : SpriteFrames
export var walk_back : SpriteFrames

var is_idle := true
var facing_right := true
var facing_front := true
var direction = "right"


func set_animation_frame (frames : SpriteFrames) -> void:
	if get_node("Sprite").frames != frames:
		get_node("Sprite").frames = frames


func flip_sprite () -> void:
	get_node("Sprite").flip_h = !get_node("Sprite").flip_h


func update_direction() -> void:
	if facing_right == true and direction == "left":
		direction = "right"
		flip_sprite()
	
	elif facing_right == false and direction == "right":
		direction = "left"
		flip_sprite()


func update_animation () -> void:
	update_direction()
	
	if is_idle:
		if facing_front:
			set_animation_frame(idle_front)
		
		else:
			set_animation_frame(idle_back)
	
	else:
		if facing_front:
			set_animation_frame(walk_front)
		
		else:
			set_animation_frame(walk_back)


func move (move_vec : Vector2, move_speed := MOVE_SPEED) -> void:
	move_and_slide(move_vec.normalized() * move_speed)
	is_idle = false
	get_node("IdleTimer").start()
	
	if move_vec.x != 0:
		facing_right = move_vec.x > 0
	
	if move_vec.y != 0:
		facing_front = move_vec.y > 0
	
	update_animation()


func _on_IdleTimer_timeout():
	is_idle = true
	update_animation()


var action_key_array = [
	["move_up", funcref(self, "move_up")],
	["move_down", funcref(self, "move_down")],
	["move_left", funcref(self, "move_left")],
	["move_right", funcref(self, "move_right")],
	["use_item", funcref(self, "use_item")]
]

var inventory = null
var toolbar = null

func _ready ():
	assert(get_node("HUD"))
	inventory = get_node("HUD/InventoryContainer/Inventory")
	toolbar = get_node("HUD/InventoryContainer/Toolbar")


func get_current_item () -> Dictionary:
	return toolbar.get_current_item()