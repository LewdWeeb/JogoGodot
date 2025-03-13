extends Node2D

@onready var heartsContainer = $CanvasLayer/heartContainer

@onready var player = $Player

func _ready() -> void:
	heartsContainer.setMaxHearts(player.maxHealth)
	heartsContainer.updateHearts(player.currentHealth)
	player.heartChanged.connect(heartsContainer.updateHearts)


func _process(delta: float) -> void:
	pass
