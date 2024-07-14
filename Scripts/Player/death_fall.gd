extends State

@export var final_state : State

func enter() -> void:
	super()
	parent.velocity.y = -200

func process_physics(delta: float) -> State:
	parent.velocity.y += gravity * delta
	parent.move_and_slide()
	if parent.is_on_floor():
		return final_state
	return null