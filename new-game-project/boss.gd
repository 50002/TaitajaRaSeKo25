extends CharacterBody2D

var HP := 50
const Actions = [1, 2, 3]
var blaster = preload("res://armblaster.tscn")
func _physics_process(delta: float) -> void:
	print(str(Actions[0]))
	print(str(Actions[1]))
	print(str(Actions[2]))
	

func _on_attack_timer_timeout() -> void:
	var atk = Actions.pick_random()
	if atk == 1:
		var shot = blaster.instantiate()
		shot.pos = $"CollisionShape2D/Attacks/ArmblasterSpawn".global_position
		get_parent().add_child(shot)
	elif atk == 2:
		pass #laser
	else:
		pass #freeSpace
