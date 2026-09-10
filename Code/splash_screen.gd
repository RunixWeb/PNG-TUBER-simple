extends Control

@export var animation_player : AnimationPlayer

# Se trata de un cambio de escena para splash screen #
# Tomamos la señal de el animation player para esto  #

func _ready() -> void:
	animation_player.play("splash")

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "splash":
		get_tree().change_scene_to_file("res://Scenes/EscenaPlayer.tscn")
