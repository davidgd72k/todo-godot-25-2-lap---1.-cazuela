extends Node

@onready var button_container: TitleSceneButtonContainer = $UI/ButtonContainer

func _ready() -> void:
	button_container.button_pressed.connect(pressing_button)
	pass


func _process(delta: float) -> void:
	pass


func pressing_button(button_name: String):
	print("Pulsaste el botón: " + button_name)
