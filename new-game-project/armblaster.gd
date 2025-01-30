extends CharacterBody2D

var player
const BASE_SPEED = 2500
var direction
var Health = 1
var pos :Vector2

func _ready() -> void:
	global_position = pos
	
	
func _process(delta: float) -> void:
	var target = get_parent().get_node("Player")
	direction=(target.position - $".".position).normalized()
	velocity = direction * BASE_SPEED * delta 
	look_at(target.position)
	move_and_slide()





func _on_area_2d_area_entered(area: Area2D) -> void:
	Health -= 1
	if Health <= 0:
		queue_free()
