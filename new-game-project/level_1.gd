extends Node2D
var enemycount = [1,1,1] 


func _physics_process(delta: float) -> void:
	if enemycount.is_empty()== false:
		pass
	else:
		$Area2D/CollisionShape2D.disabled = false
	
func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	var n_room = randi_range(1, 35)
	print("number generated")
	if n_room in [1,2,3,4,5,6,7,8,9,10]:
		get_tree().change_scene_to_file("res://map2.tscn")
	elif n_room in [12,12,13,14,15,16,17,18,19,20]:
		get_tree().change_scene_to_file("res://map3.tscn")
	elif n_room in [21,22,23,24,25,26,27,28,29,30]:
		get_tree().change_scene_to_file("res://map5.tscn")
	elif n_room in [31,31,33,34,35]:
		get_tree().change_scene_to_file("res://bossroom.tscn")
