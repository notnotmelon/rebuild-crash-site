script.on_event(defines.events.on_entity_died, function(event)
	local entity = event.entity
	entity.surface.spill_item_stack{
		position = entity.position,
		stack = {name = 'crash-site-spaceship', count = 1},
		enable_looted = true,
		force = entity.force_index,
		allow_belts = true,
		use_start_position_on_failure = true
	}
end, {
	{filter = 'name', name = 'crash-site-spaceship'},
	{filter = 'type', type = 'container', mode = 'and'}
})