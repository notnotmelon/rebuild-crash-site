data:extend{{
	type = 'item',
	name = 'crash-site-spaceship',
	icon = '__base__/graphics/icons/crash-site-spaceship.png',
	icon_size = 64,
	icon_mipmaps = 4,
	stack_size = 1,
	place_result = 'crash-site-spaceship',
	flags = {'not-stackable', 'always-show'},
	subgroup = 'storage',
	order = 'a[items]-d[crash-site-spaceship]'
}}

data.raw.container['crash-site-spaceship'].minable.result = 'crash-site-spaceship'

local flags = {}
for _, flag in ipairs(data.raw.container['crash-site-spaceship'].flags) do
	if flag ~= 'placeable-off-grid' then
		flags[#flags + 1] = flag
	end
end
data.raw.container['crash-site-spaceship'].flags = flags