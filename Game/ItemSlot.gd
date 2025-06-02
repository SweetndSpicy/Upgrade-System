extends TextureRect
#Burayı anla bi
@export var item_data: Resource # Assign your ItemData resource in the editor

signal hovered(item_data, item_slot)
signal unhovered()

func _ready():
	connect("mouse_entered", Callable(self, "_on_mouse_entered"))
	connect("mouse_exited", Callable(self, "_on_mouse_exited"))

func _on_mouse_entered():
	emit_signal("hovered", item_data, self)

func _on_mouse_exited():
	emit_signal("unhovered")
	texture = null
