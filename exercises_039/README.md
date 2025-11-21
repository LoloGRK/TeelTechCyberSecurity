# Exercise 39

1. Install maltrail

```bash
docker run -d --name maltrail --net=host --privileged johackim/docker-maltrail
```

2. Set all interfaces into promisc mode

```bash
sudo ip link show | awk '/^[0-9]: / && !/lo:/ {print $2}' | tr -d ':' | xargs -r -I {} sudo ip link set dev {} promisc on
```

3. Open the following url http://127.0.0.1:8338/
4. Credentials:
    - User: admin
    - Password: changeme!
5. Issue the following commands

```bash
nslookup morphed.ru
ping -c 1 136.161.101.53
```

6. Check Data

---

## Additional notes:

If you want to install maltrail yourself, follow the steps from [Official Repo](https://github.com/johackim/docker-maltrail).

If you need to install Docker, follow the [following guide](../AdditionalNotes/README.md)
