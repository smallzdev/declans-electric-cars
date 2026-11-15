extends AnimatedSprite2D

@onready var carSprite = %carSprite

# speech bubbles
@onready var speechPannel = %TextBubble
@onready var declanSprite = %declan
@onready var characterNameLabel = %characterLabel
@onready var textMessage = %textMessage
@onready var cp = %cp

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var colourcarFrames = ["white", "red"]
	var colourcarFramesRNG = colourcarFrames.pick_random()
	speechPannel.visible = false
	carSprite.frame = 0
	Global.partNeededtoFix = null

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
		textMessage.text = "I would like my tire" + str(TirePartIssueRNG) + " replaced please Declan."
		await get_tree().create_timer(4).timeout
		cp.visible = false
		characterNameLabel.text = "Declan"
		textMessage.text = "Okay sure thing!"
		await get_tree().create_timer(3).timeout
		speechPannel.visible = false
		cp.visible = true
		characterNameLabel.text = "Dre'Quan"
		
	# HV Cables
	elif PartIssueRNG == "hv":
		var HVPartIssueRNG = HVPartIssue.pick_random()
		Global.partNeededtoFix = PartIssueRNG + HVPartIssueRNG
		print(Global.partNeededtoFix)
		textMessage.text = "One of my HV Cables are broken, I think it's HV" + str(HVPartIssueRNG) + ". Can you fix it?"
		await get_tree().create_timer(4).timeout
		cp.visible = false
		characterNameLabel.text = "Declan"
		textMessage.text = "Yes, of course I can fix it~!"
		await get_tree().create_timer(3).timeout
		speechPannel.visible = false
		cp.visible = true
		characterNameLabel.text = "Dre'Quan"
	
	# battery pack
	elif PartIssueRNG == "battery":
		print(Global.partNeededtoFix)
		textMessage.text = "My battery pack is kinda dead. Plz fix."
		await get_tree().create_timer(4).timeout
		cp.visible = false
		characterNameLabel.text = "Declan"
		textMessage.text = "Okay, I'll try my best :D"
		await get_tree().create_timer(3).timeout
		cp.visible = true
		characterNameLabel.text = "Dre'Quan"
	
	# Vent
	elif PartIssueRNG == "vent":
		print(Global.partNeededtoFix)
		textMessage.text = "My vent is acting... weird.. plz help"
		await get_tree().create_timer(4).timeout
		cp.visible = false
		characterNameLabel.text = "Declan"
		textMessage.text = "Hmmm weird. Let me fix it."
		await get_tree().create_timer(3).timeout
		cp.visible = true
		characterNameLabel.text = "Dre'Quan"
	
	# If it's a gas car
	elif PartIssueRNG == "gas":
		print(Global.partNeededtoFix)
		textMessage.text = "Umm do u accept gas cars?"
		await get_tree().create_timer(4).timeout
		cp.visible = false
		characterNameLabel.text = "Declan"
		textMessage.text = "NO EWWW!!!! get outta here."
		await get_tree().create_timer(3).timeout
		speechPannel.visible = false
		cp.visible = true
		characterNameLabel.text = "Dre'Quan"
		Global.gasRejected += 1
		
func _on_start_button_pressed() -> void:
	carRepairStart()
