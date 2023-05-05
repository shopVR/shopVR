extends ARVRCamera

var ray = null    

func _ready():  
	ray = get_node("RayCast")  
	set_process(true)      
	
func _process(delta):  
	if(ray.is_enabled() and ray.is_colliding()):
		var collidedWithObject = ray.get_collider()	
		if(collidedWithObject.get_name() == "Play Game"):
			get_tree().change_scene("World.tscn")
   
	
