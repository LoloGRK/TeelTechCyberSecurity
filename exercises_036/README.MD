# Exercise 36

Pick a known IP address or use the one from Metasploitable and perform the following nmap scans:

- Scan for the most common TCP ports
- Get OS version
- Get open ports service & version
- Scan for all open TCP ports

<details>
<summary>Solution</summary>

- Scan for the most common TCP ports
   ```
   nmap <target_ip>
   ```
 
- Get OS version
   ```
   nmap -O <target_ip>
   ```

- Get open ports service & version
   ```
   nmap -O -sV <target_ip>
   ```

- Scan for all open TCP ports
   ```
   nmap -O -sV -p- <target_ip>
   ```
   
</details>
