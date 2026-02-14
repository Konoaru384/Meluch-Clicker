extends Node2D

@onready var fade = $Fade

func _ready():
	fade.modulate.a = 1.0
	var tween = create_tween()
	tween.tween_property(fade, "modulate:a", 0.0, 0.8)
