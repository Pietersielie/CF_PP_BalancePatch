local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")

-- Adjust Arig's surface_properties and sand recipes
if (mods['planetaris-arig']) then
    -- Adjust surface_properties to reduce bot energy usage
    if (data.raw["planet"]["arig"]) then
        data.raw["planet"]["arig"]["surface_properties"]["gravity"] = 15
    end

    -- Reduce sand input requirements for sand sifting
    data.raw.recipe["planetaris-sand-sifting"].ingredients = {{type = "fluid", name = "planetaris-sand", amount = 100}}
    data.raw.recipe["planetaris-advanced-sand-sifting"].ingredients = {{type = "fluid", name = "planetaris-sand", amount = 100}}
    data.raw.recipe["planetaris-advanced-pure-sand-sifting"].ingredients = {{type = "fluid", name = "planetaris-sand", amount = 100}}

    -- Adjust new plastic recipe surface_properties
    data.raw.recipe["plastic-bar"].surface_conditions = {{property = "planetaris-dust-concentration", max = 50, min = 0}}
end

-- Buff Hyarion's polishing recipes to reduce machine and input requirements.
if (mods['planetaris-hyarion']) then
    data.raw.recipe["planetaris-raw-diamond"].results = {{type="item", name="planetaris-raw-diamond", amount=2}}
    data.raw.recipe["planetaris-polished-quartz"].results = {{type="item", name="planetaris-polished-quartz", amount=2}}
    data.raw.recipe["planetaris-polished-emerald"].results = {{type="item", name="planetaris-polished-emerald", amount=2}}
    data.raw.recipe["planetaris-polished-ruby"].results = {{type="item", name="planetaris-polished-ruby", amount=2}}
    data.raw.recipe["planetaris-polished-sapphire"].results = {{type="item", name="planetaris-polished-sapphire", amount=2}}
    data.raw.recipe["planetaris-polished-diamond"].results = {{type="item", name="planetaris-polished-diamond", amount=2}}
end

-- Fix Tellus-Arig connection to not have big asteroids
if (mods['planetaris-tellus']) then
    data.raw["space-connection"]["arig-tellus"].asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.vulcanus_gleba)
end

if (mods['linox']) then
    data.raw.recipe["linox-recipe_rare-earth-refining"].results = {{type="item", name="rare-earth-powder", amount=4}}
    data.raw.recipe["high-concentration-erbium-solution"].results = {
        {type = "fluid", name = "high-concentration-erbium-solution", amount = 50},
        {type = "fluid", name = "waste-water", amount = 250, ignored_by_productivity = 250},
    }
    data.raw.recipe["high-concentration-neodymium-solution"].results = {
        {type = "fluid", name = "high-concentration-neodymium-solution", amount = 50},
        {type = "fluid", name = "waste-water", amount = 250, ignored_by_productivity = 250},
    }
end