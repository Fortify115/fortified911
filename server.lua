local wh_911 = "CHANGEME"

--END CONFIG

RegisterServerEvent("announce")
-- Staff Announce
AddEventHandler("announce", function(param)
    if IsPlayerAceAllowed(source, "fortifiedstaff") then
    print("^7[^1Staff-Announcement^7]^4" .. param)
    TriggerClientEvent("chatMessage", -1, "^7[^1Staff-Announcement^7]^4", {0,0,0}, param)
    else
        TriggerClientEvent("no-perms", source)
    end
end)

RegisterServerEvent("twitter")
-- Twitter
AddEventHandler("twitter", function(param)
    print("^7[^6Twitter^7]" .. param)
    TriggerClientEvent("chatMessage", -1, "^7[^6Twitter^7]", {0,0,0}, param)
end)

RegisterServerEvent("darkweb")
-- DarkWeb
AddEventHandler("darkweb", function(param)
    print("^7[^9DarkWeb^7]" .. param)
    TriggerClientEvent("chatMessage", -1, "^7[^9DarkWeb^7]", {0,0,0}, param)
end)

RegisterServerEvent("notify")

AddEventHandler('chatMessage', function(source, name, msg)
	if string.sub(msg, 1, 5) == "/911 " then
		CancelEvent()
		local len = string.len(msg)
		local msg2 = string.sub(msg, 6, len)
		
		local wh_content = "**New Alert!** ("..name..")\n\n"..msg2
		
		PerformHttpRequest(wh_911, process, "POST", "content="..wh_content.."&tts=true")
		local msg = "Dispatcher Notified: "..msg2
		
		function process(statusCode, text, headers)
			--done
		end
        
        TriggerClientEvent("notify", source, msg)
    end
end)