extends TileMapLayer
class_name Layer1
var fnl := FastNoiseLite.new()

@export var layer1 : Layer1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	fnl.seed = randi()
	fnl.frequency = 0.1
	generateMap()

func generateMap() -> void:
	for x in 100:
		for y in 500:
			var noiseVal = fnl.get_noise_2d(x, y)
			if noiseVal < 0:
				set_cell(Vector2i(x, y+1), 0, Vector2i(1,1))
			else: set_cell(Vector2i(x, y+1), 0, Vector2i(5,1))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
