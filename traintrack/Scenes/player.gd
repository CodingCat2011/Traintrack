extends CharacterBody3D

const speed = 50
const acceleration = 0.1

func _physics_process(delta):
	if Input.is_action_pressed("Train_speed_up") and velocity.z > -speed: #accelerate
		velocity.z -= acceleration
	elif Input.is_action_pressed("Train_slow_down"): #braking/ reversing
		if velocity.z < speed*0.1: #max reversing speed
			if velocity.z < -0.03: #when over min speed, slow
				velocity.z = lerp(velocity.z,0.0, 0.05)
			elif velocity.z < 5: #when under min speed and slower -5, reverse faster
				velocity.z += acceleration
	else:
		velocity.z = lerp(velocity.z,0.0, 0.001) #slowed to resistance
		
	if (Input.is_action_just_released("Train_slow_down") or Input.is_action_just_released("Train_speed_up")) and velocity.z < 1.8 and velocity.z > -1.8:
		velocity.z = 0


	move_and_slide()
