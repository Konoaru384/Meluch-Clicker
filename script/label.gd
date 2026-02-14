extends Label





func _on_texture_button_pressed() -> void:
	var buttontexture = get_parent().get_node("TextureButton")
	var Melenchonadd= int(text)+1
	text = str(Melenchonadd)
	print("Melenchon cliquée", Melenchonadd)
	
	var chooseMelenchon = ceil(randf_range(0, 2))
	print (chooseMelenchon)
	if chooseMelenchon == 1: 
		buttontexture.texture_normal = load("res://texture/melenchon/Melenchonid1.png")
	elif chooseMelenchon == 2:
		buttontexture.texture_normal = load("res://texture/melenchon/Melenchonid2.png")
	else:
		print("tes con !? ho lis le code idiot")
	
	
