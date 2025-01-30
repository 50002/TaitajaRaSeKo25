extends CharacterBody2D


var player 
const BASE_SPEED = 500
var direction

var HP := 20
const Actions = [1, 2, 3]
var blaster = preload("res://armblaster.tscn")

func _ready() -> void:
	player = get_parent().get_node("Player")


func _physics_process(delta: float) -> void:
	print(str($"CollisionShape2D/ArmblasterSpawn".global_position))
	
	direction=(player.position - $".".position).normalized()
	velocity = direction * BASE_SPEED * delta 
	if player.position.x < position.x:
		$CollisionShape2D.scale = Vector2(-1, 1)
	else:
		$CollisionShape2D.scale = Vector2(1, 1)
	move_and_slide()
	

func _on_attack_timer_timeout() -> void:
	var atk = Actions.pick_random()
	if atk == 1:
		var shot = blaster.instantiate()
		shot.pos = $"CollisionShape2D/ArmblasterSpawn".global_position
		get_parent().add_child(shot)
	elif atk == 2:
		pass #laser
	else:
		pass #freeSpace


func _on_area_2d_area_entered(area: Area2D) -> void:
	HP -= 1
	if HP <= 0:
		queue_free()
