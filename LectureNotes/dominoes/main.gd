extends Node3D

@onready var domino_count_input: LineEdit = $CanvasLayer/UIContainer/LineEdit
@onready var generate_button: Button = $CanvasLayer/UIContainer/Button
@onready var camera: Camera3D = $Camera3D
@onready var domino_root: Node3D = $dominoRoot

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
	const FORWARD: float = 1.0
	var turn: float = deg_to_rad(-9.0)
	const DECAY: float = 0.98
	
	var current_transform := Transform3D()
	current_transform.origin = Vector3(FORWARD, 0, 0) # 첫번째 도미노의 위치
	
	for i in range(num_dominoes):
		var domino = domino_scene.instantiate() as RigidBody3D
		
		domino.global_transform = current_transform
		domino_root.add_child(domino)
		
		current_transform = Transform3D(current_transform.basis, current_transform.origin) \
		* Transform3D(Basis(), Vector3(FORWARD, 0, 0)) \
		* Transform3D(Basis().rotated(Vector3.UP, turn), Vector3.ZERO)
	
		turn *= DECAY
		
	
		
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
			
		
		
		
		
		
	
