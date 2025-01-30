extends Node2D

var enemycount = [1,1,1,1] 


func _physics_process(delta: float) -> void:
	if enemycount.is_empty()== false:
		pass
	else:
		$Area2D/CollisionShape2D.disabled = false
func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	get_tree().change_scene_to_file("res://end.tscn")
