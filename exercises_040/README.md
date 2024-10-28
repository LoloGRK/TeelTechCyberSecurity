# Exercise 40

1. Download or copy the Lab VM
2. Start it
3. Login
   - User: cyber
   - Password: teeltech
4. Open burpsuite
5. Open firefox
6. Install burpSuite certificate into firefox following [this guide](https://portswigger.net/burp/documentation/desktop/external-browser-config/certificate/ca-cert-firefox)
5. Run the following command
```
docker start ntopng
docker logs -f --tail 100 ntopng
```
6. Open the following url http://127.0.0.1:3000/
7. Credentials:
    - User: admin
    - Password: teeltech
8. Play

---

## Additional notes:

If you want to install burpSuite yourself, follow the steps from [Official Repo](https://portswigger.net/burp/documentation/desktop/getting-started/download-and-install).
