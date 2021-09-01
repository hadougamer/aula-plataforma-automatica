extends KinematicBody2D

export(String, "none", "right", "left") var direction_h="right"
export(String, "none", "up", "down") var direction_v="none"
export var speed = 100

func _physics_process(delta):
	if self.direction_h == "right":
		self.position.x += speed * delta
	elif self.direction_h == "left":
		self.position.x -= speed * delta

	if self.direction_v == "up":
		self.position.y += speed * delta
	elif self.direction_v == "down":
		self.position.y -= speed * delta

func _on_Area_body_entered(body):
	if body.is_in_group("stage"):
		if self.direction_h == "right":
			self.direction_h = "left"
		elif self.direction_h == "left":
			self.direction_h = "right"

		if self.direction_v == "up":
			self.direction_v = "down"
		elif self.direction_v == "down":
			self.direction_v = "up"
