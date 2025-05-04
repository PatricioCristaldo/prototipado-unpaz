extends TextureButton

func _on_button_down():
	for block in get_tree().get_nodes_in_group("blocks"):
		block.delete()
