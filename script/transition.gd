extends CanvasLayer

@onready var color_rect: ColorRect = $ColorRect
@onready var texture_rect: TextureRect = $TextureRect

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	color_rect.visible = false
	texture_rect.visible = false

func change_scene(path : String):
	animation_player.play("transition")
	await animation_player.animation_finished
	get_tree().change_scene_to_file(path)
	animation_player.play_backwards("transition")
	
