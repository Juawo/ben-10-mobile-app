extends Node

var saved_aliens : Array[Alien]

func save_new_alien(new_alien : Alien):
	if(!saved_aliens.has(new_alien)):
		return
	saved_aliens.append(new_alien)
