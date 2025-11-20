extends Node3D

@export var pin_scene: PackedScene
@export var ball_scene: PackedScene

@export var rows: int = 10
@export var pin_spacing: float = 3.0
@export var y_spacing: float = 3.0
@export var start_y: float = 30.0

@export var ball_drop_height: float = 35.0
@export var ball_drop_interval: float = 0.1  # 0.1초마다 떨어트리기
@export var x_jitter: float = 0.3

var pins := []
var timer: Timer

func _ready() -> void:
	#spawn_pins()
	start_ball_timer()
	
func start_ball_timer() -> void:
	if timer and is_instance_valid(timer):
		timer.queue_free()
	timer = Timer.new()
	timer.wait_time = ball_drop_interval
	timer.one_shot = false
	timer.timeout.connect(_on_timer_timeout)
	add_child(timer)
	timer.start()
	
func _on_timer_timeout() -> void:
	drop_one_ball()
	
func drop_one_ball() -> void :
	if not ball_scene:
		push_error("ball이 없어요")
		return
	
	var ball := ball_scene.instantiate() as RigidBody3D
	add_child(ball)
	
	var jitter_x := randf_range(-x_jitter, x_jitter)
	ball.position = Vector3(jitter_x, ball_drop_height, 0)
	
	
	
	
		
	
