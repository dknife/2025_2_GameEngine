extends Node3D

@onready var domino_count_input: LineEdit = $CanvasLayer/UIContainer/LineEdit
@onready var generate_button: Button = $CanvasLayer/UIContainer/Button
@onready var camera: Camera3D = $Camera3D

var domino_scene: PackedScene = preload('res://domino.tscn')
var dominoes: Array = []  

func _ready():
	generate_button.connect("pressed", _on_generate_pressed)
	
func _on_generate_pressed():
	var count = int(domino_count_input.text)
	print(count)
	if count>0:
		generate_spiral_dominoes(count)
		
func generate_spiral_dominoes(num_dominoes: int):
	dominoes.clear()
	
	var a: float = 0.1
	var b: float = 0.1
	var theta: float = 0.0
	var theta_step : float = PI/6
	
	for i in range(num_dominoes):
		var r = a + b * theta
		var x = r * cos(theta)
		var z = r * sin(theta)
		var domino = domino_scene.instantiate()
		domino.position = Vector3(x, 0.0, z)
		domino.rotation = Vector3(0, theta, 0)
		add_child(domino)
		dominoes.append(dominoes)
		
		theta += theta_step
		
func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		var mouse_pos = event.position
		var ray_from = camera.project_ray_origin(mouse_pos)
		var ray_to = ray_from + camera.project_ray_normal(mouse_pos) * 1000
		
		var space_state = get_world_3d().direct_space_state
		var query = PhysicsRayQueryParameters3D.create(ray_from, ray_to)
		var result = space_state.intersect_ray(query)
		
		if result and result.collider is RigidBody3D:
			var domino = result.collider
			var force_dir = (domino.position - camera.position).normalized()
			domino.apply_central_impulse(force_dir * 10)
			
		
		
		
		
		
	
