# Setup VM

1. Download Image (MSEdge on Win10 (x64), VirtualBox) https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/
2. Host Network Manager > Create > Configure IPv4 addr: 192.168.56.1
3. Virtual Machine > Settings > Network > Adapter 1=Host-only Adapter, Adapter 2=NAT

# Setup Guest OS

## Map Hub hostname to an IP

hostname: selenium-hub

1. Super+R
2. `cmd /k echo 192.168.56.1 selenium-hub >> C:\Windows\System32\drivers\etc\hosts`
3. Ctrl+Shift+Enter

## Setup Selenium node

browserName: MicrosoftEdge
port: 4444

- [Enable your device for development](https://docs.microsoft.com/en-us/windows/uwp/get-started/enable-your-device-for-development)
- Install JRE https://www.java.com/en/download/
- Download [Selenium Server](https://www.seleniumhq.org/download/) and rename to `selenium-server-standalone.jar`
- Copy `node.json`, `start.bat`, `selenium-server-standalone.jar` to `C:\Users\IEUser`

# REPL

1. `docker run --rm -p 4444:4444 selenium/hub:3`
2. Execute `start.bat`
3. `npx wdio repl MicrosoftEdge -h selenium-hub`
