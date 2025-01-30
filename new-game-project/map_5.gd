extends Node2D



func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	var n_room = randf_range(1, 4)
	print("number generated")
	if n_room <= 1:
		get_tree().change_scene_to_file("res://map2.tscn")
	elif n_room <=2 and n_room > 1:
		get_tree().change_scene_to_file("res://map3.tscn")
	elif n_room <=3 and n_room > 2:
		get_tree().change_scene_to_file("res://map5.tscn")
	elif n_room <=4 and n_room > 3:
		get_tree().change_scene_to_file("res://bossroom.tscn")
