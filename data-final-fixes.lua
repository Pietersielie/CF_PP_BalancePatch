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

if (mods['planetaris-tellus']) then
    data.raw["space-connection"]["arig-tellus"].asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.vulcanus_gleba)
end