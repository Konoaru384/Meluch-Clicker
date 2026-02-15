extends Node2D

#  En attendant que je puisse trouver un moyen de faire charger correctement ce sera une fausse barre de chargement ca laisssera comme ca quand même au pc un moyen de charger !!! (pour prodelasieste)
# FAAAAAAAAH
# MELANCHON2027

@onready var progress_bar = $ProgressBar
@onready var fade = $Fade
@export var next_scene_path: String = "res://node_2d.tscn"

var min_time := 5.0
var elapsed := 0.0
var fake_progress := 0.0
var scene_loaded := false
var scene_resource: PackedScene = null
var switching := false
var sound = preload("res://sons/larepublique.mp3")

func _ready():
	progress_bar.value = 0
	fade.modulate.a = 0
	ResourceLoader.load_threaded_request(next_scene_path)
	$AudioStreamPlayer2D.stream = sound

func _process(delta):
	if switching:
		return

	elapsed += delta

	var t := elapsed / min_time
	if t < 1.0:
		fake_progress = t * t
	else:
		fake_progress = 1.0

	var status = ResourceLoader.load_threaded_get_status(next_scene_path)
	if status == ResourceLoader.THREAD_LOAD_LOADED and not scene_loaded:
		scene_resource = ResourceLoader.load_threaded_get(next_scene_path)
		scene_loaded = true

	progress_bar.value = fake_progress * 100

	if scene_loaded and fake_progress >= 1.0:
		switching = true
		animate_transition()

func animate_transition():
	
	$AudioStreamPlayer2D.play()
	var tween = create_tween()
	tween.tween_property(fade, "modulate:a", 1.0, 0.8)
	tween.tween_callback(Callable(self, "_finish_loading"))

func _finish_loading():
	get_tree().change_scene_to_packed(scene_resource)
