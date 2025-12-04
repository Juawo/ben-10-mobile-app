extends Control

@onready var serie_text: Label = $Panel/MarginContainer/VBoxContainer/serie_text
@onready var alien_name: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/alien_name
@onready var race: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer/race
@onready var unlock_num: Label = $Panel/MarginContainer/VBoxContainer/HBoxContainer/VBoxContainer2/unlock_num

func populate_front(alien_data : Alien):
	serie_text.text = alien_data.serie
	alien_name.text = alien_data.name
	race.text = alien_data.race
	unlock_num.text = str(alien_data.unlock_num)
