extends PanelContainer

const Slot = preload("res://Inventory/slot.tscn")
@onready var item_gird: GridContainer = $MarginContainer/ItemGird

func populate_item_grid(slot_datas: Array[SlotData]) -> void:
	for child in item_gird.get_children():
		child.queue_free()
	
	for slot_data in slot_datas:
		var slot = Slot.instantiate()
		item_gird.add_child(slot)
		
		if slot_data:
			slot.set_slot_data(slot_data)
	
