data:extend(
{
  {
    type = "item",
    name = "spiked-wall",
    icon = "__EndgameCombat__/graphics/icons/spiked-wall.png",
	icon_size = 32,
    flags = {},
    subgroup = "defensive-structure",
    order = "f[stone-wall]-f[spiked-wall-1-2]",
    place_result = "spiked-wall",	
    stack_size = 100
  },
    {
    type = "item",
    name = "tough-wall",
    icon = "__EndgameCombat__/graphics/icons/tough-wall.png",
	icon_size = 32,
    flags = {},
    subgroup = "defensive-structure",
    order = "f[stone-wall]-f[tough-wall-1-2]",
    place_result = "tough-wall",	
    stack_size = 100
  },
    {
    type = "item",
    name = "tough-spiked-wall",
    icon = "__EndgameCombat__/graphics/icons/tough-spiked-wall.png",
	icon_size = 32,
    flags = {},
    subgroup = "defensive-structure",
    order = "f[stone-wall]-f[tough-spiked-wall-1-2]",
    place_result = "tough-spiked-wall",	
    stack_size = 100
  },
    {
    type = "item",
    name = "tough-gate",
    icon = "__EndgameCombat__/graphics/icons/gate.png",
	icon_size = 32,
    flags = {},
    subgroup = "defensive-structure",
    order = "a[wall]-b[tough-gate]",
    place_result = "tough-gate",
    stack_size = 50
  },
}
)

data:extend(
{
  {
    type = "wall",
    name = "spiked-wall",
    icon = "__EndgameCombat__/graphics/icons/spiked-wall.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {mining_time = 1, result = "spiked-wall"},
    fast_replaceable_group = "wall",
    max_health = 500,
    repair_speed_modifier = 2,
    corpse = "wall-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
	attack_reaction =
    {
      {
         --how far the mirroring works
        range = 2,
         --what kind of damage triggers the mirroring
         --if not present then anything triggers the mirroring
        damage_type = "physical",
         --caused damage will be multiplied by this and added to the subsequent damages
        reaction_modifier = 0.25,
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "damage",
               --always use at least 0.1 damage
              damage = {amount = 5, type = "cutting"}
            }
          }
        },
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 3,
        percent = 20
      },
      {
        type = "impact",
        decrease = 45,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 70
      }
    },
    pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-single.png",
            priority = "extra-high",
            width = 22,
            height = 42,
            shift = {0, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 47,
            height = 32,
            shift = {0.359375, 0.5},
            draw_as_shadow = true
          }
        }
      },
      straight_vertical =
      {
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-vertical-1.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-vertical-2.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-vertical-3.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        }
      },
      straight_horizontal =
      {
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-horizontal-1.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-horizontal-2.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-horizontal-3.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-corner-right-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-corner-right-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 61,
            shift = {0.484375, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-corner-left-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-corner-left-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 60,
            shift = {0.328125, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-t-down.png",
            priority = "extra-high",
            width = 32,
            height = 42,
            shift = {0, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-t-down-shadow.png",
            priority = "extra-high",
            width = 71,
            height = 61,
            shift = {0.546875, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-ending-right.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.484375, 0.5},
            draw_as_shadow = true
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-ending-left.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/spiked-wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.328125, 0.5},
            draw_as_shadow = true
          }
        }
      }
    }
  },
  
  {
    type = "wall",
    name = "tough-wall",
    icon = "__EndgameCombat__/graphics/icons/tough-wall.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {mining_time = 1, result = "tough-wall"},
    fast_replaceable_group = "wall",
    max_health = 2000,
    repair_speed_modifier = 8,
    corpse = "wall-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    resistances =
    {
      {
        type = "physical",
        decrease = 3,
        percent = 40
      },
      {
        type = "impact",
        decrease = 50,
        percent = 75
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 40
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 100
      }
    },
    pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-single.png",
            priority = "extra-high",
            width = 22,
            height = 42,
            shift = {0, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 47,
            height = 32,
            shift = {0.359375, 0.5},
            draw_as_shadow = true
          }
        }
      },
      straight_vertical =
      {
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-vertical-1.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-vertical-2.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-vertical-3.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        }
      },
      straight_horizontal =
      {
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-horizontal-1.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-horizontal-2.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-horizontal-3.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-corner-right-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-corner-right-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 61,
            shift = {0.484375, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-corner-left-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-corner-left-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 60,
            shift = {0.328125, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-t-down.png",
            priority = "extra-high",
            width = 32,
            height = 42,
            shift = {0, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-t-down-shadow.png",
            priority = "extra-high",
            width = 71,
            height = 61,
            shift = {0.546875, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-ending-right.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.484375, 0.5},
            draw_as_shadow = true
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-ending-left.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.328125, 0.5},
            draw_as_shadow = true
          }
        }
      }
    }
  },
  
  {
    type = "wall",
    name = "tough-spiked-wall",
    icon = "__EndgameCombat__/graphics/icons/tough-spiked-wall.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {mining_time = 1, result = "tough-spiked-wall"},
    fast_replaceable_group = "wall",
    max_health = 5000,
    repair_speed_modifier = 12,
    corpse = "wall-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
	attack_reaction =
    {
      {
         --how far the mirroring works
        range = 2,
         --what kind of damage triggers the mirroring
         --if not present then anything triggers the mirroring
        damage_type = "physical",
         --caused damage will be multiplied by this and added to the subsequent damages
        reaction_modifier = 0.4,
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              type = "damage",
               --always use at least 0.1 damage
              damage = {amount = 8, type = "cutting"}
            }
          }
        },
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 5,
        percent = 40
      },
      {
        type = "impact",
        decrease = 60,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 50
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 100
      }
    },
    pictures =
    {
      single =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-single.png",
            priority = "extra-high",
            width = 22,
            height = 42,
            shift = {0, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-single-shadow.png",
            priority = "extra-high",
            width = 47,
            height = 32,
            shift = {0.359375, 0.5},
            draw_as_shadow = true
          }
        }
      },
      straight_vertical =
      {
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-vertical-1.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-vertical-2.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-vertical-3.png",
              priority = "extra-high",
              width = 22,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-vertical-shadow.png",
              priority = "extra-high",
              width = 47,
              height = 60,
              shift = {0.390625, 0.625},
              draw_as_shadow = true
            }
          }
        }
      },
      straight_horizontal =
      {
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-horizontal-1.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-horizontal-2.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-horizontal-3.png",
              priority = "extra-high",
              width = 32,
              height = 42,
              shift = {0, -0.15625}
            },
            {
              filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-straight-horizontal-shadow.png",
              priority = "extra-high",
              width = 59,
              height = 32,
              shift = {0.421875, 0.5},
              draw_as_shadow = true
            }
          }
        }
      },
      corner_right_down =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-corner-right-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-corner-right-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 61,
            shift = {0.484375, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      corner_left_down =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-corner-left-down.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-corner-left-down-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 60,
            shift = {0.328125, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      t_up =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-t-down.png",
            priority = "extra-high",
            width = 32,
            height = 42,
            shift = {0, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-t-down-shadow.png",
            priority = "extra-high",
            width = 71,
            height = 61,
            shift = {0.546875, 0.640625},
            draw_as_shadow = true
          }
        }
      },
      ending_right =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-ending-right.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-ending-right-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.484375, 0.5},
            draw_as_shadow = true
          }
        }
      },
      ending_left =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-ending-left.png",
            priority = "extra-high",
            width = 27,
            height = 42,
            shift = {-0.078125, -0.15625}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/tough-spiked-wall/wall-ending-left-shadow.png",
            priority = "extra-high",
            width = 53,
            height = 32,
            shift = {0.328125, 0.5},
            draw_as_shadow = true
          }
        }
      }
    }
  },
  
  
  --gate
    {
    type = "gate",
    name = "tough-gate",
    icon = "__EndgameCombat__/graphics/icons/gate.png",
	icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    fast_replaceable_group = "wall",
    minable = {hardness = 0.2, mining_time = 0.5, result = "tough-gate"},
    max_health = 2000,
    corpse = "small-remnants",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    opening_speed = 0.0666666,
    activation_distance = 3,
    timeout_to_close = 5,
    resistances =
    {
      {
        type = "physical",
        decrease = 3,
        percent = 40
      },
      {
        type = "impact",
        decrease = 45,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 30
      },
      {
        type = "fire",
        percent = 100
      },
      {
        type = "laser",
        percent = 70
      }
    },
    vertical_animation =
    {
      layers =
      {
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-vertical.png",
          line_length = 8,
          width = 21,
          height = 60,
          frame_count = 16,
          shift = {0.015625, -0.40625}
        },
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-vertical-shadow.png",
          line_length = 8,
          width = 41,
          height = 50,
          frame_count = 16,
          shift = {0.328125, 0.3},
          draw_as_shadow = true
        }
      }
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-horizontal.png",
          line_length = 8,
          width = 32,
          height = 36,
          frame_count = 16,
          shift = {0, -0.21875}
        },
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-horizontal-shadow.png",
          line_length = 8,
          width = 62,
          height = 28,
          frame_count = 16,
          shift = {0.4375, 0.46875},
          draw_as_shadow = true
        }
      }
    },
    vertical_base =
    {
      layers =
      {
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-base-vertical.png",
          width = 32,
          height = 32
        },
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-base-vertical-mask.png",
          width = 32,
          height = 32,
          apply_runtime_tint = true
        }
      }
    },
    horizontal_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-horizontal-left.png",
          line_length = 8,
          width = 32,
          height = 47,
          frame_count = 16,
          shift = {0, -0.140625 + 0.125}
        },
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-horizontal-shadow-left.png",
          line_length = 8,
          width = 73,
          height = 27,
          frame_count = 16,
          shift = {0.078125, 0.171875 + 0.125},
          draw_as_shadow = true
        }
      }
    },
    horizontal_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-horizontal-right.png",
          line_length = 8,
          width = 32,
          height = 43,
          frame_count = 16,
          shift = {0, -0.203125 + 0.125}
        },
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-horizontal-shadow-right.png",
          line_length = 8,
          width = 73,
          height = 28,
          frame_count = 16,
          shift = {0.60938, 0.2875 + 0.125},
          draw_as_shadow = true
        }
      }
    },
    vertical_rail_animation_left =
    {
      layers =
      {
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-vertical-left.png",
          line_length = 8,
          width = 22,
          height = 54,
          frame_count = 16,
          shift = {0, -0.46875}
        },
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-vertical-shadow-left.png",
          line_length = 8,
          width = 47,
          height = 48,
          frame_count = 16,
          shift = {0.27, -0.16125 + 0.5},
          draw_as_shadow = true
        }
      }
    },
    vertical_rail_animation_right =
    {
      layers =
      {
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-vertical-right.png",
          line_length = 8,
          width = 22,
          height = 55,
          frame_count = 16,
          shift = {0, -0.453125}
        },
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-vertical-shadow-right.png",
          line_length = 8,
          width = 47,
          height = 47,
          frame_count = 16,
          shift = {0.27, 0.803125 - 0.5},
          draw_as_shadow = true
        }
      }
    },
    vertical_rail_base =
    {
      filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-base-vertical.png",
      line_length = 8,
      width = 64,
      height = 64,
      frame_count = 16,
      shift = {0, 0},
    },
    horizontal_rail_base =
    {
      filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-base-horizontal.png",
      line_length = 8,
      width = 64,
      height = 45,
      frame_count = 16,
      shift = {0, -0.015625 + 0.125},
    },
    vertical_rail_base_mask =
    {
      filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-base-mask-vertical.png",
      width = 63,
      height = 39,
      shift = {0.015625, -0.015625},
      apply_runtime_tint = true
    },
    horizontal_rail_base_mask =
    {
      filename = "__EndgameCombat__/graphics/entity/gate/gate-rail-base-mask-horizontal.png",
      width = 53,
      height = 45,
      shift = {0.015625, -0.015625 + 0.125},
      apply_runtime_tint = true
    },
    horizontal_base =
    {
      layers =
      {
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-base-horizontal.png",
          width = 32,
          height = 23,
          shift = {0, 0.125}
        },
        {
          filename = "__EndgameCombat__/graphics/entity/gate/gate-base-horizontal-mask.png",
          width = 32,
          height = 23,
          apply_runtime_tint = true,
          shift = {0, 0.125}
        }
      }
    },
    wall_patch =
    {
      north =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/gate/wall-patch-north.png",
            width = 22,
            height = 35,
            shift = {0, -0.62}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/gate/wall-patch-north-shadow.png",
            width = 46,
            height = 31,
            shift = {0.3, 0.20},
            draw_as_shadow = true
          }
        }
      },
      east =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/gate/wall-patch-east.png",
            width = 11,
            height = 40,
            shift = {0.328125, -0.109375}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/gate/wall-patch-east-shadow.png",
            width = 38,
            height = 32,
            shift = {0.8125, 0.46875},
            draw_as_shadow = true
          }
        }
      },
      south =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/gate/wall-patch-south.png",
            width = 22,
            height = 40,
            shift = {0, -0.125}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/gate/wall-patch-south-shadow.png",
            width = 48,
            height = 25,
            shift = {0.3, 0.95},
            draw_as_shadow = true
          }
        }
      },
      west =
      {
        layers =
        {
          {
            filename = "__EndgameCombat__/graphics/entity/gate/wall-patch-west.png",
            width = 11,
            height = 40,
            shift = {-0.328125, -0.109375}
          },
          {
            filename = "__EndgameCombat__/graphics/entity/gate/wall-patch-west-shadow.png",
            width = 46,
            height = 32,
            shift = {0.1875, 0.46875},
            draw_as_shadow = true
          }
        }
      }
    },
    wall_diode_green =
    {
      filename = "__base__/graphics/entity/gate/wall-diode-green.png",
      width = 21,
      height = 22,
      shift = {0, -0.78125}
    },
    wall_diode_green_light =
    {
      minimum_darkness = 0.3,
      color = {g=1},
      shift = {0, -0.78125},
      size = 1,
      intensity = 0.3
    },
    wall_diode_red =
    {
      filename = "__base__/graphics/entity/gate/wall-diode-red.png",
      width = 21,
      height = 22,
      shift = {0, -0.78125}
    },
    wall_diode_red_light =
    {
      minimum_darkness = 0.3,
      color = {r=1},
      shift = {0, -0.78125},
      size = 1,
      intensity = 0.3
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    },
    close_sound =
    {
      variations = { filename = "__base__/sound/gate1.ogg", volume = 0.5 },
      aggregation =
      {
        max_count = 1,
        remove = true
      }
    }
  },
}
)