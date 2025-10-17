if not isfolder("Sentinel") then
	makefolder("Sentinel")
end
if not isfolder("Sentinel/games") then
	makefolder("Sentinel/games")
end
if not isfolder("Sentinel/guis") then
	makefolder("Sentinel/guis")
end
task.wait(1)
if not isfile("Sentinel/guis/Sentinel.lua") then
	local ok, data = pcall(function() return game:HttpGet("https://raw.githubusercontent.com/AsuraXowner/Sentinel/refs/heads/main/guis/Sentinel.lua") end)
	if ok and data and #data > 0 then
		writefile("Sentinel/guis/Sentinel.lua", data)
	end
end
task.wait(1)
if not isfolder("Sentinel/games/"..game.PlaceId) then
	local ok, data = pcall(function() return game:HttpGet("https://raw.githubusercontent.com/AsuraXowner/Sentinel/refs/heads/main/games/"..game.PlaceId.."/"..game.PlaceId..".lua") end)
	if ok and data and #data > 0 then
		makefolder("Sentinel/games/"..game.PlaceId)
		writefile("Sentinel/games/"..game.PlaceId.."/"..game.PlaceId.."..lua", data)
	end
end

loadstring(readfile("Sentinel/games/"..game.PlaceId.."/"..game.PlaceId.."..lua"))()
