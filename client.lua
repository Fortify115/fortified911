--Staff Announce
RegisterCommand("announce", function(source, args)
    TriggerServerEvent("announce", table.concat(args, " "))
end)

-- Registers No Perm Even
RegisterNetEvent("no-perms")

-- Adds No Perm Event
AddEventHandler("no-perms", function()
    TriggerEvent("chatMessage", "[Error]", {255,0,0}, "Permission Denied")
end)

-- Twitter
RegisterCommand("twitter", function(source, args)
    TriggerServerEvent("twitter", table.concat(args, " "))
end)

-- 911
RegisterNetEvent('notify')

AddEventHandler('notify', function(msg)
  TriggerEvent("chatMessage", "", { 0, 0, 0 }, msg)
end)

-- DarkWeb
RegisterCommand("darkweb", function(source, args)
    TriggerServerEvent("darkweb", table.concat(args, " "))
end)
