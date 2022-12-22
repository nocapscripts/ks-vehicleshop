Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'true') == 'true'
Config.Commission = 0.10 -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05 -- Percent that goes to sales person from a finance sale 5%
Config.FinanceZone = vector3(-29.53, -1103.67, 26.42)-- Where the finance menu is located
Config.PaymentWarning = 10 -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24 -- time in hours between payment being due
Config.MinimumDown = 10 -- minimum percentage allowed down
Config.MaximumPayments = 24 -- maximum payments allowed
Config.PreventFinanceSelling = true -- allow/prevent players from using /transfervehicle if financed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- ONLY FREE-USE or ANOTHER USABLE STRING IS USABLE. !NB  THEN YOU NEED EDIT CLIENT.LUA (CreateVehZones and Shop['Type'] == 'free-use' in function Init() .)
        ['Zone'] = {
            ['Shape'] = {--polygon that surrounds the shop
                vector2(-780.28, -244.78),
                vector2(-787.86, -248.16),
                vector2(-799.77, -227.31),
                vector2(-782.19, -217.69),
                vector2(-778.04, -226.52),
                vector2(-787.5, -231.94)
                --vector2(-33.342102050781, -1101.0377197266),
                --vector2(-31.292987823486, -1095.3717041016)
            },
            ['minZ'] = 32.1, -- min height of the shop zone
            ['maxZ'] = 40.09, -- max height of the shop zone
            ['size'] = 2.35 -- size of the vehicles zones
        },
        ['Job'] = 'cardealer', -- Name of job or none
        ['ShopLabel'] = 'Auto24', -- Blip name
        ['showBlip'] = true, -- true or false
        ['blipSprite'] = 326, -- Blip sprite
        ['blipColor'] = 3, -- Blip color
        ['TestDriveTimeLimit'] = 0.3, -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-783.68, -223.28, 37.32), -- Blip Location
        ['ReturnLocation'] = vector3(-759.01, -234.44, 37.28), -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-773.58, -234.57, 37.08, 205.46), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-763.33, -247.19, 37.1, 113.15), -- Spawn location for test drive
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-790.99, -224.31, 37.07, 171.93), -- where the vehicle will spawn on display
                defaultVehicle = 'e30t', -- Default display vehicle
                chosenVehicle = 'e30t', -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-794.87, -230.98, 37.07, 76.57),
                defaultVehicle = 'mk3',
                chosenVehicle = 'mk3',
            },
            [3] = {
                coords = vector4(-792.19, -236.60, 37.07, 252.13),
                defaultVehicle = 'caracara2',
                chosenVehicle = 'caracara2',
            },
        },
    },
    
   
}
