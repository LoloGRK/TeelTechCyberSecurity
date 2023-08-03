# Exercise 4

Get whois information from a given domain

<details>
<summary>Solution</summary>

```console
# whois brsinformatica.com
 
Domain Name: BRSINFORMATICA.COM
Registry Domain ID: 1696514959_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.dinahosting.com
Registrar URL: http://www.dinahosting.com/dominios
Updated Date: 2022-12-12T07:07:13Z
Creation Date: 2012-01-11T17:43:15Z
Registry Expiry Date: 2026-01-11T17:43:15Z
Registrar: Dinahosting s.l.
Registrar IANA ID: 1262
Registrar Abuse Contact Email: abuse-domains@dinahosting.com
Registrar Abuse Contact Phone: +34.981040200
Domain Status: clientDeleteProhibited https://icann.org/epp#clientDeleteProhibited
Domain Status: clientTransferProhibited https://icann.org/epp#clientTransferProhibited
Name Server: NS1.BRSINFORMATICA.COM
Name Server: NS2.BRSINFORMATICA.COM
DNSSEC: unsigned
URL of the ICANN Whois Inaccuracy Complaint Form: https://www.icann.org/wicf/
>>> Last update of whois database: 2023-08-02T08:04:23Z

For more information on Whois status codes, please visit https://icann.org/epp

NOTICE: The expiration date displayed in this record is the date the registrar's sponsorship of the domain name registration in the registry is currently set to expire. This date does not necessarily reflect the expiration date of the domain name registrant's agreement with the sponsoring registrar.  Users may consult the sponsoring registrar's Whois database to view the registrar's reported date of expiration for this registration.

TERMS OF USE: You are not authorized to access or query our Whois database through the use of electronic processes that are high-volume and automated except as reasonably necessary to register domain names or modify existing registrations; the Data in VeriSign Global Registry Services' ("VeriSign") Whois database is provided by VeriSign for information purposes only, and to assist persons in obtaining information about or related to a domain name registration record. VeriSign does not guarantee its accuracy. By submitting a Whois query, you agree to abide by the following terms of use: You agree that you may use this Data only for lawful purposes and that under no circumstances will you use this Data to: (1) allow, enable, or otherwise support the transmission of mass unsolicited, commercial advertising or solicitations via e-mail, telephone, or facsimile; or (2) enable high volume, automated, electronic processes that apply to VeriSign (or its computer systems). The compilation, repackaging, dissemination or other use of this Data is expressly prohibited without the prior written consent of VeriSign. You agree not to use electronic processes that are automated and high-volume to access or query the Whois database except as reasonably necessary to register domain names or modify existing registrations. VeriSign reserves the right to restrict your access to the Whois database in its sole discretion to ensure operational stability.  VeriSign may restrict or terminate your access to the Whois database for failure to abide by these terms of use. VeriSign reserves the right to modify these terms at any time.
 
The Registry database contains ONLY .COM, .NET, .EDU domains and Registrars.

Domain Name: brsinformatica.com
Registry Domain ID: 1696514959_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.dinahosting.com
Registrar URL: http://dinahosting.com
Updated Date: 2022-12-12T08:07:13Z
Creation Date: 2012-01-11T17:43:15Z
Registrar Registration Expiration Date: 2026-01-11T17:43:15Z
Registrar: Dinahosting s.l.
Registrar IANA ID: 1262
Registrar Abuse Contact Email: abuse-domains@dinahosting.com
Registrar Abuse Contact Phone: +34.981040200
Domain Status: clientDeleteProhibited (http://www.icann.org/epp#clientDeleteProhibited)
Domain Status: clientTransferProhibited (http://www.icann.org/epp#clientTransferProhibited)
Registrant ID: Redacted by Privacy
Registrant Name: Redacted by Privacy 
Registrant Organization: SOLUCIONES DE SISTEMAS Y GESTION, S.L.
Registrant Street: Redacted by Privacy
Registrant City: Redacted by Privacy
Registrant State/Province: C�diz
Registrant Postal Code: Redacted by Privacy
Registrant Country: ES
Registrant Phone: Redacted by Privacy
Registrant Phone Ext: 
Registrant Fax: 
Registrant Fax Ext: 
Registrant Email: https://dinahosting.com/dominios/contacto-whois/dominio/brsinformatica.com
Admin ID: Redacted by Privacy
Admin Name: Redacted by Privacy 
Admin Organization: Redacted by Privacy
Admin Street: Redacted by Privacy
Admin City: Redacted by Privacy
Admin State/Province: Redacted by Privacy
Admin Postal Code: Redacted by Privacy
Admin Country: Redacted by Privacy
Admin Phone: Redacted by Privacy
Admin Phone Ext: 
Admin Fax: 
Admin Fax Ext: 
Admin Email: https://dinahosting.com/dominios/contacto-whois/dominio/brsinformatica.com
Tech ID: Redacted by Privacy
Tech Name: Redacted by Privacy 
Tech Organization: Redacted by Privacy
Tech Street: Redacted by Privacy
Tech City: Redacted by Privacy
Tech State/Province: Redacted by Privacy
Tech Postal Code: Redacted by Privacy
Tech Country: Redacted by Privacy
Tech Phone: Redacted by Privacy
Tech Phone Ext: 
Tech Fax: 
Tech Fax Ext: 
Tech Email: https://dinahosting.com/dominios/contacto-whois/dominio/brsinformatica.com
Name Server: ns1.brsinformatica.com
Name Server: ns2.brsinformatica.com
DNSSEC: unsigned
URL of the ICANN WHOIS Data Problem Reporting System: http://wdprs.internic.net/
Last update of WHOIS database: 2023-08-02T10:00:32+0200 <<<

To obtain further information about codes on Whois status please visit https://www.icann.org/resources/pages/epp-status-codes-2014-06-16-en 

The data in this whois database is provided to you for information purposes only, that is, to assist you in obtaining information about or related to a domain name registration record. We make this information available "as is," and do not guarantee its accuracy. By submitting a whois query, you agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (1) enable high volume, automated, electronic processes that stress or load this whois database system providing you this information; or (2) allow, enable, or otherwise support the transmission of mass unsolicited, commercial advertising or solicitations via direct mail, electronic mail, or by telephone. The compilation, repackaging, dissemination or other use of this data is expressly prohibited without prior written consent from us.

We reserve the right to modify these terms at any time. By submitting this query, you agree to abide by these terms.

```

*Explanation:* This command will perform a request to the whois database server, requesting information from the requested domain.

</details>

# Exercise 4.1

Pick a random Domain and get standard subdomains

<details>
<summary>Hint</summary>

The dig command in Linux is used to gather DNS information. It stands for Domain Information Groper, and it collects data about Domain Name Servers. The dig command is helpful for troubleshooting DNS problems, but is also used to display DNS information.

Fltered Help:

```
# dig -h
Usage:  dig [@global-server] [domain] [q-type] [q-class] {q-opt}
          {global-d-opt} host [@local-server] {local-d-opt}
          [ host [@local-server] {local-d-opt} [...]]
where: domain    is in the Domain Name System
       q-opt    is one of:
               -4                  (use IPv4 query transport only)
               -6                  (use IPv6 query transport only)
       d-opt    is of the form +keyword[=value], where keyword is:
                +[no]all            (Set or clear all display flags)
                +[no]answer         (Control display of answer section)
                +[no]multiline      (Print records in an expanded format)

```
  
</details>
  
<details>
<summary>Solution</summary>

```
# dig +noall +answer +multiline amnesia.es any
amnesia.es.             300 IN A 109.123.249.205
amnesia.es.             300 IN MX 20 aspmx.l.google.com.
amnesia.es.             300 IN MX 30 alt1.aspmx.l.google.com.
amnesia.es.             300 IN MX 40 alt2.aspmx.l.google.com.
amnesia.es.             300 IN MX 50 alt3.aspmx.l.google.com.
amnesia.es.             300 IN MX 60 alt4.aspmx.l.google.com.
amnesia.es.             300 IN NS ns.dinahosting.com.
amnesia.es.             300 IN NS ns2.dinahosting.com.
amnesia.es.             300 IN NS ns3.dinahosting.com.
amnesia.es.             300 IN NS ns4.dinahosting.com.
amnesia.es.             300 IN TXT "v=spf1 ip4:109.123.249.205 include:_spf.google.com ~all"
amnesia.es.             300 IN TXT "google-site-verification=dqqyZXAI03ALqCTmFAxhEHGi6LEzjUPxko_Q2nRibUI"
amnesia.es.             300 IN TXT "facebook-domain-verification=iamtw5ge5yi8b4ltxcntmctcnobi52"
amnesia.es.             300 IN TXT "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgIDCPdhSvuY6QfIZKhw/sVz/CBM1G7rJv0SEZaSBFK3rXz9NKz37cRbNxSiSmdAblqEpgwKXAiCrFWJdIUZU1OY5bqo9mX04rdM8WjfaXOc7iwKIii2VN8wj/m9GHha+PCyvOZe+ZaNeSt5tQB99xWCtZrcvA3zKamCZ3fQU4MqDslREVWhG+qz/BfP9BT7Hl" "klaOqCvOs+k7dMd3FA2rNn1tyoeFezaX2Tku7c8q/Be/gIb0qZAnETRuHsqywynfcqdgpBXK+3Kw7jZBj3gAMM5423385kF/QIMQxhUfgp/Iy57F3hxDvmr7dHgGvpoE9Ar4PJOM0PCiz9+Hn2JdQIDAQAB"
amnesia.es.             300 IN TXT "v=DMARC1; p=none; rua=mailto:dmarc-reports@amnesia.es"
amnesia.es.             300 IN SOA ns.dinahosting.com. hostmaster.amnesia.es. (
                              2019020401 ; serial
                              3600       ; refresh (1 hour)
                              120        ; retry (2 minutes)
                              1209600    ; expire (2 weeks)
                              300        ; minimum (5 minutes)
                              )
```

*Explanation:* This command will request from DNS servers the most common records from a given domain.

</details>


</details>

# Exercise 4.2

Get mosts subdomains from a given domain

<details>
<summary>Hint</summary>

You can’t do that, you can try most known ones, but there can be thousands, so… let’s brute force them.

You will need:

- dnsrecon: A tool to brute-force DNS-Records
  - website:
  
    [https://github.com/darkoperator/dnsrecon](https://github.com/darkoperator/dnsrecon)
  
  - Installation:
  
    ```
    apt install dnsrecon
    ```
    
- Dictionaries: to go beyond standard DNS-Records. (just use the last one)

  ```
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/bitquark-subdomains-top100000.txt
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/deepmagic.com-prefixes-top500.txt
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/deepmagic.com-prefixes-top50000.txt
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/fierce-hostlist.txt
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/namelist.txt
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/sortedcombined-knock-dnsrecon-fierce-reconng.txt
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/subdomains-top1million-110000.txt
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/subdomains-top1million-20000.txt
  https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_004/resources/subdomains-top1million-5000.txt
  ```

</details>

<details>
<summary>Solution</summary>

```
# dnsrecon -d cofares.es -D subdomains-top1million-5000.txt -t brt
[*] Using the dictionary file: /usr/share/dnsrecon/namelist.txt (provided by tool)
[*] brt: Performing host and subdomain brute force against cofares.es...
[+]      CNAME be.cofares.es ghs.googlehosted.com
[+]      A ghs.googlehosted.com 142.250.184.179
[+]      A core.cofares.es 46.25.73.77
[+]      A crm.cofares.es 46.25.73.73
[+]      A houston.cofares.es 192.168.31.43
[+]      A mailhost.cofares.es 46.25.73.69
[+]      A mx.cofares.es 46.25.73.69
[+]      A sms.cofares.es 213.9.221.100
[+]      A vpn.cofares.es 188.87.193.20
[+]      A vpn2.cofares.es 213.27.140.178
[+] 10 Records Found
```

*Explanation:* This command will request one by one (in paralell) subdomains listed in the dictionary file for the given domain.

</details>
