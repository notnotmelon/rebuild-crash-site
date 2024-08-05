script.on_event(defines.events.on_entity_died, function(event)
	local entity = event.entity
	entity.surface.spill_item_stack(entity.position, {name = 'crash-site-spaceship', count = 1}, true, 'player')
end, {
	{filter = 'name', name = 'crash-site-spaceship'},
	{filter = 'type', type = 'container', mode = 'and'}
})