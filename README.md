# WebhookManagerV1
Bare minimum Discord webhook for ROBLOX.


What exactly does the WebhookManager do?

The WebhookManager allows you to send Discord notifications from your ROBLOX game to your Discord server!

This is quite literally the bare minimum way of making a webhook without using a proxy.

I say this because from my research Discord has banned any requests coming from ROBLOX. Meaning embeds cannot be used.


FEATURES (must be a string)
  - username (Change or set the name of the webhook bot)
  - avatar_url (Change or set the profile picture of the webhook bot)
  - content (Can be a message, link, or image (link))

In order to use you must place WebhookManager inside ReplicatedStorage.

In order to setup you must include a couple of key componets.

--> Require the WebhookManager.

`local WebhookManager = require(ReplicatedStorage.WebhookManager)`

--> Setup your URL

`local InitialURL = WebhookManager:SetupInitialURL(URL)`

--> Sending notification

`WebhookManager.CreateMessage(InitialURL, Message)`

That's all for now hope you enjoy :D

-- @notthecode (May 2024)
