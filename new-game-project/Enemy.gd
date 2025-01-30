extends CharacterBody2D

var player 
const BASE_SPEED = 5000
var direction
var Health = 3

func _ready() -> void:
	player = get_parent().get_node("Player")
	
	
func _process(delta: float) -> void:
	if player.state != 2:
		direction=(player.position - $".".position).normalized()
		velocity = direction * BASE_SPEED * delta 
		look_at(player.position)
		
	else:
		direction=(player.position - $".".position).normalized()
		velocity = -direction * BASE_SPEED * delta 

		
	move_and_slide()



func _on_area_2d_area_entered(area: Area2D) -> void:
	Health -= 1
	if Health <= 0:
		queue_free()
