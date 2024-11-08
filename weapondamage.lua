Config = {}
Config.Weapons= {

    [1] = { hash = `WEAPON_UNARMED`, damageMultiplier = 0.08},
    [2] = { hash = `WEAPON_DAGGER`, damageMultiplier = 0.5},
    [3] = { hash = `WEAPON_BAT`, damageMultiplier = 0.25},
    [4] = { hash = `WEAPON_BOTTLE`, damageMultiplier = 0.25},
    [5] = { hash = `WEAPON_CROWBAR`, damageMultiplier = 0.25},
    [6] = { hash = `WEAPON_FLASHLIGHT`, damageMultiplier = 0.25},
    [7] = { hash = `WEAPON_GOLFCLUB`, damageMultiplier = 0.25},
    [8] = { hash = `WEAPON_HAMMER`, damageMultiplier = 0.25},
    [9] = { hash = `WEAPON_HATCHET`, damageMultiplier = 0.25},
    [10] = { hash = `WEAPON_KNUCKLE`, damageMultiplier = 1.00},
    [11] = { hash = `WEAPON_KNIFE`, damageMultiplier = 0.5},
    [12] = { hash = `WEAPON_MACHETE`, damageMultiplier = 1.00},
    [13] = { hash = `WEAPON_SWITCHBLADE`, damageMultiplier = 0.25},
    [14] = { hash = `WEAPON_NIGHTSTICK`, damageMultiplier = 0.25},
    [15] = { hash = `WEAPON_WRENCH`, damageMultiplier = 0.25},
    [16] = { hash = `WEAPON_BATTLEAXE`, damageMultiplier = 0.25},
    [17] = { hash = `WEAPON_POOLCUE`, damageMultiplier = 0.25},
    [18] = { hash = `WEAPON_STONE_HATCHET`, damageMultiplier = 1.0}
}

Citizen.CreateThread(function()
        for k, v in pairs(Config.Weapons) do
            Citizen.Wait(50)
            SetWeaponDamageModifier(v.hash, v.damageMultiplier) 
        end
end)
