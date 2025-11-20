extends Node3D

var velocity := Vector3.ZERO
const GRAVITY = -20.0

func _process(delta):
	# 중력 가속도 = a = GRAVITY
	# a(가속도) = 속도의 미분 = dv (속도의 변화) / dt(시간의 변화)
	# 속도의 변화 = 중력가속도 * 시간변화(delta)
	velocity.y = velocity.y + GRAVITY * delta  # 수치 적분
	# 위치의 변화 = 속도 * 시간변화
	global_position = global_position + velocity * delta
	
	if global_position.y < 0: ## 바닥에 충돌했다
		global_position.y = -global_position.y
		velocity.y = -velocity.y * 0.7 # 탄성계수 0.7
	
	
