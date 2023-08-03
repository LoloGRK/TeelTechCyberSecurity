- Exercise 20
  
  - BraveBrowser Installation
  
    - Move to [brave.com](https://brave.com/es/) and download Brave Browser
    
    - Enable TOR

      <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_020/images/Tor_001.png" width="450">
      
      <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_020/images/Tor_002.png" width="450">
  
    - Testing

      <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_020/images/Tor_003.png" width="850">
      
  - Raw TOR network access
  
    - Install TOR network service
      
      ```
      apt install tor
      ```
      
      Once installed, check it's status
      
      ```
      # service tor status
      ● tor.service - Anonymizing overlay network for TCP (multi-instance-master)
           Loaded: loaded (/lib/systemd/system/tor.service; enabled; vendor preset: enabled)
           Active: active (exited) since Thu 2023-08-03 06:27:31 CEST; 10s ago
          Process: 267948 ExecStart=/bin/true (code=exited, status=0/SUCCESS)
         Main PID: 267948 (code=exited, status=0/SUCCESS)
              CPU: 1ms
      
      ago 03 06:27:31 juans systemd[1]: Starting Anonymizing overlay network for TCP (multi-instance-master)...
      ago 03 06:27:31 juans systemd[1]: Finished Anonymizing overlay network for TCP (multi-instance-master).
      ```
      
    - Testing
    
      Open Firefox and check your IP
    
      ```
      $ proxychains firefox www.ifconfig.io/ip
      ProxyChains-3.1 (http://proxychains.sf.net)
      ```
