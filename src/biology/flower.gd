extends Sprite

class_name Flower

var genes : Genes = null

var phases := [
	{
		"phase_no" : 0,
		"sprite" : null,
		"days_to_next_phase" : 3
	}
]

var current_phase := 0

var current_days_on_current_phase := 0


signal killed


func kill () -> void:
	emit_signal("killed", self.name)
	set_texture(null)


func pass_phase () -> void:
	current_phase += 1
	current_days_on_current_phase = 0
	
	if current_phase >= phases.size():
		kill()


func pass_day () -> void:
	current_days_on_current_phase += 1
	
	if current_days_on_current_phase >= phases[current_phase].days_to_next_phase:
		pass_phase()


func reset () -> void:
	current_phase = 0
	current_days_on_current_phase = 0
	set_texture(phases[current_phase].sprite)


func _init (phases : Array, genes, position : Vector2):
	self.phases = phases
	self.genes = genes
	self.position = position
	reset()


func _ready ():
	reset()