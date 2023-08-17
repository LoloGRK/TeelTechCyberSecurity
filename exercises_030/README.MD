# Exercise 30

The following SMS has been received.

It seems suspicious.

```
Your T-Mobile account has been blocked. To restore it, please login to the customer portal and fill in the required information.
https://truecrimetournyc.com/wp-admin/zung/lastonline/tenit.html
```

<details>
<summary>Solution</summary>

1. Analyze URL

   https://truecrimetournyc.com/wp-admin/zung/lastonline/tenit.html
   
   - TLD
     
     https://truecrimetournyc.com
     
     It has nothing to do with T-Mobile website https://www.t-mobile.com/
   
   - Path
   
     ```
     /wp-admin/zung/lastonline/tenit.html
     ```
     
     The folder *wp-admin* is from [WordPress](https://wordpress.org/) admin directory. Only authorized users has access to this folder, ussually *admin* user has access to it.
     
     WordPress is a plugin-based CMS, which requires constant updates due to it Open-Source nature. If the site is not updated frequently, it might get hacked. So, as it seems to be a WordPress Site, it's very probable that it had been hacked and included new content.
   
2. Access the site

   <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/8f69b9289a2a95d1c39b1e2b6c92a3d0336085b5/exercises_029/images/email_headers_001.png" width="100%">
   
   1. Fill in the form and check its behaviour.
      
      Redirection to legit T-Mobile site.

3. As it's a legit site which seems to be hacked, request for server logs to investigate them to check when was this file uploaded and try to get more information.

</details>
