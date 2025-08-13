extends Node3D

@export var grid_resolution: Vector2 = Vector2(20, 20) 

func _ready() -> void:
    for x in range(grid_resolution.x):
        for z in range(grid_resolution.y):
            var instance = MeshInstance3D.new()
            add_child(instance)
            instance.mesh = BoxMesh.new()
            instance.global_position = Vector3(x, 0.0, z)