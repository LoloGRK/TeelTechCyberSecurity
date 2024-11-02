# Exercise 16

  Setup an Anonymous proxy server and check that your IP address has changed. For this exercise, we will use dante, a SOCKS client and server implementation for UNIX.
  
  - Website: [https://github.com/notpeter/dante](https://github.com/notpeter/dante)
  - Type: Anonymous
  - Protocol: SOCKS
  - Installation
  
    Install from repositories
    
    ```shell
    # apt install dante-server
    ```
    
    Backup configuration file
    
    ```
    # cp /etc/danted.conf /etc/danted.conf.bak
    ```
    
    Paste the following content at the end of /etc/danted.conf
    
    ```
    logoutput: syslog
    internal: eth0 port = 1080
    external: eth0
    external.rotation: same-same
    
    socksmethod: pam.username
    user.notprivileged: proxyUser1
    
    client pass {
        from: 0.0.0.0/0 to: 0.0.0.0/0
        log: connect disconnect error
    }
    
    socks pass {
        from: 0.0.0.0/0 to: 0.0.0.0/0
        protocol: tcp udp
    }
    ```
    
    Create proxy user
    
    ```
    # useradd -r -s /bin/false proxyUser1
    # passwd proxyUser1
    ```
    
    Restart dante server
    
    ```
    # service danted restart
    ```
    
    Check that it's running
    
    ```
    # tail -f /var/log/syslog | grep danted
    Aug  2 13:18:14 vmi1273822 systemd[1]: Starting SOCKS (v4 and v5) proxy daemon (danted)...
    Aug  2 13:18:14 vmi1273822 systemd[1]: Started SOCKS (v4 and v5) proxy daemon (danted).
    Aug  2 13:18:14 vmi1273822 danted[1372823]: warning: checkconfig(): rotation for external addresses is set to same-same, but the number of external addresses is only one, so this does not make sense
    Aug  2 13:18:14 vmi1273822 danted[1372823]: Aug  2 13:18:14 (1690975094.357204) danted[1372823]: warning: checkconfig(): rotation for external addresses is set to same-same, but the number of external addresses is only one, so this does not make sense
    Aug  2 13:18:14 vmi1273822 danted[1372823]: info: Dante/server[1/1] v1.4.2 running
    Aug  2 13:18:14 vmi1273822 danted[1372823]: Aug  2 13:18:14 (1690975094.405877) danted[1372823]: info: Dante/server[1/1] v1.4.2 running
    ```
    
  - Testing
    
    - Step 1: 
      
      Request https://ifconfig.io/ip to check your ip address from command line
      
      <details>
      <summary>Hint</summary>
  
      You can use cURL command to request the URL
  
      ```
      # curl https://ifconfig.io/ip
      87.125.70.79
      ```
      </details>
  
    - Step 2:

      Perform the same request, but using your newly created proxy server
      
      <details>
      <summary>Hint</summary>
  
      To route your request through a proxy with cURL, you can use the following parameter
      
      ```
      -x socks5h://<proxyUser>:<proxyUserPassword>@<proxy_ip>:<proxy_port>
      ```
      </details>
      
      <details>
      <summary>Solution</summary>
      
      ```
      # curl -x socks5h://<proxyUser1>:<proxyUser1_password>@<proxy_ip>:1080 https://ifconfig.io/ip
      109.123.249.205
      ```
      </details>
  
