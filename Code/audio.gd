extends Node2D

# Obtenemos las texturas que vamos a mostrar en la cabeza, por ejemplo #

@export var textura_0 : Texture2D
@export var textura_1 : Texture2D
@export var textura_2 : Texture2D
@export var sprite_modificado : Sprite2D
@onready var mic_bus: int = AudioServer.get_bus_index("MIC")
@export var threshold: float

# Aqui podemos meternos al metodo de uso del microfono por medio del audio del microfono #
# A su vez esto se obtiene con el audiostream que hay en la escena, asi tenemos el microfono en tiempo real #

func _process(_delta: float) -> void:
	var vol_db: float = AudioServer.get_bus_peak_volume_left_db(mic_bus, 0)
	var vol: float = db_to_linear(vol_db)
	
	# Buscamos ciertos niveles del sonido en decibeles #
	
	if vol > 0.3:
		sprite_modificado.texture = textura_0
	elif vol > threshold:
		sprite_modificado.texture = textura_1
	else:
		sprite_modificado.texture = textura_2
