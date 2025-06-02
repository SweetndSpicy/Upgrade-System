extends Panel

@onready var title: Label = %Title
@onready var description: RichTextLabel = %Description
@onready var item_slot: TextureRect = %ItemSlot
@onready var item_type: RichTextLabel = %ItemType
@onready var defense: RichTextLabel = %Defense
@onready var health: RichTextLabel = %Health
@onready var block_chance: RichTextLabel = %BlockChance
@onready var cooldown_rate: RichTextLabel = %CooldownRate
@onready var critical_chance: RichTextLabel = %CriticalChance
@onready var attack_power: RichTextLabel = %AttackPower
@onready var enhancement_rate: RichTextLabel = %EnhancementRate



func show_item(item_data):
	title.text = item_data.title
	item_slot.texture = item_data.icon
	description.text = item_data.description
	item_type.text = item_data.item_type
	enhancement_rate.text = "%" + str(item_data.enhancement_rate)
	
	#--------------------------------------------------------------------------
	if item_data is Armor:
		defense.text = "Defense: " + str(item_data.defense)
		health.text = "Health: " + str(item_data.health)
		block_chance.text = "Block Chance:  %" + str(item_data.block_chance)
		defense.show()
		health.show()
		block_chance.show()
	else:
		defense.hide()
		block_chance.hide()
		health.hide()
	#---------------------------------------------------------------------------
	if item_data is Weapon:
		attack_power.text = "Attack Power: " + str(item_data.attack_power)
		critical_chance.text = "Critical Chance:  " + str(item_data.critical_chance)
		attack_power.show()
		critical_chance.show()
	else:
		attack_power.hide()
		critical_chance.hide()
	#----------------------------------------------------------------------------
	if item_data is Accessory:
		critical_chance.text = "Critical Chance:  %" + str(item_data.critical_chance)
		cooldown_rate.text = "Cooldown Rate:  %" + str(item_data.cooldown_rate)
		critical_chance.show()
		cooldown_rate.show()
	else:
		critical_chance.hide()
		cooldown_rate.hide()
		
	show()
func hide_panel():
	hide()
