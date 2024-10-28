# Exercise 39

1. Download or copy the Lab VM
2. Start it
3. Login
   - User: cyber
   - Password: teeltech
4. Open a terminal (Ctrl + t)
5. Run the following command
```
docker start maltrail
docker logs -f --tail 100 maltrail
```
6. Open the following url http://127.0.0.1:8334/
7. Credentials:
    - User: admin
    - Password: changeme!
8. Ping some hosts or open some urls
8. Play

---

## Additional notes:

If you want to install maltrail yourself, follow the steps from [Official Repo](https://github.com/johackim/docker-maltrail).

If you need to install Docker, follow the [following guide](../AdditionalNotes/README.md)
