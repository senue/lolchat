@echo off
netsh advfirewall firewall show rule name="lolchat" > nul
if ERRORLEVEL 1 (color 0c
echo LOL CHAT OFFLINE
netsh advfirewall firewall add rule name="lolchat" dir=out remoteip=172.65.252.238 protocol=TCP action=block > nul) else (color 0a
echo LOL CHAT ONLINE
netsh advfirewall firewall delete rule name="lolchat" > nul)
timeout 2 > nul