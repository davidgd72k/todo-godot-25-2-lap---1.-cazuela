extends Node

@onready var button_container: TitleSceneButtonContainer = $UI/ButtonContainer

func _ready() -> void:
	button_container.button_pressed.connect(pressing_button)
	pass


func _process(delta: float) -> void:
	pass


func pressing_button(button_name: String):
	print("Pulsaste el botón: " + button_name)
	match button_name:
		"Play":
			print("Vamos a la escena de gameplay")
		"HowToPlay":
			print("Vamos a la escena que te enseña a jugar.")
		"Credit":
			print("Vamos a la escena que te dice quien ha hecho el juego (Yo mismo)")
		"Exit":
			print("Cierra el juego")
			get_tree().quit()
	print("------------------------")
