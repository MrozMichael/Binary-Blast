extends CharacterBody2D

var speed = 400; 

var hp = 5
	
func _process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * speed;
	move_and_slide();
	if velocity.length() > 0:
		$AnimatedSprite2D.play("move");
	else:
		$AnimatedSprite2D.play("idle");
	
	var hit = %HitBox.get_overlapping_bodies();
	if hit.size() > 0:
		hp -= 1 * delta; #prolly need to mult by delta
		%HealthBar.value = hp;
		

	

	
	
