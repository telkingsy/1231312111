
if (msg.text == "/start") then
		bot.sendMessage(msg.from.id, "Hello there 👋\nMy name is " .. bot.first_name)
	elseif (msg.text == "ping") then
		bot.sendMessage(msg.chat.id, "pong!")
end
end 
return {
patterns = {
"(.*)"	
},
run = run
} 



