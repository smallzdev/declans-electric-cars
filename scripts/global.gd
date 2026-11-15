extends Node

var ready4NextTask = false

# global variables

# difficulty
var difficulty = null

# stats
var carsServed = 0
var gasRejected = 0
var totalRepaired = 0
var repairsFailed = 0
var totalRating = null

var partNeededtoFix = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
