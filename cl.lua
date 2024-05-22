RegisterKeyMapping('EmyDevMenu', 'Ouvrir le menu Dev', 'keyboard', 'F10')


ESX = exports["es_extended"]:getSharedObject()


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  ESX.PlayerData = xPlayer
end)



exports.ox_lib:registerContext({
    id = 'devmenu',
    title = 'Menu DEV \n\n Votre ID : '..GetPlayerServerId(PlayerId()),
    options = {
      {
        title = 'TP rapide',
        description = 'un endroit ou se TP ?',
        menu = 'gpsdev_menu',
      },
      {
        title = 'Spawn vehicule',
        description = 'Besoin d\'un vehicule ?',
        menu = 'carspawn_menu',
      },
      {
        title = 'Paramedical',
        description = 'Besoin d\'un vehicule ?',
        menu = 'paramedic_menu',
      },
      {
        title = 'Setjob',
        description = 'Se setjob ?',
        menu = 'setjob_menu',
      },
      {
        title = 'DEV',
        description = ' ',
        menu = 'dev_menu',
      },
    }
})







exports.ox_lib:registerContext({
    id = 'gpsdev_menu',
    title = 'GPS',
    menu = 'some_menu1',
    onBack = function()
      exports.ox_lib:showContext('devmenu')
    end,
    options = {
      {
        title = Config.dev.lspd.titre,
        description = Config.dev.lspd.desc,      
        image = Config.dev.lspd.image,
        progress = '25',      
        onSelect = function()
            --ESX.ShowNotification("~y~ca fonctionne")                           
            DoScreenFadeOut(1000)
            Wait(1000)
            FreezeEntityPosition(PlayerPedId(), true)
            tp(Config.dev.lspd.position.x, Config.dev.lspd.position.y, Config.dev.lspd.position.z-0.90)
            SetEntityHeading(PlayerPedId(), Config.dev.lspd.heading)
            FreezeEntityPosition(PlayerPedId(), false)
            Wait(900)
            DoScreenFadeIn(1000)
            ExecuteCommand('heal me')
        end,
      },
      {
        title = Config.dev.sams.titre,
        description = Config.dev.sams.desc,
        image = Config.dev.sams.image,
        progress = '50',      
        onSelect = function()
            --ESX.ShowNotification("~y~ca fonctionne")                           
            DoScreenFadeOut(1000)
            Wait(1000)
            FreezeEntityPosition(PlayerPedId(), true)
            tp(Config.dev.sams.position.x, Config.dev.sams.position.y, Config.dev.sams.position.z-0.90)
            SetEntityHeading(PlayerPedId(), Config.dev.sams.heading)
            FreezeEntityPosition(PlayerPedId(), false)
            Wait(900)
            DoScreenFadeIn(1000)
            ExecuteCommand('heal me')
        end,
      },
      {
        title = Config.dev.safd.titre,
        description = Config.dev.safd.desc,
        image = Config.dev.safd.image,
        progress = '75',      
        onSelect = function()
            --ESX.ShowNotification("~y~ca fonctionne")                           
            DoScreenFadeOut(1000)
            Wait(1000)
            FreezeEntityPosition(PlayerPedId(), true)
            tp(Config.dev.safd.position.x, Config.dev.safd.position.y, Config.dev.safd.position.z-0.90)
            SetEntityHeading(PlayerPedId(), Config.dev.safd.heading)
            FreezeEntityPosition(PlayerPedId(), false)
            Wait(900)
            DoScreenFadeIn(1000)
            ExecuteCommand('heal me')
        end,
      },
      {
        title = Config.dev.bcso.titre,
        description = Config.dev.bcso.desc,
        image = Config.dev.bcso.image,
        progress = '100',      
        onSelect = function()
            --ESX.ShowNotification("~y~ca fonctionne")                           
            DoScreenFadeOut(1000)
            Wait(1000)
            FreezeEntityPosition(PlayerPedId(), true)
            tp(Config.dev.bcso.position.x, Config.dev.bcso.position.y, Config.dev.bcso.position.z-0.90)
            SetEntityHeading(PlayerPedId(), Config.dev.bcso.heading)
            FreezeEntityPosition(PlayerPedId(), false)
            Wait(900)
            DoScreenFadeIn(1000)
            ExecuteCommand('heal me')
        end,
      },
      {
        title = Config.dev.merry.titre,
        description = Config.dev.merry.desc,
        image = Config.dev.merry.image,
        progress = '100',      
        onSelect = function()
            --ESX.ShowNotification("~y~ca fonctionne")                           
            DoScreenFadeOut(1000)
            Wait(1000)
            FreezeEntityPosition(PlayerPedId(), true)
            tp(Config.dev.merry.position.x, Config.dev.merry.position.y, Config.dev.merry.position.z-0.90)
            SetEntityHeading(PlayerPedId(), Config.dev.merry.heading)
            FreezeEntityPosition(PlayerPedId(), false)
            Wait(900)
            DoScreenFadeIn(1000)
            ExecuteCommand('heal me')
        end,
      },
    }
})


exports.ox_lib:registerContext({
  id = 'carspawn_menu',
  title = 'Vehicule',
  menu = 'some_menu',
  onBack = function()
    exports.ox_lib:showContext('devmenu')
  end,
  options = {
    {
      title = 'sultan', 
      description = ' ',
      --image = "https://cdn.discordapp.com/attachments/1235042291115360317/1235043168597311589/latest.png?ex=6632ef15&is=66319d95&hm=9bf078b75ff0942827f6309e1a483d497672f95f1ac965e392057e74510b1c00&",
      onSelect = function()
          ExecuteCommand("car sultan")
      end,
    },
    {
      title = 'elegy retro', 
      description = ' ',
      --image = "https://cdn.discordapp.com/attachments/1235042291115360317/1235043168597311589/latest.png?ex=6632ef15&is=66319d95&hm=9bf078b75ff0942827f6309e1a483d497672f95f1ac965e392057e74510b1c00&",
      onSelect = function()
          ExecuteCommand("car elegy")
      end,
    },
    {
      title = 'nightblade', 
      description = ' ',
      --image = "https://cdn.discordapp.com/attachments/1235042291115360317/1235043168597311589/latest.png?ex=6632ef15&is=66319d95&hm=9bf078b75ff0942827f6309e1a483d497672f95f1ac965e392057e74510b1c00&",
      onSelect = function()
          ExecuteCommand("car nightblade")
      end,
    },
    {
      title = 'camion de pompier', 
      description = ' ',
      --image = "https://cdn.discordapp.com/attachments/1235042291115360317/1235043168597311589/latest.png?ex=6632ef15&is=66319d95&hm=9bf078b75ff0942827f6309e1a483d497672f95f1ac965e392057e74510b1c00&",
      onSelect = function()
          ExecuteCommand("car firetruk")
      end,
    },
    {
      title = 'ambulance', 
      description = ' ',
      --image = "https://cdn.discordapp.com/attachments/1235042291115360317/1235043168597311589/latest.png?ex=6632ef15&is=66319d95&hm=9bf078b75ff0942827f6309e1a483d497672f95f1ac965e392057e74510b1c00&",
      onSelect = function()
          ExecuteCommand("car ambulance")
      end,
    },
    {
      title = 'Voiture de police', 
      description = ' ',
      --image = "https://cdn.discordapp.com/attachments/1235042291115360317/1235043168597311589/latest.png?ex=6632ef15&is=66319d95&hm=9bf078b75ff0942827f6309e1a483d497672f95f1ac965e392057e74510b1c00&",
      onSelect = function()
          ExecuteCommand("car police3")
      end,
    },
    {
      title = 'XLS blindé', 
      description = ' ',
      --image = "https://cdn.discordapp.com/attachments/1235042291115360317/1235043168597311589/latest.png?ex=6632ef15&is=66319d95&hm=9bf078b75ff0942827f6309e1a483d497672f95f1ac965e392057e74510b1c00&",
      onSelect = function()
          ExecuteCommand("car xls2")
      end,
    },
  }
})


exports.ox_lib:registerContext({
  id = 'paramedic_menu',
  title = 'Soin',
  menu = 'some_menu',
  onBack = function()
    exports.ox_lib:showContext('devmenu')
  end,
  options = {
    {
      title = 'Se revive', 
      onSelect = function()
          --print("Pressed the button!")
          ExecuteCommand("revive me")          
      end,
    },
    {
      title = 'Heal me', 
      onSelect = function()
          --ESX.ShowNotification("~y~ca fonctionne")
          ExecuteCommand("heal me")        
      end,
    },
  }
})




exports.ox_lib:registerContext({
  id = 'setjob_menu',
  title = 'Setjob',
  menu = 'some_menu',
  onBack = function()
    exports.ox_lib:showContext('devmenu')
  end,
  options = {
    {
      title = Config.dev.lspd.titre, 
      image = Config.dev.lspd.image,
      onSelect = function()
          ESX.ShowNotification("Tu es maintenant ~y~"..Config.dev.lspd.titre)
          ExecuteCommand("setjob me "..Config.dev.lspd.job.." "..Config.dev.lspd.boss)          
      end,
    },
    {
      title = Config.dev.sams.titre, 
      image = Config.dev.sams.image,
      onSelect = function()
        ESX.ShowNotification("Tu es maintenant ~y~"..Config.dev.sams.titre)
          ExecuteCommand("setjob me "..Config.dev.sams.job.." "..Config.dev.sams.boss)          
      end,
    },
    {
      title = Config.dev.safd.titre, 
      image = Config.dev.safd.image,
      onSelect = function()
        ESX.ShowNotification("Tu es maintenant ~y~"..Config.dev.safd.titre)
          ExecuteCommand("setjob me "..Config.dev.safd.job.." "..Config.dev.safd.boss)          
      end,
    },
    {
      title = Config.dev.bcso.titre, 
      image = Config.dev.bcso.image,
      onSelect = function()
        ESX.ShowNotification("Tu es maintenant ~y~"..Config.dev.bcso.titre)
          ExecuteCommand("setjob me "..Config.dev.bcso.job.." "..Config.dev.bcso.boss)          
      end,
    },
    {
      title = Config.dev.merry.titre, 
      image = Config.dev.merry.image,
      onSelect = function()
        ESX.ShowNotification("Tu es maintenant ~y~"..Config.dev.merry.titre)
          ExecuteCommand("setjob me "..Config.dev.merry.job.." "..Config.dev.merry.boss)          
      end,
    },
    {
      title = Config.dev.cardealer.titre, 
      image = Config.dev.cardealer.image,
      onSelect = function()
        ESX.ShowNotification("Tu es maintenant ~y~"..Config.dev.cardealer.titre)
          ExecuteCommand("setjob me "..Config.dev.cardealer.job.." "..Config.dev.cardealer.boss)          
      end,
    },
  }
})







exports.ox_lib:registerContext({
  id = 'dev_menu',
  title = 'DEV',
  menu = 'some_menu',
  onBack = function()
    exports.ox_lib:showContext('devmenu')
  end,
  options = {
    {
      title = 'Afficher / Cacher les coordonnées', 
      description = 'X Y Z H au niveau de la map',
      progress = '25',      
      onSelect = function()
          --print("Pressed the button!")
          ExecuteCommand("coords")
      end,
    },
    {
      title = 'ES MAPPER', 
      description = 'Activer / Desactiver es_mapper',
      progress = '25',      
      onSelect = function()
          --print("Pressed the button!")
          TriggerEvent('es_mapper:toggle')
      end,
    },
  }
})
local coordsVisible = false

function DrawGenericText(text)
	SetTextColour(186, 186, 186, 255)
	SetTextFont(1)
	SetTextScale(0.978, 0.978)
	SetTextWrap(0.0, 1.0)
	SetTextCentre(false)
	SetTextDropshadow(0, 0, 0, 0, 255)
	SetTextEdge(1, 0, 0, 0, 205)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(0.12, 0.720)
  drawRct2(0.01,0.710,0.23,0.27,0,0,0,255)
end

function drawRct2(x,y,width,height,r,g,b,a)
  DrawRect(x + width/2, y + height/2, width, height, r, g, b, a)
end

Citizen.CreateThread(function()
    while true do
		local sleepThread = 250
		
		if coordsVisible then
			sleepThread = 5

			local playerPed = PlayerPedId()
			local playerX, playerY, playerZ = table.unpack(GetEntityCoords(playerPed))
			local playerH = GetEntityHeading(playerPed)

			DrawGenericText(("~w~X~g~: %s \n~w~Y~b~: %s \n~w~Z~o~: %s \n~w~H~f~: %s"):format(FormatCoord(playerX), FormatCoord(playerY), FormatCoord(playerZ), FormatCoord(playerH)))
		end

		Citizen.Wait(sleepThread)
	end
end)

FormatCoord = function(coord)
	if coord == nil then
		return "unknown"
	end

	return tonumber(string.format("%.2f", coord))
end

ToggleCoords = function()
	coordsVisible = not coordsVisible
end

RegisterCommand("coords", function()
    ToggleCoords()
end)



function tp(x,y,z)
	SetEntityCoords(PlayerPedId(), x, y, z - 0.9)
end

RegisterNetEvent('tp:openmenu')
AddEventHandler('tp:openmenu', function()
    exports.ox_lib:showContext('tpadmin')
end)










































RegisterNetEvent('EmyDevMenu', function(args)
    exports.ox_lib:registerContext({
      id = 'EmyDevMenu',
      title = 'Event menu',
      menu = 'devmenu',
      options = {
        {
          title = 'Event value: '..args.someValue,
        }
    }
})
   
exports.ox_lib:showContext('EmyDevMenu')
end)

RegisterCommand('EmyDevMenu', function()
  exports.ox_lib:showContext('devmenu')
end)

RegisterCommand('EmyDevMenu', function()
  ESX.TriggerServerCallback('BahFaut:getUsergroup', function(group)
      playergroup = group
      for k,v in pairs(Config.dev.AdminRanks) do
      if playergroup == v then
        exports.ox_lib:showContext('devmenu')
      else
          superadmin = false
      end
  end
  end)
end, false)