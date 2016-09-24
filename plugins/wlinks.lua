--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀ 
▀▄ ▄▀                                      ▀▄ ▄▀ 
      by member oscar team @XVIPER 
    -----OSCAR TEAM 
      please join to Channel Oscar Team @oscarteam 
    Plugin ; lock link with warn 

▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀ 
--]] 
do 

local function pre_process(msg) 
local monster = msg['id'] 
local rash = 'XVIPERO:'..msg.to.id 
local link = msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ll][Gg][Rr][Mm]%.[Mm][Ee]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Oo][Rr][Gg]") or msg.text:match("[Gg][Oo][Oo]%.[Gg][Li]/") or msg.text:match("[Aa][Dd][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Ii][Tt]%.[Ll][Yy]") or msg.text:match("[Cc][Ff]%.[Ll][Yy]/") or msg.text:match("[Bb][Vv]%.[Vv][Cc]/") or msg.text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm]%.[Mm][Ee]") 
local bot = msg.text:match("?[Ss][Tt][Aa][Rr][Tt]=") or msg.text:match("?[Ss][Tt][Oo][Pp]=") 
            if link and redis:get(rash) and not is_momod(msg) then 
      
            local dea = " 🔹عزيزي : "..msg.from.first_name.."".."\n".."🔹ارسل كالتالي 🍃".."\n".."🔹@yourchannle🚫 ".."\n".."🔹 يا : @"..(msg.from.username or " ") 
reply_msg(monster, dea, ok_cb, true) 
        end
        return msg 
    end 

local function monster(msg, matches) 
local monster = msg['id'] 
    chat_id =  msg.to.id 
    if matches[1] == 'قفل روابط' and is_momod(msg) then 
                    local rash = 'XVIPERO:'..msg.to.id 
                    redis:set(rash, true) 
                    local dd = 'تم قفل الروبط مع تحدير{✔}😈' 
reply_msg(monster, dd, ok_cb, true) 
elseif matches[1] == 'قفل روابط' and not is_momod(msg) then 
local pxpp = 'للمشرفين فقط✋👿' 
reply_msg(monster, pxpp, ok_cb, true) 

    elseif matches[1] == 'فتح روابط' and is_momod(msg) then 
      local rash = 'XVIPERO:'..msg.to.id 
      redis:del(rash) 
    local gg = ' تم الغاء قفل الروابط مع تحذير {❎}😈' 
reply_msg(monster, gg, ok_cb, true) 
elseif matches[1] == 'فتح روابط' and not is_momod(msg) then 
local pxff = 'للمشرفين فقط✋👿' 
reply_msg(monster, pxff, ok_cb, true) 
end 
end 

return { 
    patterns = { 
        '^[!/#](قفل روابط) (.*)$', 
        '^[!/#](فتح روابط) (.*)$' 
    }, 
    run = monster, 
    pre_process = pre_process 
} 

-- By @XVIPER 
--Oscar Team 
end 
    
