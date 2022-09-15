extends KinematicBody2D

var velocity = Vector2.ZERO
var move_speed = 320
var gravity = 1000
var jump_force = -360

func _physics_process(delta: float) -> void:
	velocity.y += gravity*delta
	if(Input.is_action_pressed("pular")):
		velocity.y = jump_force
	
	var move_direction = int(Input.is_action_pressed("mover_direita")) - int(Input.is_action_pressed("mover_esquerda"))
	velocity.x = move_speed*move_direction
	move_and_slide(velocity)
	

