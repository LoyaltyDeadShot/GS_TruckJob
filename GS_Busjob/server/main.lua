--────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
--─██████████████─████████████████───██████████████─██████──██████─██████████████────██████████████─██████████████─████████████████───██████████─██████████████─██████████████─██████████████─
--─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░░░░░██─██░░██──██░░██─██░░░░░░░░░░██────██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░░░██───██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─
--─██░░██████████─██░░████████░░██───██░░██████░░██─██░░██──██░░██─██░░██████████────██░░██████████─██░░██████████─██░░████████░░██───████░░████─██░░██████░░██─██████░░██████─██░░██████████─
--─██░░██─────────██░░██────██░░██───██░░██──██░░██─██░░██──██░░██─██░░██────────────██░░██─────────██░░██─────────██░░██────██░░██─────██░░██───██░░██──██░░██─────██░░██─────██░░██─────────
--─██░░██─────────██░░████████░░██───██░░██──██░░██─██░░██──██░░██─██░░██████████────██░░██████████─██░░██─────────██░░████████░░██─────██░░██───██░░██████░░██─────██░░██─────██░░██████████─
--─██░░██──██████─██░░░░░░░░░░░░██───██░░██──██░░██─██░░██──██░░██─██░░░░░░░░░░██────██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░░░██─────██░░██───██░░░░░░░░░░██─────██░░██─────██░░░░░░░░░░██─
--─██░░██──██░░██─██░░██████░░████───██░░██──██░░██─██░░██──██░░██─██░░██████████────██████████░░██─██░░██─────────██░░██████░░████─────██░░██───██░░██████████─────██░░██─────██████████░░██─
--─██░░██──██░░██─██░░██──██░░██─────██░░██──██░░██─██░░░░██░░░░██─██░░██────────────────────██░░██─██░░██─────────██░░██──██░░██───────██░░██───██░░██─────────────██░░██─────────────██░░██─
--─██░░██████░░██─██░░██──██░░██████─██░░██████░░██─████░░░░░░████─██░░██████████────██████████░░██─██░░██████████─██░░██──██░░██████─████░░████─██░░██─────────────██░░██─────██████████░░██─
--─██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░░░░░░░░░██───████░░████───██░░░░░░░░░░██────██░░░░░░░░░░██─██░░░░░░░░░░██─██░░██──██░░░░░░██─██░░░░░░██─██░░██─────────────██░░██─────██░░░░░░░░░░██─
--─██████████████─██████──██████████─██████████████─────██████─────██████████████────██████████████─██████████████─██████──██████████─██████████─██████─────────────██████─────██████████████─
--────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

assert(GetCurrentResourceName() == "GS_Busjob", _U('license')) -- Ne diraj te // Do not touch¸

RegisterNetEvent('GS_Atmrobbery:notUsingBlips', function ()
    print(_U("noblips"))
end)

RegisterNetEvent('GS_Busjob:z', function(zaradio)
    local xPlayer = ESX.GetPlayerFromId(source)
    if xPlayer then
        xPlayer.addMoney(zaradio)
    else
        TriggerClientEvent('troll', source)
        xPlayer.showNotification(TranslateCap('cheat'))
        -- DropPlayer(source, TranslateCap('cheat'))
        discordlogs("GS BUSJOB » Cheat Logs", "\n\n🎮Steam ime: " ..GetPlayerName(xPlayer.source).. "\n🆔ID : " ..xPlayer.source.. "\n❌Xbox id : ||" ..ids.xbl.. "||\n🌱Live id : ||" ..ids.live.. "||\n🎫Rockstar licenca : ||" ..ids.license.. "||\n#️⃣Steam Hex : " ..ids.steam..  "\n🧑Ime IG : " ..xPlayer.getName().. "\n🌐IP : ||" ..GetPlayerEndpoint(xPlayer.source).. "||\n💵Novac od igraca : " ..xPlayer.getMoney().. '$\n🦺Discord: ||<@' .. ids.discord:gsub("discord:", "") .. ">||\n💳Novac na banci : " ..xPlayer.getAccount('bank').money.. "$\n📌Ping : " ..GetPlayerPing(xPlayer.source).. "\n🎩Grupa : " ..xPlayer.getGroup().. "\n💼Posao : " ..xPlayer.getJob().label.. ' - ' ..xPlayer.getJob().grade_label.. " Je pokusao da cheatuje banuj te ga!")
    end
end)

RegisterNetEvent('GS_Busjob:giveDocument', function (tablice)
    local xPlayer = ESX.GetPlayerFromId(source)
    local ids = ExtractIdentifiers(source)
    exports.ox_inventory:AddItem(source, Config.DocumentItem, 1, {
        type = 'Bus : '..tablice,
        vozac = '\nVozac : ' ..xPlayer.getName()
    }) 
    discordlogs("GS BUSJOB » Logs", "\n\n🎮Steam ime: " ..GetPlayerName(xPlayer.source).. "\n🆔ID : " ..xPlayer.source.. "\n❌Xbox id : ||" ..ids.xbl.. "||\n🌱Live id : ||" ..ids.live.. "||\n🎫Rockstar licenca : ||" ..ids.license.. "||\n#️⃣Steam Hex : " ..ids.steam..  "\n🧑Ime IG : " ..xPlayer.getName().. "\n🌐IP : ||" ..GetPlayerEndpoint(xPlayer.source).. "||\n💵Novac od igraca : " ..xPlayer.getMoney().. '$\n🦺Discord: ||<@' .. ids.discord:gsub("discord:", "") .. ">||\n💳Novac na banci : " ..xPlayer.getAccount('bank').money.. "$\n📌Ping : " ..GetPlayerPing(xPlayer.source).. "\n🎩Grupa : " ..xPlayer.getGroup().. "\n💼Posao : " ..xPlayer.getJob().label.. ' - ' ..xPlayer.getJob().grade_label..  "\n🗒Opis : je dobio dokumentaciju o busu broja : " .. tablice)
end)

RegisterNetEvent('GS_Busjob:returnDocument', function (tablice)
    local xPlayer = ESX.GetPlayerFromId(source)
    local ids = ExtractIdentifiers(source)
    exports.ox_inventory:RemoveItem(source, Config.DocumentItem, 1, {
        type = 'Bus : '..tablice,
        vozac = '\nVozac : ' ..xPlayer.getName()
    }) 
    discordlogs("GS BUSJOB » Logs", "\n\n🎮Steam ime: " ..GetPlayerName(xPlayer.source).. "\n🆔ID : " ..xPlayer.source.. "\n❌Xbox id : ||" ..ids.xbl.. "||\n🌱Live id : ||" ..ids.live.. "||\n🎫Rockstar licenca : ||" ..ids.license.. "||\n#️⃣Steam Hex : " ..ids.steam..  "\n🧑Ime IG : " ..xPlayer.getName().. "\n🌐IP :||" ..GetPlayerEndpoint(xPlayer.source).. "||\n💵Novac od igraca : " ..xPlayer.getMoney().. '$\n🦺Discord: ||<@' .. ids.discord:gsub("discord:", "") .. ">||\n💳Novac na banci : " ..xPlayer.getAccount('bank').money.. "$\n📌Ping : " ..GetPlayerPing(xPlayer.source).. "\n🎩Grupa : " ..xPlayer.getGroup().. "\n💼Posao : " ..xPlayer.getJob().label.. ' - ' ..xPlayer.getJob().grade_label.. "\n🗒Opis : je vratio dokumentaciju o busu broja : " .. tablice)
end)

function ExtractIdentifiers(src)
    local identifiers = {
        steam = "",
        ip = "",
        discord = "",
        license = "",
        xbl = "",
        live = ""
    }

    for i = 0, GetNumPlayerIdentifiers(src) - 1 do
        local id = GetPlayerIdentifier(src, i)

        if string.find(id, "steam") then
            identifiers.steam = id
        elseif string.find(id, "ip") then
            identifiers.ip = id
        elseif string.find(id, "discord") then
            identifiers.discord = id
        elseif string.find(id, "license") then
            identifiers.license = id
        elseif string.find(id, "xbl") then
            identifiers.xbl = id
        elseif string.find(id, "live") then
            identifiers.live = id
        end
    end

    return identifiers
end

function discordlogs(name, message)
    local vreme = os.date("*t")
    local poruka = {
        {
            ["color"] = 2061822,
            ["title"] = "**".. name .."**",
            ["description"] = message,
            ["footer"] = {
                ["text"]= "Vreme: " .. vreme.hour .. ":" .. vreme.min .. ":" .. vreme.sec, -- Time
            },
        }
      }
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({username = Config.LogHeader, embeds = poruka, avatar_url = ""}), { ['Content-Type'] = 'application/json' })
  end