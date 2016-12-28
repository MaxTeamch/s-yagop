do
local function callbackres(extra, success, result)
--vardump(result)
  local user = 'user#id'..result.peer_id
	local chat = 'chat#id'..extra.chatid
	local channel = 'channel#id'..extra.chatid
end
function run(msg, matches)
  local data = load_data(_config.moderation.data)
  if not is_momod(msg) then
	return
  end
  if not is_admin(msg) then -- For admins only !
		return 'Only admins can invite.'
  end
  if not is_realm(msg) then
    if data[tostring(msg.to.id)]['settings']['lock_member'] == 'yes' and not is_admin(msg) then
		  return 'Group is private.'
    end
  end
	if msg.to.type ~= 'chat' or msg.to.type ~= 'channel' then 
		local cbres_extra = {chatid = msg.to.id}
		local username = matches[1]
		local username = username:gsub("@","")
		resolve_username(username,  callbackres, cbres_extra)
	end
end
return {
    patterns = {
      "^[#!/]invite (.*)$"
    },
    run = run
}

end
