extends AnimatedSprite2D

@onready var carSprite = %carSprite

# speech bubbles
@onready var speechPannel = $"../../../TextBubble"
@onready var declanSprite = $"../../../TextBubble/declan"
@onready var characterNameLabel = $"../../../TextBubble/Label"
@onready var textMessage = $"../../../TextBubble/textMessage".text
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
	
	# tire
	if PartIssueRNG == "tire":
		var TirePartIssueRNG = TirePartIssue.pick_random()
		Global.partNeededtoFix = PartIssueRNG + TirePartIssueRNG
		print(Global.partNeededtoFix)
		textMessage = "I would like my tire" + str(TirePartIssueRNG) + " replaced please Declan."
		await get_tree().create_timer(4).timeout
		cp.visible = false
		textMessage = "Okay sure thing!"
		await get_tree().create_timer(3).timeout
		speechPannel.visible = false
		cp.visible = true
		
	# HV Cables
	elif PartIssueRNG == "hv":
		var HVPartIssueRNG = HVPartIssue.pick_random()
		Global.partNeededtoFix = PartIssueRNG + HVPartIssueRNG
		print(Global.partNeededtoFix)
		textMessage = "One of my HV Cables are broken, I think it's HV" + str(HVPartIssueRNG) + ". Can you fix it?"
		await get_tree().create_timer(4).timeout
		cp.visible = false
		textMessage = "Yes, of course I can fix it~!"
		await get_tree().create_timer(3).timeout
		speechPannel.visible = false
		cp.visible = true
	
	# battery pack
	elif PartIssueRNG == "battery":
		pass
		

func _on_start_button_pressed() -> void:
	carRepairStart()
