extends CharacterBody2D

@onready var player = get_node("/root/Main/Player/AnimatedSprite2D")

var speed = 100.0
	
func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * speed
	move_and_slide()
	

