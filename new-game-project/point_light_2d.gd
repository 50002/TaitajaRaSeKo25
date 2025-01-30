extends RigidBody2D

var SpawnLocation
var direction
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SpawnLocation = get_parent().get_node("PivotPoint").get_node("Sprite2D").get_node("bulletLoc")
	direction = get_parent().get_node("PivotPoint")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
