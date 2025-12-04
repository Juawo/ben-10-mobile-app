extends Control

var register_scene  = load("res://scenes/register_alien.tscn")
var alien_record_scene : PackedScene = preload("res://scenes/alien_record.tscn")
@onready var v_box_container: VBoxContainer = $MarginContainer/VBoxContainer/content_form/MarginContainer/VBoxContainer/ScrollContainer/VBoxContainer

func _ready() -> void:
	print(len(SessionState.saved_aliens))
	populate_screen(SessionState.saved_aliens)

func populate_screen(data : Array[Alien]):
	for alien in data :
		var new_scene = alien_record_scene.instantiate()
		v_box_container.add_child(new_scene)
		new_scene.populate_front(alien)
	print("Quantidade : ", len(SessionState.saved_aliens))

func _on_register_alien_btn_pressed() -> void:
	get_tree().change_scene_to_packed(register_scene)
