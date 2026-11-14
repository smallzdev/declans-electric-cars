extends AnimatedSprite2D

@onready var carSprite = %carSprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func carRepairStart():
	var brokencarFrames = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	var brokencarRNG = brokencarFrames.pick_random()
	carSprite.frame = brokencarRNG


func _on_start_button_pressed() -> void:
	carRepairStart()
