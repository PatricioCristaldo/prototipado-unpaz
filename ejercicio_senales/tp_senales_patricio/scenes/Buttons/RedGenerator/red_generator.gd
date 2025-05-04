extends TextureButton
func _ready():
	$Button.connect("button_down", self._on_button_down)
	add_to_group("blocks")
	
func _on_button_down() -> void:
	generate_block()

func generate_block():
	var block_instance = preload("res://scenes/Buttons/RedGenerator/RedGenerator.tscn").instantiate()
	add_child(block_instance)
