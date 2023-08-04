# Exercise 22

  Get emails associated from a domain using theHarvester.
  
  *Hint:* To request information from all services, you can use the following switch:
  
  ```
  -b all
  ```
  
  <details>
  <summary>Installation</summary>
  For this, you'll need to install theHarvester
  
  1. Get sources

     ```
     # git clone https://github.com/laramies/theHarvester
     Cloning into 'theHarvester'...
     remote: Enumerating objects: 13526, done.
     remote: Counting objects: 100% (2626/2626), done.
     remote: Compressing objects: 100% (344/344), done.
     remote: Total 13526 (delta 2368), reused 2489 (delta 2278), pack-reused 10900
     Receiving objects: 100% (13526/13526), 7.53 MiB | 14.27 MiB/s, done.
     Resolving deltas: 100% (8481/8481), done.
     ```
  
  2. Enter directory
  
     ```
     cd theHarvester
     ```
  
  3. Install dependencies

     ```
     # python3 -m pip install -r requirements/dev.txt 
     Requirement already satisfied: aiodns==3.0.0 in /usr/local/lib/python3.10/dist-packages (from -r requirements/base.txt (line 1)) (3.0.0)
     Collecting aiofiles==23.1.0
       Downloading aiofiles-23.1.0-py3-none-any.whl (14 kB)
       
     [ ... lots of things happened here ...]
     ```
  Using it:
  
  - Help
  
    ```
    # ./theHarvester.py --help
    *******************************************************************
    *  _   _                                            _             *
    * | |_| |__   ___    /\  /\__ _ _ ____   _____  ___| |_ ___ _ __  *
    * | __|  _ \ / _ \  / /_/ / _` | '__\ \ / / _ \/ __| __/ _ \ '__| *
    * | |_| | | |  __/ / __  / (_| | |   \ V /  __/\__ \ ||  __/ |    *
    *  \__|_| |_|\___| \/ /_/ \__,_|_|    \_/ \___||___/\__\___|_|    *
    *                                                                 *
    * theHarvester 4.4.1                                              *
    * Coded by Christian Martorella                                   *
    * Edge-Security Research                                          *
    * cmartorella@edge-security.com                                   *
    *                                                                 *
    *******************************************************************
    usage: theHarvester.py [-h] -d DOMAIN [-l LIMIT] [-S START] [-p] [-s] [--screenshot SCREENSHOT] [-v] [-e DNS_SERVER] [-t]
                           [-r [DNS_RESOLVE]] [-n] [-c] [-f FILENAME] [-b SOURCE]
    
    theHarvester is used to gather open source intelligence (OSINT) on a company or domain.
    
    options:
      -h, --help            show this help message and exit
      -d DOMAIN, --domain DOMAIN
                            Company name or domain to search.
      -l LIMIT, --limit LIMIT
                            Limit the number of search results, default=500.
      -S START, --start START
                            Start with result number X, default=0.
      -p, --proxies         Use proxies for requests, enter proxies in proxies.yaml.
      -s, --shodan          Use Shodan to query discovered hosts.
      --screenshot SCREENSHOT
                            Take screenshots of resolved domains specify output directory: --screenshot output_directory
      -v, --virtual-host    Verify host name via DNS resolution and search for virtual hosts.
      -e DNS_SERVER, --dns-server DNS_SERVER
                            DNS server to use for lookup.
      -t, --take-over       Check for takeovers.
      -r [DNS_RESOLVE], --dns-resolve [DNS_RESOLVE]
                            Perform DNS resolution on subdomains with a resolver list or passed in resolvers, default False.
      -n, --dns-lookup      Enable DNS server lookup, default False.
      -c, --dns-brute       Perform a DNS brute force on the domain.
      -f FILENAME, --filename FILENAME
                            Save the results to an XML and JSON file.
      -b SOURCE, --source SOURCE
                            anubis, baidu, bevigil, binaryedge, bing, bingapi, bufferoverun, brave, censys, certspotter, criminalip, crtsh, dnsdumpster, duckduckgo, fullhunt, github-code, hackertarget, hunter, hunterhow, intelx, netlas, onyphe, otx, pentesttools, projectdiscovery, rapiddns, rocketreach, securityTrails, sitedossier, subdomaincenter, subdomainfinderc99, threatminer, tomba, urlscan, virustotal, yahoo, zoomeye
    ```
  
    Here, we can use our proxy :)
  </details>
    
  <details>
  <summary>Solution</summary>

  ```
  # python3 theHarvester.py -d teeltech.com -b all
  *******************************************************************
  *  _   _                                            _             *
  * | |_| |__   ___    /\  /\__ _ _ ____   _____  ___| |_ ___ _ __  *
  * | __|  _ \ / _ \  / /_/ / _` | '__\ \ / / _ \/ __| __/ _ \ '__| *
  * | |_| | | |  __/ / __  / (_| | |   \ V /  __/\__ \ ||  __/ |    *
  *  \__|_| |_|\___| \/ /_/ \__,_|_|    \_/ \___||___/\__\___|_|    *
  *                                                                 *
  * theHarvester 4.4.1                                              *
  * Coded by Christian Martorella                                   *
  * Edge-Security Research                                          *
  * cmartorella@edge-security.com                                   *
  *                                                                 *
  *******************************************************************
  
  [*] Target: teeltech.com 
  
  
  [!] Missing API key for bevigil. 
  
  [!] Missing API key for binaryedge. 
  
  [!] Missing API key for bufferoverun. 
  
  [!] Missing API key for Censys ID and/or Secret. 
  
  [!] Missing API key for criminalip. 
  
  [!] Missing API key for fullhunt. 
  
  [!] Missing API key for Github. 
  
  [!] Missing API key for Hunter. 
  
  [!] Missing API key for hunterhow. 
  
  [!] Missing API key for Intelx. 
  
  [!] Missing API key for netlas. 
  
  [!] Missing API key for onyphe. 
  
  [!] Missing API key for PentestTools. 
  
  [!] Missing API key for ProjectDiscovery. 
  
  [!] Missing API key for RocketReach. 
  
  [!] Missing API key for Securitytrail. 
  
  [!] Missing API key for Tomba Key and/or Secret. 
  
  [!] Missing API key for virustotal. 
  
  [!] Missing API key for zoomeye. 
          Searching 0 results.
  [*] Searching Bing. 
  [*] Searching Anubis. 
  [*] Searching Baidu. 
          Searching results.
  [*] Searching Certspotter. 
  [*] Searching CRTsh. 
  [*] Searching Dnsdumpster. 
  [*] Searching Duckduckgo. 
  [*] Searching Hackertarget. 
  [*] Searching Otx. 
  [*] Searching Rapiddns. 
  Sitedossier module has triggered a captcha on first iteration, no results can be found.
  Change IPs, manually solve the captcha, or wait before rerunning Sitedossier module
  [*] Searching Sitedossier. 
  [*] Searching Subdomainfinderc99. 
  [*] Searching Subdomaincenter. 
  [*] Searching Urlscan. 
  [*] Searching Threatminer. 
  [*] Searching Yahoo. 
  [*] Searching Brave. 
  
  [*] ASNS found: 2
  --------------------
  AS15169
  AS19527
  
  [*] Interesting Urls found: 3
  --------------------
  https://teeltech.com/
  https://teeltech.com/?
  https://www.teeltech.com/
  
  [*] LinkedIn Links found: 0
  ---------------------
  
  [*] IPs found: 24
  -------------------
  109.73.238.99
  13.58.196.122
  18.190.92.81
  18.191.66.186
  18.219.133.218
  18.220.76.94
  18.224.123.230
  192.124.249.6
  3.129.151.219
  3.133.6.40
  3.134.44.208
  3.137.16.231
  3.141.181.127
  3.141.58.72
  3.16.72.62
  3.17.248.97
  3.19.34.238
  3.20.142.108
  3.21.246.31
  3.23.226.146
  34.86.85.56
  35.209.43.172
  35.215.98.194
  
  [*] Emails found: 12
  ----------------------
  cfid@teeltech.com
  d.j@teeltech.com
  denise.deyulio@teeltech.com
  info@teeltech.com
  j-d@teeltech.com
  jane.doe@teeltech.com
  janed@teeltech.com
  last@teeltech.com
  sales@teeltech.com
  services@teeltech.com
  
  [*] Hosts found: 32
  ---------------------
  apex.teeltech.com
  apex.teeltech.com:27cb2dea-apex-ingressapex-8301-1304604246.us-east-2.elb.amazonaws.com
  apex.teeltech.com:27cb2dea-apex-ingressapex-8301-1304604246.us-east-2.elb.amazonaws.com.
  bitmindz.teeltech.com
  bitmindz.teeltech.com:35.209.43.172
  byofairfield.teeltech.com
  byofairfield.teeltech.com:35.209.43.172
  email.mg.teeltech.com
  giveback.teeltech.com
  giveback.teeltech.com:35.209.43.172
  giveback.teeltech.com:35.215.98.194
  kcdev.teeltech.com
  kcdev.teeltech.com:35.209.43.172
  kestrelclarity.teeltech.com
  kestrelclarity.teeltech.com:35.209.43.172
  mg.teeltech.com
  rr.teeltech.com
  rr.teeltech.com:35.209.43.172
  shop.teeltech.com
  shop.teeltech.com:35.209.43.172
  shopdmx.teeltech.com
  shopdmx.teeltech.com:35.209.43.172
  test.teeltech.com
  test.teeltech.com:35.209.43.172
  tishtest.teeltech.com
  tishtest.teeltech.com:35.209.43.172
  webmail.teeltech.com
  webshop.teeltech.com
  webshop.teeltech.com:35.209.43.172
  xbit.teeltech.com
  xbitdcm.teeltech.com
  xbitdcm.teeltech.com:35.209.43.172
  ```
  </details>
  
