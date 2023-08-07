# Exercise 20
  
  - BraveBrowser Installation
  
    - Move to [brave.com](https://brave.com/es/) and download Brave Browser
    
    - Enable TOR

      Open a *New private window with Tor*
      
      <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/8f8bf34d996beba539518b871eac154c767d7dae/exercises_020/images/Tor_001.png" width="250">
      
      Brave will be automatically connect to TOR network
      
      <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/8f8bf34d996beba539518b871eac154c767d7dae/exercises_020/images/Tor_002.png" width="450">
  
    - Testing

      <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/8f8bf34d996beba539518b871eac154c767d7dae/exercises_020/images/Tor_003.png" width="600">
      
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
    
    - Configure proxyChains
    
      Add your TOR to route your traffic to *ProxyList* section
      
      ```
      [ProxyList]
      # add proxy here ...
      # meanwile
      # defaults set to "tor"
      socks4  127.0.0.1 9050
      #http 192.168.0.1  3128
      ```
    
    - Testing
    
      Open Firefox and check your IP
    
      ```
      $ proxychains firefox www.ifconfig.io/ip
      ProxyChains-3.1 (http://proxychains.sf.net)
      ```
