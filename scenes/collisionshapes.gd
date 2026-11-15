extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateUI()

# tick and x
@onready var tick = %tickandx

# Stat UI
@onready var statLabel = %statLabel

func _on_hv1_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
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
		updateUI()
		print("clicked shape")
	
func _on_hv2_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
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
		updateUI()
		print("clicked shape")

func _on_hv3_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
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
		updateUI()
		print("clicked shape")

func _on_batterypack_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
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
		updateUI()
		print("clicked shape")

func _on_lefttire_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
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
		updateUI()
		print("clicked shape")

func _on_righttire_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
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
		updateUI()
		print("clicked shape")

func _on_blefttire_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
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
		updateUI()
		print("clicked shape")

func _on_bright_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
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
		updateUI()
		print("clicked shape")


func _on_vent_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		if Global.partNeededtoFix == "vent":
			tick.frame = 0
			tick.visible = true
			Global.carsServed += 1
			Global.totalRepaired +=1
		else:
			tick.frame = 1
			tick.visible = true
			Global.carsServed += 1
			Global.repairsFailed += 1
		updateUI()
		print("clicked shape")
		
func updateUI():
	statLabel.text = "Cars Served: " + str(Global.carsServed) + "
	Gas Cars Rejected: " + str(Global.gasRejected) + "
	Cars Repaired: " + str(Global.totalRepaired) + "
	Failed Repairs: " + str(Global.repairsFailed)
