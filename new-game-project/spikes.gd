extends Node2D

var state = 0 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if $AnimatedSprite2D.get_frame() in [2,3,4,5,6,7,8,9,10]:
		$Area2D/CollisionShape2D.disabled = false
	else:
		$Area2D/CollisionShape2D.disabled = true
	
	if state == 0:
		$AnimatedSprite2D.play("default")






	
	


func _on_detection_area_entered(area: Area2D) -> void:
	$AnimatedSprite2D.play("Full_extend")
	state = 1


func _on_animated_sprite_2d_animation_finished() -> void:
	state = 0
