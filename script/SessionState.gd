extends Node

var saved_aliens : Array[Alien] = []

func save_new_alien(new_alien : Alien) -> void:
	print("Session -> ", new_alien.name)
	saved_aliens.append(new_alien)
	print(new_alien)
