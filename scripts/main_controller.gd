extends Node3D

@export var grid_resolution: Vector2 = Vector2(20, 20) 

func _ready() -> void:
    for x in range(grid_resolution.x):
        for z in range(grid_resolution.y):
            var instance = MeshInstance3D.new()
            instance.mesh = BoxMesh.new()
            get_tree().root.add_child(instance)
            instance.transform.origin = Vector3(x, 0.0, z)