mobs:register_mob("mobs_pumpking:pumpking", {
	type = "monster",
	hp_max = 500,
	hp_min = 500,
	collisionbox = {-0.4, 0.00, -0.4, 0.4, 3.2, 0.4},
	visual = "mesh",
	mesh = "pumpking.x",
	textures = {{"pumpking.png"}},
	visual_size = {x=2.5, y=2.5},
	makes_footstep_sound = true,
	lifetimer=500,
	rotate=270,
	fear_height = 4,
	view_range = 9,
	pushable = true,
	walk_velocity = 2,
	run_velocity = 4,
    sounds = {
		random = "king",
		explode = "tnt_explode",
	},
	damage = 13,
	jump = true,
	drops = {
		{name = "3d_armor:leggings_mithril", chance = 15, min = 7, max = 1,},
		{name = "3d_armor:boots_diamond", chance = 16, min = 1, max = 1,},
		{name = "3d_armor:chestplate_mithril", chance = 18, min = 1, max = 1,},
		{name = "lavastuff:shield", chance = 19, min = 1, max = 1,},
		{name = "amethyst:boots_amethyst", chance = 25, min = 1, max = 1,},
		{name = "amethyst:leggings_amethyst", chance = 25, min = 1, max = 1,},
		{name = "amethyst:chestplate_amethyst", chance = 25, min = 1, max = 1,},
		{name = "amethyst:helmet_amethyst", chance = 25, min = 1, max = 1,},
		{name = "3d_armor:helmet_mithril", chance = 18, min = 1, max = 1,},
		{name = "cloud_items:cloudblock", chance = 25, min = 1, max = 30,},
		{name = "farming:bread", chance = 1, min = 1, max = 10,},
	},
	armor = 120,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 5,
	light_damage = 0,
	stepheight=2.1,
	knock_back=0,
	jump_height=12,
	on_rightclick = nil,
	attack_type = "dogfight",
	animation = {
		stand_start = 165,		stand_end = 210,
		walk_start = 220,		walk_end = 260,
		run_start = 220,		run_end = 260,
		punch_start = 300,		punch_end = 330,
		speed_normal = 15,		speed_run = 15,
	}
})

if not mobs.custom_spawn_animal then
	mobs:spawn({
		name = "mobs_pumpking:pumpking",
		nodes = {"dungeon_block:stonebrick"},
		min_light = 14,
		interval = 120,
		chance = 1,
		min_height = -31000,
		max_height = 31000,
		day_toggle = nil,
	})
	end
	
	mobs:register_egg("mobs_pumpking:pumpking", ("Pumpking"), "pumpking_egg.png")
	
	
	mobs:alias_mob("mobs_pumpking:pumpking", "mobs_pumpking:pumpking") -- compatibility
	
