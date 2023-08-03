# Exercise 21
  
Analyze a full email source code:

- Get a trace of the server it passed through
- Get a timeline of delivery
- Try to extract attachments (if any)

```
Date: Thu, 22 Jun 2023 16:09:44 +0200 (CEST)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary=16898774101.5FD15b.80487
Content-Transfer-Encoding: 7bit
Subject: Invoice
From: "Manuel" <mb@grk.com>
To: Manuel2 <mb@bga.com>
Message-Id:
 <!&!AAAAAAAAAAAYAAAAAAAAANsXO7pdULVAv07bBLD6vjHCgAAAEAAAAKU2XUQ8mxBNu5xIBOmMU8MBAAAAAA==@grk.com>
Return-Path: <mb@grk.com>
Received: from llsc091-a16.servidoresdns.net (llsc091-a16.correo.lan
 [10.7.81.56]) by llcm199-z.correo.lan with LMTPA; Thu, 22 Jun 2023 15:31:23
 +0200
Received: from lp-mail-smtp-filter-in-b-23.correo.lan
 (lp-mail-smtp-filter-in-b-23.correo.lan [10.7.82.86]) by
 llsc091-a16.servidoresdns.net (Postfix) with ESMTP id 4Qn1VM0PNCz5p5 for
 <mb@bga.com>; Thu, 22 Jun 2023 15:31:23 +0200 (CEST)
Received: from llsc091-a16.servidoresdns.net ([10.7.81.56]) by
 lp-mail-smtp-filter-in-b-23.correo.lan
 (lp-mail-smtp-filter-in-b-23.correo.lan [10.7.82.86]) (amavisd-new, port
 10024) with ESMTP id UrvubB__9yWv for <mb@bga.com>; Thu, 22
 Jun 2023 15:31:21 +0200 (CEST)
Received: from hl1085.dinaserver.com (hl1085.dinaserver.com [82.98.168.206])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) (No
 client certificate requested) by llsc091-a16.servidoresdns.net (Postfix) with
 ESMTPS id 4Qn1VJ41BFz5L7 for <mb@bga.com>; Thu, 22 Jun 2023
 15:31:20 +0200 (CEST)
Received: from DESKTOPU75QM2U (170.red-2-136-255.staticip.rima-tde.net
 [2.136.255.170]) (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384
 (256/256 bits)) (No client certificate requested) (Authenticated sender:
 mb@grk.com) by hl1085.dinaserver.com (Postfix) with ESMTPSA
 id 7D5002DC3C03 for <mb@bga.com>; Thu, 22 Jun 2023 15:31:12
 +0200 (CEST)
X-Cyrus-Session-Id: llce238-a-16785-1687440683-1-17685990513312630414
X-Sieve: CMU Sieve 3.0
X-Original-To: mb@bga.com
X-Virus-Scanned: by ClamAV
Authentication-Results: llsc091-a16.servidoresdns.net; dkim=pass (1024-bit
 rsa key sha256) header.d=grk.com
 header.i=@grk.com header.b=ghn85X2q header.a=rsa-sha256
 header.s=default; dmarc=none policy.published-domain-policy=none
 policy.applied-disposition=none policy.evaluated-disposition=none
 (p=none,d=none,d.eval=none) policy.policy-from=p
 header.from=grk.com; spf=pass
 smtp.mailfrom=mb@grk.com smtp.helo=hl1085.dinaserver.com
Received-SPF: pass (grk.com: 82.98.168.206 is authorized to use
 'mb@grk.com' in 'mfrom' identity (mechanism 'mx' matched))
 receiver=llsc091-a16.servidoresdns.net; identity=mailfrom;
 envelope-from="mb@grk.com"; helo=hl1085.dinaserver.com;
 client-ip=82.98.168.206
X-DinaScanner-From: mb@grk.com
X-DinaScanner-SpamCheck: no es spam, SpamAssassin (no almacenado,
 puntaje=0.593, requerido 6, autolearn=disabled, ALL_TRUSTED -1.00, BAYES_50
 1.80, DKIMWL_BLOCKED 0.00, DKIM_SIGNED 0.10, DKIM_VALID -0.10, DKIM_VALID_AU
 -0.10, DKIM_VALID_EF -0.10, FROM_FMBLA_NDBLOCKED 0.00, HTML_MESSAGE 0.00,
 T_SCC_BODY_TEXT_LINE -0.01)
X-DinaScanner: Libre de Virus
X-DinaScanner-ID: 7D5002DC3C03.ABE31
X-DinaScanner-Information: DinaScanner. Filtro anti-Spam y anti-Virus
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=grk.com;
 s=default; t=1687440672; bh=YQeGUPplWltuwS95M/VO1z/SAuIMwI851uLtA+GX/qc=;
 h=From:To:Subject:Date;
 b=ghn85X2qd477tt2H6VY7HPXDRSlBg+KGmdEVy6qebvqqcRR3LO5KOaPJppNIISlL6
 j1GJOVfHh1LeaHz25pB3QRAuNiyHO/CMSjKuMUWxcjQaG1tz/Krt7s3ceHvXE7QX3q
 VtvpGBaZF4W2NTOjp4F7TYXC1ICdXNWp+Wej6+34=
Return-Receipt-To: "Brem" <mb@grk.com>
X-Priority: 1 (Highest)
X-MSMail-Priority: High
Importance: High
Thread-Index: AdmlDcEhcxlFmlnMTBiFNtIqtFFLOg==
Content-Language: es
Disposition-Notification-To: "Brem" <mb@grk.com>
Unique-by-id00101: ID-324523523523


--16898774101.5FD15b.80487
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary=16898774100.ad0fC.80487
Content-Transfer-Encoding: 7bit
Content-ID: <16898774102.5b80.80487@juans>


--16898774100.ad0fC.80487
Content-Type: text/plain; charset=UTF-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

 

 

Invoice attached,

 

 

 

 

 




--16898774101.5FD15b.80487
Content-ID: 
Content-Type: application/pdf; name="2 23 120.pdf"
Content-Disposition: attachment; filename="2 23 120.pdf"
Content-Transfer-Encoding: base64

JVBERi0xLjMNCiXi48/TDQoNCjEgMCBvYmoNCjw8DQovVHlwZSAvQ2F0YWxvZw0KL091dGxpbmVz
IDIgMCBSDQovUGFnZXMgMyAwIFINCj4+DQplbmRvYmoNCg0KMiAwIG9iag0KPDwNCi9UeXBlIC9P
dXRsaW5lcw0KL0NvdW50IDANCj4+DQplbmRvYmoNCg0KMyAwIG9iag0KPDwNCi9UeXBlIC9QYWdl
cw0KL0NvdW50IDINCi9LaWRzIFsgNCAwIFIgNiAwIFIgXSANCj4+DQplbmRvYmoNCg0KNCAwIG9i
ag0KPDwNCi9UeXBlIC9QYWdlDQovUGFyZW50IDMgMCBSDQovUmVzb3VyY2VzIDw8DQovRm9udCA8
PA0KL0YxIDkgMCBSIA0KPj4NCi9Qcm9jU2V0IDggMCBSDQo+Pg0KL01lZGlhQm94IFswIDAgNjEy
LjAwMDAgNzkyLjAwMDBdDQovQ29udGVudHMgNSAwIFINCj4+DQplbmRvYmoNCg0KNSAwIG9iag0K
PDwgL0xlbmd0aCAxMDc0ID4+DQpzdHJlYW0NCjIgSg0KQlQNCjAgMCAwIHJnDQovRjEgMDAyNyBU
Zg0KNTcuMzc1MCA3MjIuMjgwMCBUZA0KKCBBIFNpbXBsZSBQREYgRmlsZSApIFRqDQpFVA0KQlQN
Ci9GMSAwMDEwIFRmDQo2OS4yNTAwIDY4OC42MDgwIFRkDQooIFRoaXMgaXMgYSBzbWFsbCBkZW1v
bnN0cmF0aW9uIC5wZGYgZmlsZSAtICkgVGoNCkVUDQpCVA0KL0YxIDAwMTAgVGYNCjY5LjI1MDAg
NjY0LjcwNDAgVGQNCigganVzdCBmb3IgdXNlIGluIHRoZSBWaXJ0dWFsIE1lY2hhbmljcyB0dXRv
cmlhbHMuIE1vcmUgdGV4dC4gQW5kIG1vcmUgKSBUag0KRVQNCkJUDQovRjEgMDAxMCBUZg0KNjku
MjUwMCA2NTIuNzUyMCBUZA0KKCB0ZXh0LiBBbmQgbW9yZSB0ZXh0LiBBbmQgbW9yZSB0ZXh0LiBB
bmQgbW9yZSB0ZXh0LiApIFRqDQpFVA0KQlQNCi9GMSAwMDEwIFRmDQo2OS4yNTAwIDYyOC44NDgw
IFRkDQooIEFuZCBtb3JlIHRleHQuIEFuZCBtb3JlIHRleHQuIEFuZCBtb3JlIHRleHQuIEFuZCBt
b3JlIHRleHQuIEFuZCBtb3JlICkgVGoNCkVUDQpCVA0KL0YxIDAwMTAgVGYNCjY5LjI1MDAgNjE2
Ljg5NjAgVGQNCiggdGV4dC4gQW5kIG1vcmUgdGV4dC4gQm9yaW5nLCB6enp6ei4gQW5kIG1vcmUg
dGV4dC4gQW5kIG1vcmUgdGV4dC4gQW5kICkgVGoNCkVUDQpCVA0KL0YxIDAwMTAgVGYNCjY5LjI1
MDAgNjA0Ljk0NDAgVGQNCiggbW9yZSB0ZXh0LiBBbmQgbW9yZSB0ZXh0LiBBbmQgbW9yZSB0ZXh0
LiBBbmQgbW9yZSB0ZXh0LiBBbmQgbW9yZSB0ZXh0LiApIFRqDQpFVA0KQlQNCi9GMSAwMDEwIFRm
DQo2OS4yNTAwIDU5Mi45OTIwIFRkDQooIEFuZCBtb3JlIHRleHQuIEFuZCBtb3JlIHRleHQuICkg
VGoNCkVUDQpCVA0KL0YxIDAwMTAgVGYNCjY5LjI1MDAgNTY5LjA4ODAgVGQNCiggQW5kIG1vcmUg
dGV4dC4gQW5kIG1vcmUgdGV4dC4gQW5kIG1vcmUgdGV4dC4gQW5kIG1vcmUgdGV4dC4gQW5kIG1v
cmUgKSBUag0KRVQNCkJUDQovRjEgMDAxMCBUZg0KNjkuMjUwMCA1NTcuMTM2MCBUZA0KKCB0ZXh0
LiBBbmQgbW9yZSB0ZXh0LiBBbmQgbW9yZSB0ZXh0LiBFdmVuIG1vcmUuIENvbnRpbnVlZCBvbiBw
YWdlIDIgLi4uKSBUag0KRVQNCmVuZHN0cmVhbQ0KZW5kb2JqDQoNCjYgMCBvYmoNCjw8DQovVHlw
ZSAvUGFnZQ0KL1BhcmVudCAzIDAgUg0KL1Jlc291cmNlcyA8PA0KL0ZvbnQgPDwNCi9GMSA5IDAg
UiANCj4+DQovUHJvY1NldCA4IDAgUg0KPj4NCi9NZWRpYUJveCBbMCAwIDYxMi4wMDAwIDc5Mi4w
MDAwXQ0KL0NvbnRlbnRzIDcgMCBSDQo+Pg0KZW5kb2JqDQoNCjcgMCBvYmoNCjw8IC9MZW5ndGgg
Njc2ID4+DQpzdHJlYW0NCjIgSg0KQlQNCjAgMCAwIHJnDQovRjEgMDAyNyBUZg0KNTcuMzc1MCA3
MjIuMjgwMCBUZA0KKCBTaW1wbGUgUERGIEZpbGUgMiApIFRqDQpFVA0KQlQNCi9GMSAwMDEwIFRm
DQo2OS4yNTAwIDY4OC42MDgwIFRkDQooIC4uLmNvbnRpbnVlZCBmcm9tIHBhZ2UgMS4gWWV0IG1v
cmUgdGV4dC4gQW5kIG1vcmUgdGV4dC4gQW5kIG1vcmUgdGV4dC4gKSBUag0KRVQNCkJUDQovRjEg
MDAxMCBUZg0KNjkuMjUwMCA2NzYuNjU2MCBUZA0KKCBBbmQgbW9yZSB0ZXh0LiBBbmQgbW9yZSB0
ZXh0LiBBbmQgbW9yZSB0ZXh0LiBBbmQgbW9yZSB0ZXh0LiBBbmQgbW9yZSApIFRqDQpFVA0KQlQN
Ci9GMSAwMDEwIFRmDQo2OS4yNTAwIDY2NC43MDQwIFRkDQooIHRleHQuIE9oLCBob3cgYm9yaW5n
IHR5cGluZyB0aGlzIHN0dWZmLiBCdXQgbm90IGFzIGJvcmluZyBhcyB3YXRjaGluZyApIFRqDQpF
VA0KQlQNCi9GMSAwMDEwIFRmDQo2OS4yNTAwIDY1Mi43NTIwIFRkDQooIHBhaW50IGRyeS4gQW5k
IG1vcmUgdGV4dC4gQW5kIG1vcmUgdGV4dC4gQW5kIG1vcmUgdGV4dC4gQW5kIG1vcmUgdGV4dC4g
KSBUag0KRVQNCkJUDQovRjEgMDAxMCBUZg0KNjkuMjUwMCA2NDAuODAwMCBUZA0KKCBCb3Jpbmcu
ICBNb3JlLCBhIGxpdHRsZSBtb3JlIHRleHQuIFRoZSBlbmQsIGFuZCBqdXN0IGFzIHdlbGwuICkg
VGoNCkVUDQplbmRzdHJlYW0NCmVuZG9iag0KDQo4IDAgb2JqDQpbL1BERiAvVGV4dF0NCmVuZG9i
ag0KDQo5IDAgb2JqDQo8PA0KL1R5cGUgL0ZvbnQNCi9TdWJ0eXBlIC9UeXBlMQ0KL05hbWUgL0Yx
DQovQmFzZUZvbnQgL0hlbHZldGljYQ0KL0VuY29kaW5nIC9XaW5BbnNpRW5jb2RpbmcNCj4+DQpl
bmRvYmoNCg0KMTAgMCBvYmoNCjw8DQovQ3JlYXRvciAoUmF2ZSBcKGh0dHA6Ly93d3cubmV2cm9u
YS5jb20vcmF2ZVwpKQ0KL1Byb2R1Y2VyIChOZXZyb25hIERlc2lnbnMpDQovQ3JlYXRpb25EYXRl
IChEOjIwMDYwMzAxMDcyODI2KQ0KPj4NCmVuZG9iag0KDQp4cmVmDQowIDExDQowMDAwMDAwMDAw
IDY1NTM1IGYNCjAwMDAwMDAwMTkgMDAwMDAgbg0KMDAwMDAwMDA5MyAwMDAwMCBuDQowMDAwMDAw
MTQ3IDAwMDAwIG4NCjAwMDAwMDAyMjIgMDAwMDAgbg0KMDAwMDAwMDM5MCAwMDAwMCBuDQowMDAw
MDAxNTIyIDAwMDAwIG4NCjAwMDAwMDE2OTAgMDAwMDAgbg0KMDAwMDAwMjQyMyAwMDAwMCBuDQow
MDAwMDAyNDU2IDAwMDAwIG4NCjAwMDAwMDI1NzQgMDAwMDAgbg0KDQp0cmFpbGVyDQo8PA0KL1Np
emUgMTENCi9Sb290IDEgMCBSDQovSW5mbyAxMCAwIFINCj4+DQoNCnN0YXJ0eHJlZg0KMjcxNA0K
JSVFT0YNCg==

--16898774101.5FD15b.80487--
```

<details>

<summary>Solution</summary>
  <blockquote>
  <details>
  
  <summary>Tracking Servers</summary>
    
  The journey begins with the sender, identified by the "From" header:
  
  ```
  From: "MB" <mb@grk.com>
  ```

  The email is intended for the recipient identified by the "To" header:
      
  ```
  To: <mb@bga.es>
  ```

  The email was written Thu, 22 Jun 2023 16:09:44 +0200 (CEST)
  
  ```
  Date: Thu, 22 Jun 2023 16:09:44 +0200 (CEST)
  ```
  
  The email's journey involves passing through several servers. It's important to read the "Received" fields from bottom to top to understand the chronological order of the email's path.
  
  1. Originating Server
  
     The email was originally sent from a desktop machine, named DESKTOPU75QM2U, with an IP address of 2.136.255.170. The email server hl1085.dinaserver.com received this message:
  
     ```
     Received: from DESKTOPU75QM2U (170.red-2-136-255.staticip.rima-tde.net [2.136.255.170])
     (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits)) 
     (No client certificate requested) 
     (Authenticated sender: mb@grk.com.com) by hl1085.dinaserver.com (Postfix) with ESMTPSA id 7D5002DC3C03 for <mb@bga.es>;
     Thu, 22 Jun 2023 15:31:12 +0200 (CEST)
     ```
  
     This record shows that the server (hl1085.dinaserver.com) received the email on Thu, 22 Jun 2023 15:31:12 +0200 (CEST.
  
  2. Intermediate Servers
     
     The email was then relayed through several servers, with each server appending its own Received field. The first part of the headers can be read from the bottom up.
     
     2.1. First Hop
     
        ```
        Received: from hl1085.dinaserver.com (hl1085.dinaserver.com [82.98.168.206])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested) by llsc091-a16.servidoresdns.net (Postfix) with ESMTPS id 4Qn1VJ41BFz5L7 for <mb@bga.es>;
        Thu, 22 Jun 2023 15:31:20 +0200 (CEST)
        ```    
        
        - Source: hl1085.dinaserver.com [82.98.168.206]
        - Destination: llsc091-a16.servidoresdns.net
        - Original Timestamp: Thu, 22 Jun 2023 15:31:20 +0200 (CEST)
        - UTC Timestamp: Thu, 22 Jun 2023 13:31:20 UTC
        
     2.2. Second Hop
     
        ```
        Received: from llsc091-a16.servidoresdns.net ([10.7.81.56]) by lp-mail-smtp-filter-in-b-23.correo.lan
        (lp-mail-smtp-filter-in-b-23.correo.lan [10.7.82.86])
        (amavisd-new, port 10024) with ESMTP id UrvubB__9yWv for <mb@bga.es>; 
        Thu, 22 Jun 2023 15:31:21 +0200 (CEST)
        ```    
        
        - Source: llsc091-a16.servidoresdns.net [10.7.81.56]
        - Destination: lp-mail-smtp-filter-in-b-23.correo.lan [10.7.82.86]
        - Original Timestamp: Thu, 22 Jun 2023 15:31:21 +0200 (CEST)
        - UTC Timestamp: Thu, 22 Jun 2023 13:31:21 UTC
  
     2.3. Third Hop
     
        ```
        Received: from lp-mail-smtp-filter-in-b-23.correo.lan
        (lp-mail-smtp-filter-in-b-23.correo.lan [10.7.82.86]) by llsc091-a16.servidoresdns.net (Postfix) with ESMTP id 4Qn1VM0PNCz5p5 for <mb@bga.es>;
        Thu, 22 Jun 2023 15:31:23 +0200 (CEST)
        ```    
        
        - Source: lp-mail-smtp-filter-in-b-23.correo.lan [10.7.82.86]
        - Destination: llsc091-a16.servidoresdns.net
        - Original Timestamp: Thu, 22 Jun 2023 15:31:23 +0200 (CEST)
        - UTC Timestamp: Thu, 22 Jun 2023 13:31:23 UTC
  
        ```
  
  3. Destination Server
  
     Finally, the email arrived at the destination server on Thu, 22 Jun 2023 15:31:20 +0200 (CEST):
     
     ```
     Received: from llsc091-a16.servidoresdns.net (llsc091-a16.correo.lan [10.7.81.56]) by llcm199-z.correo.lan with LMTPA; 
     Thu, 22 Jun 2023 15:31:20 +0200 (CEST)
     ```
     
  </details>
  </blockquote>
  
  <blockquote>
  <details>
  
  <summary>Delivery Timeline</summary>
  
  From delivering timestamps we can conclude the following:
  
  | Date | Event | Server |
  |------|-------|--------|
  | Thu, 22 Jun 2023 16:09:44 +0200 (CEST) | Email was written | DESKTOPU75QM2U (Client) |
  | Thu, 22 Jun 2023 15:31:12 +0200 (CEST) | Received for delivery | hl1085.dinaserver.com |
  | Thu, 22 Jun 2023 15:31:20 +0200 (CEST) | Received by | llsc091-a16.servidoresdns.net |
  | Thu, 22 Jun 2023 15:31:21 +0200 (CEST) | Received by | lp-mail-smtp-filter-in-b-23.correo.lan |
  | Thu, 22 Jun 2023 15:31:23 +0200 (CEST) | Received by | llsc091-a16.servidoresdns.net |
  | Thu, 22 Jun 2023 15:31:23 +0200 (CEST) | Delivered on   | llcm199-z.correo.lan |
  
  </details>
  </blockquote>
  
  <blockquote>
  <details>
  
  <summary>Attachments</summary>
  
  As the every email attachments is delimited by a boundary block. It's identified by hyphens and a long number, ended by the same boundary plus more hyphens. From our example, we can get:
  
  ```
  --16898774101.5FD15b.80487
  [...]
  YWdlIDIgLi4uKSBUag0KRVQNCmVuZHN0cmVhbQ0KZW5kb2JqDQoNCjYgMCBvYmoNCjw8DQovVHlw
  [...]
  
  --16898774101.5FD15b.80487--
  ```
  
  Also, as emails can't contain binary data, as they are plaintext, binary data should be encoded, usually in base64, an encoding algorithm, commonly identified by the ending equals "==". In our example, we can see that the last line ends up with equals signs:
  
  ```
  JSVFT0YNCg==
  ```
  
  Although being identified by the equals signs, they are not mandatory, they are used for padding purposes but, 99% of the time, the encoding is base64. So we must copy the content, save it to a file, and decode it:
  
  ```
  echo "....." > /tmp/attachment.txt
  base64 --decode /tmp/attachment.txt > /tmp/attachment.bin
  ```
  
  From the boundary header, we can get the filename and event file-type:
  
  ```
  Content-Type: application/pdf; name="2 23 120.pdf"
  ```
  
  But assuming we do not know which type of file it is, we can guess it:
  
  ```
  $ file /tmp/attachment.bin 
  /tmp/attachment.bin: PDF document, version 1.3, 0 pages
  ```
  
  So if rename it to PDF we can open it with any viewer.
  
  
  </details>
  </blockquote>
  
</details>
