# Exercise 24

  The following [email](https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_024/email_001.eml) has been received.
  
  Investigate it!
    
  <details>
  <summary>Solution</summary>
  
  1. Open the email with a text editor.
  2. Identify Headers
  3. Get hops

     | Date | Event | Server |
     |------|-------|--------|
     | 01 Aug 2023 06:50:02 -0700 (PDT) | Email was written | - |
     | - | Out for delivery | o77.email.sendgrid.com |
     | Tue, 01 Aug 2023 14:46:30 +0100 (UTC) | Received By | ismtpd0081p1sjc2.sendgrid.com (SG) |
     | Tue, 01 Aug 2023 14:46:30 +0100 UTC | Received By | filter1166p1mdw1.sendgrid.com |
     | Tue, 01 Aug 2023 06:50:02 -0700 (PDT) | Received By | students.mtsd.k12.wi.us |
     | Tue, 01 Aug 2023 06:50:02 -0700 (PDT) | Received By | smtp-relay.gmail.com |
     | Tue, 01 Aug 2023 06:50:02 -0700 (PDT) | Received By | mail-sor-f101.google.com |
     | Tue, 01 Aug 2023 06:50:03 -0700 (PDT) | Received By | x.google.com |
     | Tue, 1 Aug 2023 06:50:03 -0700 (PDT) | Received By | 2002:a2e:b048:0:b0:2b9:e230:25ce |
     | - | Delivered | 2002:a17:906:850e:b0:992:d9ed:fc4b |

     <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_024/images/email_track_001.png" width="775">
         
  4. Get Important headers
     
     | Header | Value |
     |--------|-------|
     | Return-Path | PWdedrhn@pwdedrhn.darfield.school.nz |
     | Received-SPF | neutral (google.com: 209.85.220.101 is neither permitted nor denied by best guess record for domain of pwdedrhn@pwdedrhn.darfield.school.nz) client-ip=209.85.220.101; |
     | X-Relaying-Domain | darfield.school.nz |
     | Sender | PWdedrhn@pwdedrhn.darfield.school.nz |
     | Precedence | bulk |
     | X-Mailer | BM22 Mail |
     | From | FedEx \<lolo.@gmail.com\> |
     | X-campaignID | bm23_bbmqyoxdxrtroxvgymqygehbfg |
     
   5. Get into the scam

      Click on the link and check landing page
      
      <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_024/images/scam_enrollment.png" width="475">

      5.1 Check Certificate

         <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_024/images/scam_enrollment_001.png" width="475">
      
         <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_024/images/scam_enrollment_002.png" width="475">
         
         It was issued some days ago and it will expire next month.
         <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_024/images/scam_enrollment_003.png" width="475">
     
      5.2. Domain Whois Information
      
      ```
      $ whois mintingred.com
         Domain Name: MINTINGRED.COM
         Registry Domain ID: 2790805026_DOMAIN_COM-VRSN
         Registrar WHOIS Server: whois.namecheap.com
         Registrar URL: http://www.namecheap.com
         Updated Date: 2023-06-16T18:24:42Z
         Creation Date: 2023-06-16T18:24:21Z
         Registry Expiry Date: 2024-06-16T18:24:21Z
         Registrar: NameCheap, Inc.
         Registrar IANA ID: 1068
         Registrar Abuse Contact Email: abuse@namecheap.com
         Registrar Abuse Contact Phone: +1.6613102107
         Domain Status: clientTransferProhibited https://icann.org/epp#clientTransferProhibited
         Name Server: AITANA.NS.CLOUDFLARE.COM
         Name Server: KURT.NS.CLOUDFLARE.COM
         DNSSEC: unsigned
         URL of the ICANN Whois Inaccuracy Complaint Form: https://www.icann.org/wicf/
      >>> Last update of whois database: 2023-08-04T16:53:19Z <<<
      
      For more information on Whois status codes, please visit https://icann.org/epp
      
      NOTICE: The expiration date displayed in this record is the date the
      registrar's sponsorship of the domain name registration in the registry is
      currently set to expire. This date does not necessarily reflect the expiration
      date of the domain name registrant's agreement with the sponsoring
      registrar.  Users may consult the sponsoring registrar's Whois database to
      view the registrar's reported date of expiration for this registration.
      
      TERMS OF USE: You are not authorized to access or query our Whois
      database through the use of electronic processes that are high-volume and
      automated except as reasonably necessary to register domain names or
      modify existing registrations; the Data in VeriSign Global Registry
      Services' ("VeriSign") Whois database is provided by VeriSign for
      information purposes only, and to assist persons in obtaining information
      about or related to a domain name registration record. VeriSign does not
      guarantee its accuracy. By submitting a Whois query, you agree to abide
      by the following terms of use: You agree that you may use this Data only
      for lawful purposes and that under no circumstances will you use this Data
      to: (1) allow, enable, or otherwise support the transmission of mass
      unsolicited, commercial advertising or solicitations via e-mail, telephone,
      or facsimile; or (2) enable high volume, automated, electronic processes
      that apply to VeriSign (or its computer systems). The compilation,
      repackaging, dissemination or other use of this Data is expressly
      prohibited without the prior written consent of VeriSign. You agree not to
      use electronic processes that are automated and high-volume to access or
      query the Whois database except as reasonably necessary to register
      domain names or modify existing registrations. VeriSign reserves the right
      to restrict your access to the Whois database in its sole discretion to ensure
      operational stability.  VeriSign may restrict or terminate your access to the
      Whois database for failure to abide by these terms of use. VeriSign
      reserves the right to modify these terms at any time.
      
      The Registry database contains ONLY .COM, .NET, .EDU domains and
      Registrars.
      Domain name: mintingred.com
      Registry Domain ID: 2790805026_DOMAIN_COM-VRSN
      Registrar WHOIS Server: whois.namecheap.com
      Registrar URL: http://www.namecheap.com
      Updated Date: 0001-01-01T00:00:00.00Z
      Creation Date: 2023-06-16T18:24:21.00Z
      Registrar Registration Expiration Date: 2024-06-16T18:24:21.00Z
      Registrar: NAMECHEAP INC
      Registrar IANA ID: 1068
      Registrar Abuse Contact Email: abuse@namecheap.com
      Registrar Abuse Contact Phone: +1.9854014545
      Reseller: NAMECHEAP INC
      Domain Status: clientTransferProhibited https://icann.org/epp#clientTransferProhibited
      Domain Status: addPeriod https://icann.org/epp#addPeriod
      Registry Registrant ID: 
      Registrant Name: Redacted for Privacy
      Registrant Organization: Privacy service provided by Withheld for Privacy ehf
      Registrant Street: Kalkofnsvegur 2 
      Registrant City: Reykjavik
      Registrant State/Province: Capital Region
      Registrant Postal Code: 101
      Registrant Country: IS
      Registrant Phone: +354.4212434
      Registrant Phone Ext: 
      Registrant Fax: 
      Registrant Fax Ext: 
      Registrant Email: 449a39fff8fe426ba86583c5ca836a3d.protect@withheldforprivacy.com
      Registry Admin ID: 
      Admin Name: Redacted for Privacy
      Admin Organization: Privacy service provided by Withheld for Privacy ehf
      Admin Street: Kalkofnsvegur 2 
      Admin City: Reykjavik
      Admin State/Province: Capital Region
      Admin Postal Code: 101
      Admin Country: IS
      Admin Phone: +354.4212434
      Admin Phone Ext: 
      Admin Fax: 
      Admin Fax Ext: 
      Admin Email: 449a39fff8fe426ba86583c5ca836a3d.protect@withheldforprivacy.com
      Registry Tech ID: 
      Tech Name: Redacted for Privacy
      Tech Organization: Privacy service provided by Withheld for Privacy ehf
      Tech Street: Kalkofnsvegur 2 
      Tech City: Reykjavik
      Tech State/Province: Capital Region
      Tech Postal Code: 101
      Tech Country: IS
      Tech Phone: +354.4212434
      Tech Phone Ext: 
      Tech Fax: 
      Tech Fax Ext: 
      Tech Email: 449a39fff8fe426ba86583c5ca836a3d.protect@withheldforprivacy.com
      Name Server: aitana.ns.cloudflare.com
      Name Server: kurt.ns.cloudflare.com
      DNSSEC: unsigned
      URL of the ICANN WHOIS Data Problem Reporting System: http://wdprs.internic.net/
      >>> Last update of WHOIS database: 2023-08-03T17:52:57.36Z <<<
      For more information on Whois status codes, please visit https://icann.org/epp
      
      ```
      
      Also registered some days ago.

    6. Let's represent it in Maltego

       [Download Maltego File](https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_024/exercise24.mtgl)

       <img src="https://raw.githubusercontent.com/LoloGRK/TeelTechCyberSecurity/main/exercises_024/images/maltego_001.png" width="875">

  </details>
    
