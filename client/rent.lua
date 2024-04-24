ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('Cloud:rentgrad1')
AddEventHandler('Cloud:rentgrad1', function(source)
	local coords = Config.RentGradSpawnCoords
	local heading = Config.RentGradHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentGradVozilo1, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:rentgrad2')
AddEventHandler('Cloud:rentgrad2', function(source)
	local coords = Config.RentGradSpawnCoords
	local heading = Config.RentGradHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentGradVozilo2, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:rentgrad3')
AddEventHandler('Cloud:rentgrad3', function(source)
	local coords = Config.RentGradSpawnCoords
	local heading = Config.RentGradHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentGradVozilo3, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:povuciserverstranu1')
AddEventHandler('Cloud:povuciserverstranu1', function()
    if ESX.Game.IsSpawnPointClear(Config.RentGradSpawnCoords, 5) then
        TriggerServerEvent('naplata:gradfuto')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

RegisterNetEvent('Cloud:povuciserverstranu2')
AddEventHandler('Cloud:povuciserverstranu2', function()
    if ESX.Game.IsSpawnPointClear(Config.RentGradSpawnCoords, 5) then
        TriggerServerEvent('naplata:gradsultan')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

RegisterNetEvent('Cloud:povuciserverstranu3')
AddEventHandler('Cloud:povuciserverstranu3', function()
    if ESX.Game.IsSpawnPointClear(Config.RentGradSpawnCoords, 5) then
        TriggerServerEvent('naplata:gradfaggio')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

exports['qtarget']:AddBoxZone("GradRent",Config.TargetGradRentCoords, 3.4, 3.4, {
    name="GradRent",
    heading=Config.TargetGradRentHeading,
    debugPoly=false,
    minZ=Config.TargetGradMinz,
    maxZ=Config.TargetGradMaxz
	}, 
  	{
    options = {
    {
		event = "aa",
		icon = "fas fa-circle",
		label = "Rent A Car",
    },
  	},
	job = {"all"},
    distance = 2.0
})

RegisterNetEvent("aa")
AddEventHandler("aa", function()
    lib.registerContext({
        id = 'rent-carnew',
        title = 'Rent A Car',
        options = {
            {
                title = 'Futo',
                description = "500$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/8f09ecdb4bf6c5c1a64e10a8d9c92456',
                event = "Cloud:povuciserverstranu1",
            },
            {
                title = 'Sultan',
                description = "700$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/f0d3d7573097ca3ece6f1ee26b81c71d',
                event = "Cloud:povuciserverstranu2",
            },
            {
                title = 'Faggio',
                description = "300$",
                icon = 'fas fa-motorcycle',
                image = 'https://gtacars.net/images/490d53928ed54a3b2c656681ab98159c',
                event = "Cloud:povuciserverstranu3",
            },
        }
    })
    lib.showContext('rent-carnew')
end)

-- SANDY --

RegisterNetEvent('Cloud:rentsandy1')
AddEventHandler('Cloud:rentsandy1', function(source)
	local coords = Config.RentSandySpawnCoords
	local heading = Config.RentSandyHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentSandyVozilo1, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:rentsandy2')
AddEventHandler('Cloud:rentsandy2', function(source)
	local coords = Config.RentSandySpawnCoords
	local heading = Config.RentSandyHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentSandyVozilo2, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:rentsandy3')
AddEventHandler('Cloud:rentsandy3', function(source)
	local coords = Config.RentSandySpawnCoords
	local heading = Config.RentSandyHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentSandyVozilo3, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:povuciserverstranusandy1')
AddEventHandler('Cloud:povuciserverstranusandy1', function()
    if ESX.Game.IsSpawnPointClear(Config.RentSandySpawnCoords, 5) then
        TriggerServerEvent('naplata:sandyfuto')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

RegisterNetEvent('Cloud:povuciserverstranusandy2')
AddEventHandler('Cloud:povuciserverstranusandy2', function()
    if ESX.Game.IsSpawnPointClear(Config.RentSandySpawnCoords, 5) then
        TriggerServerEvent('naplata:sandysultan')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

RegisterNetEvent('Cloud:povuciserverstranusandy3')
AddEventHandler('Cloud:povuciserverstranusandy3', function()
    if ESX.Game.IsSpawnPointClear(Config.RentSandySpawnCoords, 5) then
        TriggerServerEvent('naplata:sandyfaggio')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

exports['qtarget']:AddBoxZone("SandyRent",Config.TargetSandyRentCoords, 3.4, 3.4, {
    name="SandyRent",
    heading=Config.TargetSandyRentHeading,
    debugPoly=false,
    minZ=Config.TargetSandyMinz,
    maxZ=Config.TargetSandyMaxz
	}, 
  	{
    options = {
    {
		event = "aa-SANDY",
		icon = "fas fa-circle",
		label = "Rent A Car",
    },
  	},
	job = {"all"},
    distance = 2.0
})

RegisterNetEvent("aa-SANDY")
AddEventHandler("aa-SANDY", function()
    lib.registerContext({
        id = 'rent-carnewsandy',
        title = 'Rent A Car',
        options = {
            {
                title = 'Futo',
                description = "500$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/8f09ecdb4bf6c5c1a64e10a8d9c92456',
                event = "Cloud:povuciserverstranusandy1",
            },
            {
                title = 'Sultan',
                description = "700$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/f0d3d7573097ca3ece6f1ee26b81c71d',
                event = "Cloud:povuciserverstranusandy2",
            },
            {
                title = 'Faggio',
                description = "300$",
                icon = 'fas fa-motorcycle',
                image = 'https://gtacars.net/images/490d53928ed54a3b2c656681ab98159c',
                event = "Cloud:povuciserverstranusandy3",
            },
        }
    })
    lib.showContext('rent-carnewsandy')
end)

-- PALETO --

RegisterNetEvent('Cloud:rentpaleto1')
AddEventHandler('Cloud:rentpaleto1', function(source)
	local coords = Config.RentPaletoSpawnCoords
	local heading = Config.RentPaletoHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentPaletoVozilo1, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:rentpaleto2')
AddEventHandler('Cloud:rentpaleto2', function(source)
	local coords = Config.RentPaletoSpawnCoords
	local heading = Config.RentPaletoHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentPaletoVozilo2, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:rentpaleto3')
AddEventHandler('Cloud:rentpaleto3', function(source)
	local coords = Config.RentPaletoSpawnCoords
	local heading = Config.RentPaletoHeading
	local tablice = Config.RentLicensePlate
    ESX.Game.SpawnVehicle(Config.RentPaletoVozilo3, coords, heading, function(vehicle)
        SetVehicleNumberPlateText(vehicle, tablice)
        plate = GetVehicleNumberPlateText(vehicle)
        plate = string.gsub(plate, " ", "")
        name = 'Vehicle '..tablice
    end)
end)

RegisterNetEvent('Cloud:povuciserverstranupaleto1')
AddEventHandler('Cloud:povuciserverstranupaleto1', function()
    if ESX.Game.IsSpawnPointClear(Config.RentPaletoSpawnCoords, 5) then
        TriggerServerEvent('naplata:paletofuto')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

RegisterNetEvent('Cloud:povuciserverstranupaleto2')
AddEventHandler('Cloud:povuciserverstranupaleto2', function()
    if ESX.Game.IsSpawnPointClear(Config.RentPaletoSpawnCoords, 5) then
        TriggerServerEvent('naplata:paletosultan')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

RegisterNetEvent('Cloud:povuciserverstranupaleto3')
AddEventHandler('Cloud:povuciserverstranupaleto3', function()
    if ESX.Game.IsSpawnPointClear(Config.RentPaletoSpawnCoords, 5) then
        TriggerServerEvent('naplata:paletofaggio')
    else
        exports['mythic_notify']:DoHudText('error', 'Parking je blokiran')
    end
end)

exports['qtarget']:AddBoxZone("PaletoRent",Config.TargetPaletoRentCoords, 3.4, 3.4, {
    name="PaletoRent",
    heading=Config.TargetPaletoRentHeading,
    debugPoly=false,
    minZ=Config.TargetPaletoMinz,
    maxZ=Config.TargetPaletoMaxz
	}, 
  	{
    options = {
    {
		event = "aa-PALETO",
		icon = "fas fa-circle",
		label = "Rent A Car",
    },
  	},
	job = {"all"},
    distance = 2.0
})

RegisterNetEvent("aa-PALETO")
AddEventHandler("aa-PALETO", function()
    lib.registerContext({
        id = 'rent-carnewpaleto',
        title = 'Rent A Car',
        options = {
            {
                title = 'Futo',
                description = "500$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/8f09ecdb4bf6c5c1a64e10a8d9c92456',
                event = "Cloud:povuciserverstranupaleto1",
            },
            {
                title = 'Sultan',
                description = "700$",
                icon = 'fas fa-car',
                image = 'https://gtacars.net/images/f0d3d7573097ca3ece6f1ee26b81c71d',
                event = "Cloud:povuciserverstranupaleto2",
            },
            {
                title = 'Faggio',
                description = "300$",
                icon = 'fas fa-motorcycle',
                image = 'https://gtacars.net/images/490d53928ed54a3b2c656681ab98159c',
                event = "Cloud:povuciserverstranupaleto3",
            },
        }
    })
    lib.showContext('rent-carnewpaleto')
end)

-- BLIP --

local blips = {
    Config.BlipGrad,
    Config.BlipSandy,
    Config.BlipPaleto,
}

Citizen.CreateThread(function()
    for _, info in pairs(blips) do
        info.blip = AddBlipForCoord(info.x, info.y, info.z)
        SetBlipSprite(info.blip, info.id)
        SetBlipDisplay(info.blip, 4)
        SetBlipScale(info.blip, 0.75)
        SetBlipColour(info.blip, info.colour)
        SetBlipAsShortRange(info.blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(info.title)
        EndTextCommandSetBlipName(info.blip)
    end
end)

-- NPC --

CreateThread(function()
    for _,v in pairs(Config.Pedovi) do
      RequestModel(GetHashKey(v[7]))
      while not HasModelLoaded(GetHashKey(v[7])) do
        Wait(1)
      end
      RequestAnimDict("mini@strip_club@idles@bouncer@base")
      while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
        Wait(1)
      end
      ped =  CreatePed(4, v[6],v[1],v[2],v[3], 3374176, false, true)
      SetEntityHeading(ped, v[5])
      FreezeEntityPosition(ped, true)

      SetEntityInvincible(ped, true)
      PlaceObjectOnGroundProperly(ped)
      SetBlockingOfNonTemporaryEvents(ped, true)
      TaskPlayAnim(ped,"mini@strip_club@idles@bouncer@base","base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
    end
end)
