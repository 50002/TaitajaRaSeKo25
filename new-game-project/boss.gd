extends CharacterBody2D


var player 
const BASE_SPEED = 500
var direction

var HP := 20
const Actions = [1, 2, 3]
var blaster = preload("res://armblaster.tscn")

var state = 0


func _ready() -> void:
	player = get_parent().get_node("Player")


func _physics_process(delta: float) -> void:
	var shot = blaster.instantiate()
	shot.pos = $"CollisionShape2D/ArmblasterSpawn".global_position
	if $CollisionShape2D/AnimatedSprite2D.get_frame() in [7, 8, 9]:
		get_parent().add_child(shot)
		state = 0
	if state == 0:
		$CollisionShape2D/AnimatedSprite2D.play("default")
	
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
		state = 1
		$CollisionShape2D/AnimatedSprite2D.play("Action1")
	elif atk == 2:
		pass #laser
	else:
		pass #freeSpace


func _on_area_2d_area_entered(area: Area2D) -> void:
	HP -= 1
	if HP <= 0:
		get_parent().enemycount.pop_front()
		queue_free()


func _on_animated_sprite_2d_animation_finished() -> void:
	state = 0
