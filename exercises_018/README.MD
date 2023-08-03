- Exercise 18
  
  - ProxyChain installation
  
    ```
    apt install proxychains
    ```
  
  - Configuration

    Open /etc/proxychains.conf with nano and set the following configuration:
    
    - Uncomment *dynamic_chain* and comment *static_chain* to make the proxy chain dynamic
    - Uncomment *random_chain* to randomize the list
    - Set *chain_len* to a value of at least 2, to use a minium of 2 proxies in the chain
    
    At the end of the file we will find this section
    
    ```
    [ProxyList]
    # add proxy here ...
    # meanwile
    # defaults set to "tor"
    socks4         127.0.0.1 9050
    ```
    
    This, enables by default the usagage of TOR as the first entry node or our chain. But TOR is slow, so we will comment it to use only our proxies list. Every entry should be set in the following format:
    
    ```
    <proxyType> <proxyIP> <proxyPort>
    ```
    
    So our *ProxyList* section should end up like this:
    
    ```
    [ProxyList]
    # add proxy here ...
    # meanwile
    # defaults set to "tor"
    <proxyType> <proxyIP> <proxyPort>
    <proxyType> <proxyIP> <proxyPort>
    <proxyType> <proxyIP> <proxyPort>
    <proxyType> <proxyIP> <proxyPort>
    ```
