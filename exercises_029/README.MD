# Exercise 29

The following [email](https://github.com/LoloGRK/TeelTechCyberSecurity/blob/28ae0e39ffb0042f43d7fa5616405114951f7852/exercises_027/email.eml) was received.
  
The receiver claims that he make the payment and the money was never received.
  
<details>
<summary>Solution</summary>

1. Get events timestamps

   From delivering timestamps we can conclude the following:
   
   | Date | Event | Server |
   |------|-------|--------|
   | <span style="color:red">Thu, 22 Jun 2023 16:09:44 +0200 (CEST)</span> | Email was written | DESKTOPU75QM2U (Client) |
   | Thu, 22 Jun 2023 15:31:12 +0200 (CEST) | Received for delivery | hl1085.dinaserver.com |
   | Thu, 22 Jun 2023 15:31:20 +0200 (CEST) | Received by | llsc091-a16.servidoresdns.net |
   | Thu, 22 Jun 2023 15:31:21 +0200 (CEST) | Received by | lp-mail-smtp-filter-in-b-23.correo.lan |
   | Thu, 22 Jun 2023 15:31:23 +0200 (CEST) | Received by | llsc091-a16.servidoresdns.net |
   | Thu, 22 Jun 2023 15:31:23 +0200 (CEST) | Delivered on   | llcm199-z.correo.lan |
   
   From Google's email headers analyzer we can get the following table:
   
   <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/8f69b9289a2a95d1c39b1e2b6c92a3d0336085b5/exercises_029/images/email_headers_001.png" width="100%">
   
   We can check that the email was writen in the future, because it was delivered after -38 mins.
   
2. Attachments
   
   As the every email attachments is delimited by a boundary block. It's identified by hyphens and a long number, ended by the same boundary plus more hyphens. From our example, we can get:
   
   ```
   --16898774100.ad0fC.80487
   Content-Type: text/plain; charset=UTF-8
   Content-Disposition: inline
   Content-Transfer-Encoding: 8bit
   
   --16898774100.ad0fC.80487
   Content-Type: application/rtf
   Content-Disposition: inline
   Content-Transfer-Encoding: base64
   
   --16898774100.ad0fC.80487--
      
   --16898774101.5FD15b.80487
   Content-ID: image001.png@01D9A51E.92F8C880
   Content-Type: image/png; name=image001.png
   Content-Disposition: attachment; filename=image001.png
   Content-Transfer-Encoding: base64
      
   --16898774101.5FD15b.80487
   Content-ID: 
   Content-Type: application/pdf; name="2 23 120.pdf"
   Content-Disposition: attachment; filename="2 23 120.pdf"
   Content-Transfer-Encoding: base64
   
   [...]
   YWdlIDIgLi4uKSBUag0KRVQNCmVuZHN0cmVhbQ0KZW5kb2JqDQoNCjYgMCBvYmoNCjw8DQovVHlw
   [...]
   
   --16898774101.5FD15b.80487--
   ```
   
   From the *Content-Disposition* header can check that we have two attachments:
   
   - 2 23 120.pdf
   - image001.png
   
   From the previous exercise, we learnt that emails can't contain binary data, as they are plaintext, binary data should be encoded, usually in base64, an encoding algorithm, commonly identified by the ending equals "==". In our example, we can see that the last line ends up with equals signs:
  
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
   
   If we extract the headers, by using *pdfinfo* tool, we can get the following interesting headers:
   
   *Hint:* Get the dates in ISO Format with -isodates
   
   | Header          | Value                                       |
   |-----------------|---------------------------------------------|
   | Title           | document1                                   |
   | Author          | Equipo1                                     |
   | Creator         | PScript5.dll Version 5.2.2                  |
   | Producer        | Acrobat Distiller 10.1.4 (Windows)          |
   | CreationDate    | 2023-06-22T15:29:05 +02                     |
   | ModDate         | 2023-06-22T16:09:01 +01                     |
   | Custom Metadata | no                                          |
   | Metadata Stream | yes                                         |
   | Tagged          | no                                          |
   | UserProperties  | no                                          |
   | Suspects        | no                                          |
   | Form            | none                                        |
   | JavaScript      | no                                          |
   | Pages           | 1                                           |
   | Encrypted       | no                                          |
   | Page size       | 595.22 x 842 pts (A4)                       |
   | Page rot        | 0                                           |
   | File size       | 99590 bytes                                 |
   | Optimized       | no                                          |
   | PDF version     | 1.5 
   
   We can check that CreationDate & ModDate differ 30 mins, which is some minutes before the email was sent.
    
</details >

Conclusions:

- Which account appears to be compromised?
- How did the scammer modified the email?
- What actions can we perform?
