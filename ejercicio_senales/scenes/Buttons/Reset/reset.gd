extends TextureButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_reset_button_down():
	for blocks in get_tree().get_nodes_in_group("block"):
		blocks.delete()

	
	
	
	
	pass # Replace with function body.
