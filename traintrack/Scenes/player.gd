extends CharacterBody3D

const speed = 50
const acceleration = 0.1

func _physics_process(delta):
	if Input.is_action_pressed("Train_speed_up") and velocity.z > -speed: #accelerate
		velocity.z -= acceleration
	elif Input.is_action_pressed("Train_slow_down") and velocity.z < speed*0.1: #braking
		velocity.z = lerp(velocity.z,0.0, 0.05)
	else:
		velocity.z = lerp(velocity.z,0.0, 0.001) #slowed to resistance


	move_and_slide()
