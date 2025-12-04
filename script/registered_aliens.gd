extends Control

var register_scene  = load("res://scenes/register_alien.tscn")

func _on_register_alien_btn_pressed() -> void:
	get_tree().change_scene_to_packed(register_scene)
