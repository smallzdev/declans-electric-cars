extends AnimatedSprite2D

@onready var carSprite = %carSprite

# speech bubbles
@onready var speechPannel = $"../../../TextBubble"
@onready var declanSprite = $"../../../TextBubble/declan"
@onready var characterNameLabel = $"../../../TextBubble/Label"
@onready var textMessage = $"../../../TextBubble/textMessage"
@onready var cp = $"../../../TextBubble/cp"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var colourcarFrames = ["white", "red"]
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func carRepairStart():
	pass
	
	var colourcarFrames = ["white", "red"]
	var colourcarFramesRNG = colourcarFrames.pick_random()
	var PartIssue = ["tire", "tire", "hv", "hv", "battery", "battery", "vent", "vent", "gas"]
	var HVPartIssue = ["1", "2", "3"]
	var TirePartIssue = ["1", "2", "3", "4"]

func _on_start_button_pressed() -> void:
	carRepairStart()
