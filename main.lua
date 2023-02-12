--[[

$$$$$$$\                     $$\                                     
$$  __$$\                    $$ |                                    
$$ |  $$ |$$$$$$\   $$$$$$\  $$ |  $$\  $$$$$$\  $$\   $$\  $$$$$$\  
$$$$$$$  |\____$$\ $$  __$$\ $$ | $$  |$$  __$$\ $$ |  $$ |$$  __$$\ 
$$  ____/ $$$$$$$ |$$ |  \__|$$$$$$  / $$ /  $$ |$$ |  $$ |$$ |  \__|
$$ |     $$  __$$ |$$ |      $$  _$$<  $$ |  $$ |$$ |  $$ |$$ |      
$$ |     \$$$$$$$ |$$ |      $$ | \$$\ \$$$$$$  |\$$$$$$  |$$ |      
\__|      \_______|\__|      \__|  \__| \______/  \______/ \__|      


Over the last month or so, I've been dedicating my spare time to working on this script while learning new things about scripting.
This is open source, mainly because I don't really care for obfuscation and I feel like open sourcing a script relieves a ton of pressure. 
This is my second ever release of a script, my first one being for a game called Bulwark, which went well, surprisingly.
If there are any tips on how I can organize my code better, or if there are any issues with the script, just give me a message on V3rmillion or Discord.

xgamer626#1683


Tested Executors :
• Synapse
• Krnl

Features Coming Soon :
• No Cola Cooldown
• Loud Audio
• Staff Notifcations
• Bag Esp
• Bag Notifications
• Infinite Wingsuit Stamina
• Infinite Glider Stamina
• Infinite Grappler Gear
• Instant Grappler Cast
• Autofarm Points                                            
]]

-- Functions
local function Import_Files()
    -- Check for folder.
    if isfolder("CrezyPCT") then
        -- If there is a folder then remove it to update it to current version.
        delfolder("CrezyPCT")
        Import_Files()
        return
    end

    -- Make the folders.
    makefolder("CrezyPCT")
    makefolder("CrezyPCT/Modules")
    makefolder("CrezyPCT/Source")

    -- Make the files.
    writefile("CrezyPCT/Modules/Util.lua", game:HttpGetAsync("https://raw.githubusercontent.com/CrazyPCT/zxc/main/Util.lua"))
    writefile("CrezyPCT/Modules/UI.lua", game:HttpGetAsync("https://raw.githubusercontent.com/CrazyPCT/zxc/main/UI.lua"))
    writefile("CrezyPCT/Modules/ACB.lua", game:HttpGetAsync("https://raw.githubusercontent.com/CrazyPCT/zxc/main/ACB.lua"))
    writefile("CrezyPCT/Source/Runtime.lua", game:HttpGetAsync("https://raw.githubusercontent.com/CrazyPCT/zxc/main/Runtime.lua"))
end

local function Init()
    Import_Files()

    repeat
        task.wait()
    until isfile("CrezyPCT/Source/Runtime.lua")

    local Runtime = loadstring(readfile("CrezyPCT/Source/Runtime.lua"))()
    Runtime.Init()
end

-- Main
Init()
