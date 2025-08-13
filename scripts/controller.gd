extends Node3D

@export var grid_resolution: Vector2i = Vector2(20, 20) 
@export var grid_spacing: float = 1.2

func _ready() -> void:
	# offset so grid is centered at (0,0,0)
	var offset_x := grid_resolution.x * grid_spacing * 0.5
	var offset_z := grid_resolution.y * grid_spacing * 0.5

	for x in range(grid_resolution.x):
		for z in range(grid_resolution.y):
			var instance = MeshInstance3D.new()
			add_child(instance)
			instance.mesh = BoxMesh.new()

			var pos_x = x * grid_spacing - offset_x
			var pos_z = z * grid_spacing - offset_z
			instance.global_position = Vector3(pos_x, 0.0, pos_z)