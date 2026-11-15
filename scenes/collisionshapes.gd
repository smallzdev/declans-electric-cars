extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

@onready var tick = %tickandx

func _on_hv1_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.partNeededtoFix == "hv1":
		tick.frame = 0
		tick.visible = true
		Global.carsServed += 1
		Global.totalRepaired +=1
	else:
		tick.frame = 1
		tick.visible = true
		Global.carsServed += 1
		Global.repairsFailed += 1
	
func _on_hv2_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.partNeededtoFix == "hv2":
		tick.frame = 0
		tick.visible = true
		Global.carsServed += 1
		Global.totalRepaired +=1
	else:
		tick.frame = 1
		tick.visible = true
		Global.carsServed += 1
		Global.repairsFailed += 1

func _on_hv3_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.partNeededtoFix == "hv3":
		tick.frame = 0
		tick.visible = true
		Global.carsServed += 1
		Global.totalRepaired +=1
	else:
		tick.frame = 1
		tick.visible = true
		Global.carsServed += 1
		Global.repairsFailed += 1

func _on_batterypack_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.partNeededtoFix == "battery":
		tick.frame = 0
		tick.visible = true
		Global.carsServed += 1
		Global.totalRepaired +=1
	else:
		tick.frame = 1
		tick.visible = true
		Global.carsServed += 1
		Global.repairsFailed += 1

func _on_lefttire_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.partNeededtoFix == "tire1":
		tick.frame = 0
		tick.visible = true
		Global.carsServed += 1
		Global.totalRepaired +=1
	else:
		tick.frame = 1
		tick.visible = true
		Global.carsServed += 1
		Global.repairsFailed += 1

func _on_righttire_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.partNeededtoFix == "tire2":
		tick.frame = 0
		tick.visible = true
		Global.carsServed += 1
		Global.totalRepaired +=1
	else:
		tick.frame = 1
		tick.visible = true
		Global.carsServed += 1
		Global.repairsFailed += 1

func _on_blefttire_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.partNeededtoFix == "tire3":
		tick.frame = 0
		tick.visible = true
		Global.carsServed += 1
		Global.totalRepaired +=1
	else:
		tick.frame = 1
		tick.visible = true
		Global.carsServed += 1
		Global.repairsFailed += 1

func _on_bright_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if Global.partNeededtoFix == "tire4":
		tick.frame = 0
		tick.visible = true
		Global.carsServed += 1
		Global.totalRepaired +=1
	else:
		tick.frame = 1
		tick.visible = true
		Global.carsServed += 1
		Global.repairsFailed += 1


func _on_vent_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	pass # Replace with function body.
