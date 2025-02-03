extends Node2D
@export var player : Player
@export var layer1 : Layer1

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_player_digging(player_pos: Vector2):
	var tile_pos = layer1.local_to_map(layer1.to_local(player_pos))
	layer1.erase_cell(tile_pos + Vector2i(0, 1)) # Prints "(13, 24)")
	pass
