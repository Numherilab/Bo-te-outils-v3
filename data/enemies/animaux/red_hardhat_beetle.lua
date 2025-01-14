local enemy = ...

-- Red Hardhat Beetle.

require("enemies/scrypts/dx/generic_towards_hero")(enemy)
enemy:set_properties({
  sprite = "enemies/animaux/red_hardhat_beetle",
  life = 8,
  damage = 6,
  normal_speed = 32,
  faster_speed = 48,
  hurt_style = "monster",
  push_hero_on_sword = true,
  movement_create = function()
    local m = sol.movement.create("random")
    m:set_smooth(true)
    return m
  end
})

