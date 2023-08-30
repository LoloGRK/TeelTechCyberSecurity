# Exercise 36

Install Nessus and perform a basic scan.

## Installation

1. Download

   Open [https://www.tenable.com/downloads/nessus](https://www.tenable.com/downloads/nessus) and download the proper version (should be amd64)
   
2. Install

   Open a shell with root privileges, go to Download folder and install downloaded package:
   
   ```
   $ sudo su
   [sudo] password for kali:
   
   # dpkg -i Nessus-10.6.0-ubuntu1404_amd64.deb 
   Selecting previously unselected package nessus.
   (Reading database ... 411835 files and directories currently installed.)
   Preparing to unpack Nessus-10.6.0-ubuntu1404_amd64.deb ...
   Unpacking nessus (10.6.0) ...
   Setting up nessus (10.6.0) ...
   HMAC : (Module_Integrity) : Pass
   SHA1 : (KAT_Digest) : Pass
   SHA2 : (KAT_Digest) : Pass
   SHA3 : (KAT_Digest) : Pass
   TDES : (KAT_Cipher) : Pass
   AES_GCM : (KAT_Cipher) : Pass
   AES_ECB_Decrypt : (KAT_Cipher) : Pass
   RSA : (KAT_Signature) : RNG : (Continuous_RNG_Test) : Pass
   Pass
   ECDSA : (PCT_Signature) : Pass
   ECDSA : (PCT_Signature) : Pass
   DSA : (PCT_Signature) : Pass
   TLS13_KDF_EXTRACT : (KAT_KDF) : Pass
   TLS13_KDF_EXPAND : (KAT_KDF) : Pass
   TLS12_PRF : (KAT_KDF) : Pass
   PBKDF2 : (KAT_KDF) : Pass
   SSHKDF : (KAT_KDF) : Pass
   KBKDF : (KAT_KDF) : Pass
   HKDF : (KAT_KDF) : Pass
   SSKDF : (KAT_KDF) : Pass
   X963KDF : (KAT_KDF) : Pass
   X942KDF : (KAT_KDF) : Pass
   HASH : (DRBG) : Pass
   CTR : (DRBG) : Pass
   HMAC : (DRBG) : Pass
   DH : (KAT_KA) : Pass
   ECDH : (KAT_KA) : Pass
   RSA_Encrypt : (KAT_AsymmetricCipher) : Pass
   RSA_Decrypt : (KAT_AsymmetricCipher) : Pass
   RSA_Decrypt : (KAT_AsymmetricCipher) : Pass
   INSTALL PASSED
   Unpacking Nessus Scanner Core Components...
   Created symlink /etc/systemd/system/multi-user.target.wants/nessusd.service → /lib/systemd/system/nessusd.service.
   
    - You can start Nessus Scanner by typing /bin/systemctl start nessusd.service
    - Then go to https://localhost:8834/ to configure your scanner
   ```
   
 3. Start service

    In the same privileged shell, write the following command to start the service.

    ```
    systemctl start service nessusd.service
    ```
 
 4. Setup & register Nessus

    Fire up your browser and browse to [https://localhost:8834](https://localhost:8834). Yo will be presented with a welcome screen and a wizard to setup Nessus.
    
    1. Wait for initialization:
    
       <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/b29df37c52d2d3a318e0c78c1ef583dde9dc91cd/exercises_36/images/nessus_001.png">
    
    2. Accept EULA
    
       <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/b29df37c52d2d3a318e0c78c1ef583dde9dc91cd/exercises_36/images/nessus_002.png">
    
    3. Register for Nessus Essentials
    
       <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/b29df37c52d2d3a318e0c78c1ef583dde9dc91cd/exercises_36/images/nessus_003.png">
    
    4. Provide the requested data
    
       <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/b29df37c52d2d3a318e0c78c1ef583dde9dc91cd/exercises_36/images/nessus_001.png">
       
    5. Nessus should be activated
    6. Create a username and password
    
       <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/b29df37c52d2d3a318e0c78c1ef583dde9dc91cd/exercises_36/images/nessus_004.png">
       
    7. Wait for plugin download
    
       <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/b29df37c52d2d3a318e0c78c1ef583dde9dc91cd/exercises_36/images/nessus_005.png">
    
    8. Nessus should be available
    
       <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/b29df37c52d2d3a318e0c78c1ef583dde9dc91cd/exercises_36/images/nessus_006.png">
