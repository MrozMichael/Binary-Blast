extends CharacterBody2D

var speed = 400; 
	
func _process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed;
	move_and_slide();
	if velocity.length() > 0:
		$AnimatedSprite2D.play("move");
	else:
		$AnimatedSprite2D.play("idle");
	





	
	
