extends RigidBody2D

var pos:Vector2
var direction:float
var rot: float
const speed = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position = pos
	global_rotation = rot


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	linear_velocity = Vector2(speed, 0).rotated(direction)
