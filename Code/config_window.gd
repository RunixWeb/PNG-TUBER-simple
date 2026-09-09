extends Window

# Obtenemos la referencia del personaje para modificar valores como su posicion #

@export var player : Node2D

# Aqui guardamos cosas como salir de la app o modificar al jugador por medio de esta ventana #

func _on_salir_pressed() -> void:
	get_tree().quit()
