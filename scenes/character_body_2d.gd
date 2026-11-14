extends CharacterBody2D

var SPEED = 1500.0

func _ready() -> void:
	velocity = Vector2(-200, -200).normalized() * SPEED

func _physics_process(delta: float) -> void:
	# causes it to BOUNCE (move)
	var bounciness = move_and_collide(velocity * delta)
	# causes it to collide and bounce off it.
	if bounciness:
		velocity = velocity.bounce(bounciness.get_normal())
