extends Node3D

@onready var child_node = $Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print($Player.velocity.z)

func _on_vosn_3d_1_1_screen_exited() -> void:
	pass # Replace with function body.
	print("moved")
