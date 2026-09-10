extends Window

# Obtenemos la referencia del personaje para modificar valores como su posicion #

@export var player : Node2D
@onready var pos_x = $VBoxContainer/HBoxContainer/POSX
@onready var pos_y = $VBoxContainer/HBoxContainer/POSY

# Aqui guardamos cosas como salir de la app o modificar al jugador por medio de esta ventana #

func _on_salir_pressed() -> void:
	get_tree().quit()

func _on_actualizar_pressed() -> void:
	var nueva_pos_x = float(pos_x.text)
	var nueva_pos_y = float(pos_y.text)
	player.global_position = Vector2(nueva_pos_x, nueva_pos_y)
