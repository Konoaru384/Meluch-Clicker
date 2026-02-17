extends Label





func _on_texture_button_pressed() -> void:
	var buttontexture = get_parent().get_node("TextureButton")
	var Melenchonadd= int(text)+1
	text = str(Melenchonadd)
	print("Melenchon cliquée", Melenchonadd)
	
	var Melenchonchoose = ["Melenchonid1.png", "Melenchonid2.png"]
	var probabilities = [0.5, 4];
	
	var Melenchonchoosefix = Melenchonchoose.pick_random()
	var random = RandomNumberGenerator.new()
	print(Melenchonchoose[random.rand_weighted(probabilities)])
	buttontexture.texture_normal = load("res://texture/melenchon/" +Melenchonchoosefix)
	
	
