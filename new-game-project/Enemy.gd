extends CharacterBody2D

var player 
const BASE_SPEED = 5000
var direction
var Health = 3

func _ready() -> void:
	player = get_parent().get_node("CharacterBody2D")
	
	
func _process(delta: float) -> void:
	direction=(player.position - $".".position).normalized()
	velocity = direction * BASE_SPEED * delta 
	look_at(player.position)
	move_and_slide()





func _on_area_2d_area_entered(area: Area2D) -> void:
	Health -= 1
	if Health <= 0:
		queue_free()
