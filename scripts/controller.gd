extends Node3D

@export var grid_resolution: Vector2i = Vector2(20, 20) 
@export var grid_spacing: float = 1.2

func _ready() -> void:
    for x in range(grid_resolution.x):
        for z in range(grid_resolution.y):
            var instance = MeshInstance3D.new()
            add_child(instance)
            instance.mesh = BoxMesh.new()
            instance.global_position = Vector3(x * grid_spacing, 0.0, z * grid_spacing)