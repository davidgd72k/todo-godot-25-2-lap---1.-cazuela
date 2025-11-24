class_name TitleSceneButtonContainer
extends VBoxContainer

signal button_pressed(name: String)

func _ready() -> void:
	var buttons := get_children()
	
	for b in buttons:
		_connect_button(b)


func press_button(button_name: String):
	button_pressed.emit(button_name)


func _connect_button(button: Button):
	button.pressed.connect(press_button.bind(button.name))
