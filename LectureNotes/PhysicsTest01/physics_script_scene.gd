extends Node3D

@export var sphere_scene: PackedScene
@export var box_scene: PackedScene

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			_spawn_sphere()
		if event.button_index == MOUSE_BUTTON_RIGHT:
			_spawn_box()
func _spawn_box():
	var obj = box_scene.instantiate() as RigidBody3D
	obj.global_position = Vector3(randf_range(-5, 5), 
									5, 
									randf_range(-5, 5))
	get_tree().current_scene.add_child(obj)
	
func _spawn_sphere():
	var sphere = sphere_scene.instantiate()
	sphere.global_position = Vector3(randf_range(-5, 5), 
									5, 
									randf_range(-5, 5))
	
	sphere.set_script(preload("res://moving_action.gd"))
	get_tree().current_scene.add_child(sphere)
