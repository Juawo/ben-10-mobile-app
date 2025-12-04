extends Control

var registered_aliens_scene : PackedScene = preload("res://scenes/registered_aliens.tscn")
@onready var unlock_num_text: Label = $MarginContainer/VBoxContainer/content_form/MarginContainer/VBoxContainer/unlock_num/unlock_num_text
@onready var name_input: LineEdit = $MarginContainer/VBoxContainer/content_form/MarginContainer/VBoxContainer/name/name_input
@onready var race_input: LineEdit = $MarginContainer/VBoxContainer/content_form/MarginContainer/VBoxContainer/race/race_input
@onready var serie_input: OptionButton = $MarginContainer/VBoxContainer/content_form/MarginContainer/VBoxContainer/serie/serie_input
@onready var unlock_num_input: HSlider = $MarginContainer/VBoxContainer/content_form/MarginContainer/VBoxContainer/unlock_num/unlock_num_input


func _on_unlock_num_input_value_changed(value: float) -> void:
	unlock_num_text.text = str(int(value));

func validate_form() -> bool:
	if(!name_input.text):
		return false
	if(!race_input.text):
		return false
	if(!serie_input.text):
		return false
	if(!unlock_num_input.value):
		return false
	return true
	

func _on_save_btn_pressed() -> void:
	print("Ben10")
	if(!validate_form()):
		print("Alien invalido")
		return
	var new_alien = Alien.new(name_input.text, race_input.text, serie_input.text, int(unlock_num_input.value))
	print(new_alien.name)
	SessionState.save_new_alien(new_alien)


func _on_registered_btn_pressed() -> void:
	get_tree().change_scene_to_packed(registered_aliens_scene)
