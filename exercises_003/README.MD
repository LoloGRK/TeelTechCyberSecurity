- Exercise 3

  Pick a random IP address and get some information from it
  
  - Resources:
    - [www.asnlookup.com](https://www.asnlookup.com)
    - [www.iplocation.net](https://www.iplocation.net)
    - [www.whatismyip.com/ip-whois-lookup/](https://www.whatismyip.com/ip-whois-lookup)
    - *whois* command
  
  <details>
  <summary>Hint</summary>
  
  To get a server's IP address, just ping it.
  
  ```
  # ping amnesia.es
  PING amnesia.es (109.123.249.205) 56(84) bytes of data.
  64 bytes from vmi1273822.contaboserver.net (109.123.249.205): icmp_seq=1 ttl=54 time=44.3 ms
  64 bytes from vmi1273822.contaboserver.net (109.123.249.205): icmp_seq=2 ttl=54 time=45.0 ms
  64 bytes from vmi1273822.contaboserver.net (109.123.249.205): icmp_seq=3 ttl=54 time=44.5 ms
  ^C
  --- amnesia.es ping statistics ---
  3 packets transmitted, 3 received, 0% packet loss, time 2002ms
  rtt min/avg/max/mdev = 44.326/44.608/44.950/0.258 ms  
  ```
  
  *Explanation:* This command will perform a DNS request to the whois database server, and once it gets the answer, pings it.
  
  </details>
  
  <details>
  <summary>Solution</summary>
  
  - asnlookup
  
    | 109.123.249.205   |            |
    |-------------------|-------------|
    | AS Handle         | AS51167     |
    | ASN Name          | CONTABO     |
    | Organization Name | Contabo GmbH|
    | Organization ID   | ORG-GG22-RIPE|
    | Country           | DE Germany  |
    | Regional Registry | RIPE        |
  
  - iplocation.net
  
    | Attribute       | Value                    |
    |-----------------|--------------------------|
    | IP ADDRESS      | 109.123.249.205          |
    | COUNTRY         | Germany                  |
    | REGION          | North Rhine-Westphalia   |
    | CITY            | Düsseldorf               |
    | ISP             | Contabo GmbH             |
    | ORGANIZATION    | Contabo GmbH (contabo.com)|
    | LATITUDE        | 51.2217                  |
    | LONGITUDE       | 6.7762                   |

  - whois

    ```
    IP WHOIS Lookup Results For 109.123.249.205
    % This is the RIPE Database query service.
    % The objects are in RPSL format.
    %
    % The RIPE Database is subject to Terms and Conditions.
    % See http://www.ripe.net/db/support/db-terms-conditions.pdf
    
    % Note: this output has been filtered.
    %       To receive output for a database update, use the "-B" flag.
    
    % Information related to '109.123.240.0 - 109.123.255.255'
    
    % Abuse contact for '109.123.240.0 - 109.123.255.255' is 'abuse@contabo.de'
    
    inetnum:        109.123.240.0 - 109.123.255.255
    netname:        TT-20221020
    descr:          Contabo GmbH
    country:        DE
    org:            ORG-CG316-RIPE
    admin-c:        MH7476-RIPE
    tech-c:         MH7476-RIPE
    abuse-c:        MH12453-RIPE
    status:         ASSIGNED PA
    mnt-by:         MNT-CONTABO
    mnt-by:         TERRATRANSIT-MNT
    created:        2022-11-21T17:28:22Z
    last-modified:  2022-11-21T17:28:22Z
    source:         RIPE
    
    organisation:   ORG-CG316-RIPE
    org-name:       Contabo GmbH
    org-type:       other
    remarks:        * Please direct all complaints about Internet abuse like Spam, hacking or scans *
    remarks:        * to abuse@contabo.de . This will guarantee fastest processing possible. *
    address:        Aschauer Strasse 32a
    address:        81549
    address:        Munchen
    address:        GERMANY
    phone:          +498921268372
    fax-no:         +498921665862
    abuse-c:        MH12453-RIPE
    mnt-ref:        MNT-CONTABO
    mnt-ref:        de-net1-1-mnt
    mnt-by:         MNT-CONTABO
    mnt-ref:        TERRATRANSIT-MNT
    mnt-by:         TERRATRANSIT-MNT
    mnt-by:         de-net1-1-mnt
    mnt-ref:        de-tt1data-1-mnt
    created:        2021-11-09T22:12:54Z
    last-modified:  2022-01-03T23:38:33Z
    source:         RIPE # Filtered
    
    person:         Wilhelm Zwalina
    address:        Contabo GmbH
    address:        Aschauer Str. 32a
    address:        81549 Muenchen
    phone:          +49 89 21268372
    fax-no:         +49 89 21665862
    nic-hdl:        MH7476-RIPE
    mnt-by:         MNT-CONTABO
    mnt-by:         MNT-GIGA-HOSTING
    created:        2010-01-04T10:41:37Z
    last-modified:  2020-04-24T16:09:30Z
    source:         RIPE
    
    % Information related to '109.123.240.0/20AS51167'
    
    route:          109.123.240.0/20
    descr:          CONTABO
    origin:         AS51167
    mnt-by:         MNT-CONTABO
    created:        2022-10-20T15:27:20Z
    last-modified:  2022-11-02T07:54:30Z
    source:         RIPE
    
    % This query was served by the RIPE Database Query Service version 1.107 (SHETLAND)
    ```



</details>

