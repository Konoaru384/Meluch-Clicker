extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass





func _on_texture_button_pressed() -> void:
	#jordan pour conectée le bouton avec le label g utilisée les signaux a droite c la fleche vert a cotée dla fonction
	#evite de lenlevée stp cvar jlavait enlevée par accident c chiant a voirs
	# Replace with function body.
	var Melenchonadd= int(text)+1
	text = str(Melenchonadd)
	#la variable text c juste le texte du label enfte
	#TextureButton.Texture_normal = load("res://Melenchon2.png")
	
	print("Melenchon cliquée", Melenchonadd) # Replace with function body.
