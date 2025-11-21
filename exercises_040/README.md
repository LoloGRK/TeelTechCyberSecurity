# Exercise 40

1. Install the following docker container. Replace eth0 by your interface

```bash
docker run -it -p 3000:3000 -v $(pwd)/ntopng.license:/etc/ntopng.license:ro --net=host ntop/ntopng:latest -i eth0
```

3. Open the following url http://127.0.0.1:3000/
4. Credentials:
    - User: admin
    - Password: admin
5. Browse the internet
6. Check the results
