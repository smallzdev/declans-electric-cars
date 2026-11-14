extends CharacterBody2D

var SPEED = 0

func _ready() -> void:
	velocity = Vector2(-200, -200).normalized() * SPEED

func _physics_process(delta: float) -> void:
	# causes it to BOUNCE (move)
	var bounciness = move_and_collide(velocity * delta)
	# causes it to collide and bounce off it.
	if bounciness:
		velocity = velocity.bounce(bounciness.get_normal())



func _on_start_button_pressed() -> void:
	if Global.difficulty == 1:
		SPEED = 500.0
	elif Global.difficulty == 2:
		SPEED = 1000.0
	elif Global.difficulty == 3:
		SPEED = 1500.0
	velocity = Vector2(-200, -200).normalized() * SPEED
	print(SPEED)


func _on_manual_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/manual.tscn")
