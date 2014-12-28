local args = {...}
if #args == 2 then
	local com = {
		type = "command",
		point = args[1],
		command = {
			priority = 0,
		}
	}
	local numVal = tonumber(args[2])
	if not numVal then
		com.command.value = args[2] == "true"
	else
		com.command.value = numVal
	end
	rednet.send(40, com)
end