extends Control

@onready var item_slot: TextureRect = %ItemSlot
@onready var panel: Panel = %Panel

func _ready():
	for container in $Equipments.get_children():
		for item_slot in container.get_children():
			if item_slot.has_signal("hovered"):
				item_slot.connect("hovered", Callable(self, "_on_item_hovered"))
				item_slot.connect("unhovered", Callable(self, "_on_item_unhovered"))
	panel.hide()
	
func _on_item_hovered(item_data, item_slot):
	panel.show_item(item_data)
	# Position the panel near the mouse or item
	panel.global_position = item_slot.global_position - Vector2(275, 0)
	panel.show()
func _on_item_unhovered():
	panel.hide()
