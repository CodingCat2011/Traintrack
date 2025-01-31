extends Camera2D

@export var target_position: Vector2
var speed = 50
var maxspeed = 500
var movement = 0
var smoothing_speed = 5


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
#	position.x += movement * delta
	pass


func _on_button_button_down() -> void:
#	if movement > maxspeed:
#		movement =+ speed
	position.y -= speed
