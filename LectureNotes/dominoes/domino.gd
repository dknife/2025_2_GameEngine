extends RigidBody3D

@onready var particles: GPUParticles3D = $GPUParticles3D

var has_fallen := false

func _ready():
	await get_tree().physics_frame
	
func _physics_process(_delta):
	if has_fallen:
		return
	
	if global_position.y < 0.6:
		has_fallen = true
		emit_particles()
		
func emit_particles():
	if particles == null:
		return
	
	particles.restart() # OneShot
	particles.emitting = true
	
	get_tree().create_timer(1.5).timeout.connect(_on_particles_timeout)
	
func _on_particles_timeout():
	if is_inside_tree() and particles:
		particles.emitting = false
	
