extends Node3D

@onready var domino_count_input: LineEdit = $CanvasLayer/Control/LineEdit
@onready var generate_button: Button = $CanvasLayer/Control/Button
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
	# 기존 도미노 제거
	for d in dominoes:
		d.queue_free()
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
		domino.rotation = Vector3(0, theta + PI/2, 0)
		add_child(domino)
		dominoes.append(dominoes)
		
		theta += theta_step
		
		
		
	
