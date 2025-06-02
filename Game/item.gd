extends Area2D

var current_enhancement_rate :int= 0
var max_enhancement_rate :int= 120
var breakable :bool= false
var is_succesfull :bool= true


@export var materials :Array[UpgradeMaterial]
@export var equipments :Array[Equipment]
@onready var sprite_2d: Sprite2D = %Sprite2D

func _ready() -> void:
	print("Welcome to the game. Rules are simple. You have Upgrade Materials.
	
	Stone: Upgrades your equipments by %3.
	
	Coal: Upgrades your equipments by %6.
	
	Iron: Upgrades your equipments by %9.
	
	Gold: Upgrades your equipments by %12.
	
	Platinum: Upgrades your equipments by %15.
	
	--------------------------------------------
	
	Each item can be upgraded up to %120.
	
	If item's enhancement rate is below %30, upgrade success chance is %90.
	
	If the rate is between %30 - %60, upgrade success chance is %75.
	
	%60 - %90, success chance is %30.
	
	For items above %90, success chance is only %15.
	
	-------------------------------------------------
	
	Each upgrade increases the attributes of equipments.
	
	Good luck.
	
	------------------------------------------------
	
	
	")

func upgrade(equipment: Equipment, material: UpgradeMaterial):
	pass
