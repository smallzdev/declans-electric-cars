extends AnimatedSprite2D

@onready var carSprite = %carSprite

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var colourcarFrames = ["white", "red"]
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func carRepairStart():
	pass
	#var colourcarFrames = ["white", "red"]
	# var brokencarRNG = brokencarFrames.pick_random()
	#carSprite.frame = brokencarRNG


func _on_start_button_pressed() -> void:
	carRepairStart()
