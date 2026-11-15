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
	var colourcarFramesRNG = colourcarFrames.pick_random()
	speechPannel.visible = false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func carRepairStart():
	var PartIssue = ["tire", "tire", "hv", "hv", "battery", "battery", "vent", "vent", "gas"]
	var PartIssueRNG = PartIssue.pick_random()
	var HVPartIssue = ["1", "2", "3"]
	var TirePartIssue = ["1", "2", "3", "4"]
	speechPannel.visible = true
	Global.partNeededtoFix = PartIssueRNG
	if PartIssueRNG == "tire":
		Global.partNeededtoFix = PartIssueRNG + TirePartIssue
		print(Global.partNeededtoFix)
		var TirePartIssueRNG = TirePartIssue.pick_random()
		textMessage = "I would like my tire" + str(TirePartIssueRNG) + " replaced please Declan."
		await get_tree().create_timer(4).timeout
		cp.visible = false
		textMessage = "Okay sure thing!"
		await get_tree().create_timer(3).timeout
		speechPannel.visible = false
		cp.visible = true
	elif PartIssueRNG == "hv":
		var HVPartIssueRNG = HVPartIssue.pick_random()

func _on_start_button_pressed() -> void:
	carRepairStart()
