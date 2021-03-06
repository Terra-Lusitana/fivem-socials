local discord_webhook_enabled = 0
local discord_webhook_url = "REPLACE ME IF ABOVE IS 1" 
 
AddEventHandler('chatMessage', function(source, name, args) 
  sm = stringsplit(args, " "); 
  
    if sm[1] == "/lv" then 
        CancelEvent()
        if tablelength(sm) < 4 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'lv', true)
        else
            local username = sm[2] .. ' ' .. sm[3] 

            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = name.. " used Lifeinvader command: **" .. message .. "**" 
                --PerformHttpRequest(lifeinvader_webhook, process, "POST", "content=".. lv_wh_content) 
                local image = "https://vignette.wikia.nocookie.net/gtawiki/images/6/6d/Logo-lifeinvader.jpg/revision/latest?cb=20141231082643"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Lifeinvader: ' .. username, content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^1Life^0invader] ^0(" .. name .. ") ^3" .. username, { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/tweet" then 
        CancelEvent() 
        if tablelength(sm) < 4 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'tweet', true)
        else
            local username = sm[2] .. ' ' .. sm[3] 

            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = name.. " used Twitter command: **" .. message .. "**" 
                --PerformHttpRequest(tweet_webhook, process, "POST", "content=".. tw_wh_content) 
                local image = "http://www.stickpng.com/assets/images/580b57fcd9996e24bc43c53e.png"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Twitter: ' .. username, content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^4Twitter^0] ^0(" .. name .. ") ^3" .. username, { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/snapmatic" then 
        CancelEvent() 
        if tablelength(sm) < 4 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'snapmatic', true)
        else
            local username = sm[2] .. ' ' .. sm[3] 

            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = name.. " used Snapmatic command: **" .. message .. "**" 
                --PerformHttpRequest(snapmatic_webhook, process, "POST", "content=".. sm_wh_content) 
                local image = "https://drh1.img.digitalriver.com/DRHM/Storefront/Company/tk2rstar/images/screenshots/2_Snapmatic_Tee_600.jpg"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Snapmatic: ' .. username, content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^6Snapmatic^0] ^0(" .. name .. ") ^3" .. username, { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/uber" then 
        CancelEvent() 
        if tablelength(sm) < 2 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'uber', false)
        else
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = name.. " used Uber command: **" .. message .. "**" 
                --PerformHttpRequest(uber_webhook, process, "POST", "content=".. sm_wh_content) 
                local image = "https://images-na.ssl-images-amazon.com/images/I/41kQPEy5nZL._SY355_.jpg"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Uber', content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^8Uber^0] ^0(" .. name .. ") ^3", { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/sms" then 
        CancelEvent() 
        if tablelength(sm) < 6 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'sms', true)
        else
            local from_name = sm[2] .. ' ' .. sm[3];
            local to_name = sm[4] .. ' ' .. sm[5];
    
            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 
            table.remove(sm, 1) 
    
            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = name.. " used SMS command: **" .. message .. "**" 
                --PerformHttpRequest(snapmatic_webhook, process, "POST", "content=".. sm_wh_content) 
                local image = "https://cdn4.iconfinder.com/data/icons/chat-icons-3-1/512/smss.png"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'SMS: ' .. from_name .. ' > ' .. to_name, content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 
    
            TriggerClientEvent('chatMessage', -1, "^0[^1SMS^0] ^0(" .. name .. ") ^3" .. from_name .. ' ^0>^3 ' .. to_name, { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/blackmarket" then 
        CancelEvent() 
        if tablelength(sm) < 2 then
            CancelEvent() 
            TriggerClientEvent('invalidArgs', source, 'blackmarket', false)
        else
            table.remove(sm, 1) 

            local message = table.concat(sm, " ") 
            
            if discord_webhook_enabled == 1 then 
                -- Send message to discord to say that the Lifeinvader command was used. 
                wh_content = name.. " used the Blackmarket command: **" .. message .. "**" 
                --PerformHttpRequest(uber_webhook, process, "POST", "content=".. sm_wh_content) 
                local image = "https://images-na.ssl-images-amazon.com/images/I/41kQPEy5nZL._SY355_.jpg"
                PerformHttpRequest(discord_webhook_url, function(Error, Content, Head) end, 'POST', json.encode({username = 'Blackmarket', content = wh_content, avatar_url = image, tts = false}), {['Content-Type'] = 'application/json'})
            end 

            TriggerClientEvent('chatMessage', -1, "^0[^1Black Market^0] ^0(" .. name .. ") ^3", { 128, 128, 128 }, message) 
        end
    elseif sm[1] == "/social-help" then 
        CancelEvent() 
        TriggerClientEvent('socialHelp', source) 
    end
end) 

function stringsplit(inputstr, sep) 
    if sep == nil then 
        sep = "%s" 
    end 
    local t={} ; i=1 
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do 
        t[i] = str 
        i = i + 1 
    end 
    return t 
end

function tablelength(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end