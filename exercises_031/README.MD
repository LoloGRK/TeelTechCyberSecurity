# Exercise 30

Server's logs have arrived!

[Apache logs](https://github.com/LoloGRK/TeelTechCyberSecurity/raw/main/exercises_031/access.log)

<details>
<summary>Solution</summary>

Apache logs format

The format for apache logs is the following one:

```
SrcIp - [Date-Time] "<Method> - <path> <HTTP_Version>" <statusCode> <size> "<fullURL>" "userAgent"
```


1. From line 894

   ```
   81.32.34.131 - - [17/Aug/2023:14:38:51 +0200] "GET / HTTP/1.1" 200 2583 "https://truecrimetournyc.com" "WPScan v3.8.24 (https://wpscan.com/wordpress-security-scanner)"
   ```
   
   We can get that the attacker used WPScan
   
   [WPScan](https://github.com/wpscanteam/wpscan) Is a tool for auditing Wordpress installations.

2. From line 1112 we can check that they started a BruteForce attack on */wp-login.php*

   ```
   81.32.34.131 - - [17/Aug/2023:14:40:29 +0200] "POST /wp-login.php HTTP/1.1" 200 1884 "https://truecrimetournyc.com" "WPScan v3.8.24 (https://wpscan.com/wordpress-security-scanner)"
   ```
   
3. From line 2338 we can conclude that the attack was successfull

   ```
   81.32.34.131 - - [17/Aug/2023:14:41:29 +0200] "POST /wp-login.php HTTP/1.1" 302 985 "https://truecrimetournyc.com/wp-login.php?loggedout=true" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36"
   81.32.34.131 - - [17/Aug/2023:14:41:29 +0200] "GET /wp-admin/ HTTP/1.1" 200 11008 "https://truecrimetournyc.com/wp-login.php?loggedout=true" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36"
   ```
   
   Wordpress reports a successfull login with a 302 HTTP code followed with a 200.
   
4. From line 2387 we can get this log:

   ```
   81.32.34.131 - - [17/Aug/2023:14:53:12 +0200] "POST /wp-admin/admin-ajax.php HTTP/1.1" 200 454 "https://truecrimetournyc.com/wp-admin/theme-editor.php?file=header.php&theme=twentyfifteen&scrollto=723&updated=true" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36"
   ```
   
   This, in a non hacked server should not be suspicious, but editing the current theme header is used to include a reverse-shell and get access to the file system.
   
5. This is one of the most important lines, 2390

   ```
   81.32.34.131 - - [17/Aug/2023:14:58:06 +0200] "GET /c99.php HTTP/1.1" 200 5313 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36"
   ```

   We can check that there's a /c99.php request. [C99](https://github.com/c99-shell) is one of the most famous php-webshell
   
   <img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/2e7446180c58e31f05159bb7ec39345449cb994a/exercises_031/images/c99shell.png" width="100%">
   
   This is a proof that the server has been hacked with a 100% of success rate.
   
   From line 2386 we can also get a /c99.php access, but it's 404 so not found.
   
6. We can also find the path of the url from the SMS in logs in line 2463

   ```
   81.32.34.131 - - [17/Aug/2023:15:01:50 +0200] "GET /c99.php?act=cmd&d=%2Fvar%2Fwww%2Fhtml%2Fwp-admin%2F&cmd=mkdir+-p+zung%2Flastonline&cmd_txt=1&submit=Execute HTTP/1.1" 200 3537 "https://truecrimetournyc.com/c99.php?act=ls&d=%2Fvar%2Fwww%2Fhtml%2Fwp-admin&sort=0a" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36"
   ```

   The attacker created the path for the phishing page from the c99.php web-shell issuing the command
   
   ```
   mkdir -p zung/lastonline
   ```
   
7. From the logs we can check that the first c99.php access was

   ```
   81.32.34.131 - - [17/Aug/2023:15:07:41 +0200] "GET /wp-admin/zung/lastonline/tenit.html HTTP/1.1" 200 3379 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36"
   ```
   
We can conclude that all theese actions where performed from the same IP 81.32.34.131

If we check this IP information:

<img src="https://github.com/LoloGRK/TeelTechCyberSecurity/blob/7e5e971aa20bacbefea25575a0fa7463714e50ea/exercises_031/images/ip_location.png" width="100%">

</details>

Actions to perform?
