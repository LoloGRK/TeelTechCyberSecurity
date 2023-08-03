# Exercise 6

Find text files related to "password" from a specific website (say, edu domain).
<details>
<summary>Solution</summary>

```
site:.edu filetype:txt "password"
```

*Explanation:* This command restricts the search to “edu” sites, limits the search to txt files, and looks for those containing the term "password".

</details>

# Exercise 7

Find login pages within the ".edu" domain.

<details>
  <summary>Solution</summary>

```
site:.edu inurl:login
```

*Explanation:* This command restricts the search to ".edu" domain and returns pages that have "login" in their URL.

</details>

# Exercise 8

Search for Excel files on government websites that contain the word "budget".

<details>
  <summary>Solution</summary>

```
site:gov filetype:xls "budget"
```

*Explanation:* This command will find all Excel (.xls) files on .gov domains that contain the word "budget".

</details>

# Exercise 9

Search for Word documents in government sites containing the word "restricted".

<details>
  <summary>Solution</summary>

```
allintitle:restricted filetype:doc site:gov
```

*Explanation:* This command restricts the search to ".gov" and return documents that contain the word "restricted".

</details>

# Exercise 10

Find directories titled "index of" on educational sites.

<details>
  <summary>Solution</summary>

```
site:edu intitle:"index of”
```

*Explanation:* This command will find pages on .edu domains where the title includes the words "index of", often revealing directory listings.

</details>

# Exercise 11

Search for LogFiles files that contain the word "username".

<details>
  <summary>Solution</summary>

```
allintext:username filetype:log
```

*Explanation:* This command will return the logFiles that contains the word “username”

</details>

# Exercise 12

Find vulnerable misconfigured web servers

<details>
  <summary>Solution</summary>

```
inurl:/proc/self/cwd
```

*Explanation:* This command looks for URLs that have /proc/self/cwd in them. This can sometimes be an indication of a misconfigured server that is inadvertently exposing sensitive information

</details>

# Exercise 13

Search for environment files that contain the word "username".

<details>
  <summary>Solution</summary>

```
filetype:env "password"
```

*Explanation:* This command will return the environment files that contains the word “password”. These files are used to store credentials.

</details>

# Exercise 14

Find exposed web cameras

<details>
  <summary>Solution</summary>

```
inurl:top.htm inurl:currenttime
```

```
intitle:"webcamXP 5"
```

```
inurl:"lvappl.htm"
```

*Explanation:* This command looks for specific URLs and titles that belongs to feeds from WebCameras.

</details>

# Exercise 15

Find email lists

<details>
  <summary>Solution</summary>

```
filetype:xls inurl:"email.xls"
```

*Explanation:* This command looks for specific XLS files that contains “email.xls” in their URL.

</details>
