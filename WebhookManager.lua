--> Services
local HttpService = game:GetService("HttpService")

--> Tables
local Manager = {}

function _warn(_warn)
	return warn(_warn)
end

function Manager:SetupInitialURL(URL)
	-- Return set given URL
	return URL
end

function Manager.CreateMessage(URL, Message)
	URL = Manager:SetupInitialURL(URL)
	if not URL then
		_warn("Manager.CreateMessage(): URL is not setup.")
	end
	
	local data = {
		username = "Chef Doggo",
		avatar_url = "https://i.imgur.com/oBPXx0D.png",
		content = Message,
		
		--[['embeds'] = {
			wont work so no point.
		}
		--]]
	}
	
	local returneddata = HttpService:JSONEncode(data)
	HttpService:PostAsync(URL, returneddata)
end

return Manager