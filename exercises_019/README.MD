- Exercise 18
  
  Set up a OpenVPN Server
  
  - The hard way:
    
    [DigitalOcean's guide](https://www.digitalocean.com/community/tutorials/how-to-set-up-and-configure-an-openvpn-server-on-ubuntu-20-04)
    
  - The easy way:
  
    [Nyr's Installation Script](https://github.com/Nyr/openvpn-install)
    
  <details>
  <summary>Instructions</summary>
    
    Execute the following command and follow on screen instructions
    ```
    wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh
    ```
    
    ```
    Welcome to this OpenVPN road warrior installer!
    
    This server is behind NAT. What is the public IPv4 address or hostname?
    Public IPv4 address / hostname [x.x.x.x]: 
    
    Which protocol should OpenVPN use?
       1) UDP (recommended)
       2) TCP
    Protocol [1]: 1
    
    What port should OpenVPN listen to?
    Port [1194]:     
    
    Select a DNS server for the clients:
       1) Current system resolvers
       2) Google
       3) 1.1.1.1
       4) OpenDNS
       5) Quad9
       6) AdGuard
    DNS server [1]: 2
    
    Enter a name for the first client:
    Name [client]: 
    
    OpenVPN installation is ready to begin.
    Press any key to continue...
    
    [..... lots of things .....]
    
    Finished!
    
    The client configuration is available in: /root/client.ovpn
    New clients can be added by running this script again.
    
    ```
  </details>
  
  Now, in the folder where the script was executed, you'll find a client.ovpn certificate.
    
  If you check it's content, you'll see that it includes connection data & certificates
  
  <details>
  <summary>Content</summary>
  
  ```
  client
  dev tun
  proto udp
  remote x.x.x.x 1194
  resolv-retry infinite
  nobind
  persist-key
  persist-tun
  remote-cert-tls server
  auth SHA512
  cipher AES-256-CBC
  ignore-unknown-option block-outside-dns
  verb 3
  <ca>
  -----BEGIN CERTIFICATE-----
  MIIDSzCCAjOgAwIBAgIUbFeeubPJYoiHYEzWZckxJniTC4EwDQYJKoZIhvcNAQEL
  [....]
  dY0q3XGzgieiKFrb3/W50rmhQcOGtkcY2+9DJzyHvQ==
  -----END CERTIFICATE-----
  </ca>
  <cert>
  -----BEGIN CERTIFICATE-----
  MIIDVTCCAj2gAwIBAgIRAKyNnWCGCY/GSNtPpexOJwQwDQYJKoZIhvcNAQELBQAw
  [....]
  /dKP/nvvOm3ZZimZcAj5UmwCD8ALUL0vzUUpmT2a03q/rGGT7lQ/Ivs=
  -----END CERTIFICATE-----
  </cert>
  <key>
  -----BEGIN PRIVATE KEY-----
  MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQC9kHkzicUwFFuJ
  [....]
  RY+T0fKfq15SwqxdQBmggQ0=
  -----END PRIVATE KEY-----
  </key>
  <tls-crypt>
  -----BEGIN OpenVPN Static key V1-----
  3260a106508ee53900db112086e49f2f
  [....]
  44e51c8c6c7b391a11b30e3d94e69931
  -----END OpenVPN Static key V1-----
  </tls-crypt>  
  ```
  </details>
  
  With this certificate, you can connect to your brand-new-openVPN-server.
  Transfer the certificate to your computer with scp or copy & paste it's content.
  
  ```
  scp user@server:/root/client.ovpn .
  ```
  
  And connect to it
  
  ```
  # openvpn --config client.ovpn
  2023-08-02 17:58:16 WARNING: Compression for receiving enabled. Compression has been used in the past to break encryption. Sent packets are not compressed unless "allow-compression yes" is also set.
  2023-08-02 17:58:16 DEPRECATED OPTION: --cipher set to 'AES-256-CBC' but missing in --data-ciphers (AES-256-GCM:AES-128-GCM). Future OpenVPN version will ignore --cipher for cipher negotiations. Add 'AES-256-CBC' to --data-ciphers or change --cipher 'AES-256-CBC' to --data-ciphers-fallback 'AES-256-CBC' to silence this warning.
  2023-08-02 17:58:16 OpenVPN 2.5.5 x86_64-pc-linux-gnu [SSL (OpenSSL)] [LZO] [LZ4] [EPOLL] [PKCS11] [MH/PKTINFO] [AEAD] built on Jul 14 2022
  2023-08-02 17:58:16 library versions: OpenSSL 3.0.2 15 Mar 2022, LZO 2.10
  2023-08-02 17:58:16 WARNING: No server certificate verification method has been enabled.  See http://openvpn.net/howto.html#mitm for more info.
  2023-08-02 17:58:16 Outgoing Control Channel Encryption: Cipher 'AES-256-CTR' initialized with 256 bit key
  2023-08-02 17:58:16 Outgoing Control Channel Encryption: Using 256 bit message hash 'SHA256' for HMAC authentication
  2023-08-02 17:58:16 Incoming Control Channel Encryption: Cipher 'AES-256-CTR' initialized with 256 bit key
  2023-08-02 17:58:16 Incoming Control Channel Encryption: Using 256 bit message hash 'SHA256' for HMAC authentication
  2023-08-02 17:58:16 TCP/UDP: Preserving recently used remote address: [AF_INET]81.172.74.158:1195
  2023-08-02 17:58:16 Socket Buffers: R=[212992->212992] S=[212992->212992]
  2023-08-02 17:58:16 UDP link local: (not bound)
  2023-08-02 17:58:16 UDP link remote: [AF_INET]81.172.74.158:1195
  2023-08-02 17:58:16 TLS: Initial packet from [AF_INET]81.172.74.158:1195, sid=d62c2fb1 cafca237
  2023-08-02 17:58:16 VERIFY OK: depth=1, CN=Easy-RSA CA
  2023-08-02 17:58:16 VERIFY OK: depth=0, CN=server
  2023-08-02 17:58:16 Control Channel: TLSv1.3, cipher TLSv1.3 TLS_AES_256_GCM_SHA384, peer certificate: 384 bit EC, curve secp384r1, signature: ecdsa-with-SHA512
  2023-08-02 17:58:16 [server] Peer Connection Initiated with [AF_INET]81.172.74.158:1195
  2023-08-02 17:58:16 PUSH: Received control message: 'PUSH_REPLY,route-gateway 192.168.170.210,ping 10,ping-restart 120,ifconfig 192.168.170.225 255.255.255.0,peer-id 4,cipher AES-256-GCM'
  2023-08-02 17:58:16 OPTIONS IMPORT: timers and/or timeouts modified
  2023-08-02 17:58:16 OPTIONS IMPORT: --ifconfig/up options modified
  2023-08-02 17:58:16 OPTIONS IMPORT: route-related options modified
  2023-08-02 17:58:16 OPTIONS IMPORT: peer-id set
  2023-08-02 17:58:16 OPTIONS IMPORT: adjusting link_mtu to 1657
  2023-08-02 17:58:16 OPTIONS IMPORT: data channel crypto options modified
  2023-08-02 17:58:16 Data Channel: using negotiated cipher 'AES-256-GCM'
  2023-08-02 17:58:16 Outgoing Data Channel: Cipher 'AES-256-GCM' initialized with 256 bit key
  2023-08-02 17:58:16 Incoming Data Channel: Cipher 'AES-256-GCM' initialized with 256 bit key
  2023-08-02 17:58:16 TUN/TAP device tap0 opened
  2023-08-02 17:58:16 net_iface_mtu_set: mtu 1500 for tap0
  2023-08-02 17:58:16 net_iface_up: set tap0 up
  2023-08-02 17:58:16 net_addr_v4_add: 192.168.170.225/24 dev tap0
  2023-08-02 17:58:16 Initialization Sequence Completed
  ```
