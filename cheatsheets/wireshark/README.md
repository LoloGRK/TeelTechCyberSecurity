# Wireshark Cheat Sheet

---

## Default Columns in Packet Capture Output

| Column         | Description                                             |
|----------------|---------------------------------------------------------|
| No.            | Frame number from the beginning of the packet capture   |
| Time           | Seconds from the first frame                            |
| Source (src)   | Source address (IP address on IPv4/IPv6, MAC on Ethernet) |
| Destination (dst) | Destination address                                 |
| Protocol       | Protocol used in the Ethernet, IP, TCP, or UDP segment  |
| Length         | Length of the frame in bytes                            |
| Info           | Short info about the frame content                      |

---

## Logical Operators

| Operator       | Description                                               | Example                 |
|----------------|-----------------------------------------------------------|-------------------------|
| `&&` or `and`  | Logical AND, all conditions should match                  | `ip && tcp`             |
| `||` or `or`   | Logical OR, one or more conditions should match           | `ip || arp`             |
| `xor`          | Logical exclusive OR, only one of the conditions must match | `tcp xor udp`          |
| `!` or `not`   | Logical NOT (negation)                                    | `!arp`                  |

---

## Filtering Packets (Display Filters)

| Operator       | Description                           | Example                  |
|----------------|---------------------------------------|--------------------------|
| `==` or `eq`   | Equal                                 | `ip.addr == 192.168.1.1` |
| `!=` or `ne`   | Not equal                             | `ip.src != 192.168.1.1`  |
| `gt` or `>`    | Greater than                          | `frame.len > 10`         |
| `lt` or `<`    | Less than                             | `frame.len < 128`        |
| `ge` or `>=`   | Greater than or equal                 | `frame.len >= 128`       |
| `le` or `<=`   | Less than or equal                    | `frame.len <= 512`       |

---

## Filter Types

- **Capture Filter**: Filters packets during capture.
- **Display Filter**: Hides packets from capture display.

---

## Common Filtering Commands

| Usage                    | Filter Syntax                                     |
|--------------------------|---------------------------------------------------|
| Wireshark Filter by IP   | `ip.addr == 10.0.0.1`                             |
| Filter by Destination IP | `ip.dst == 10.0.0.1`                              |
| Filter by Source IP      | `ip.src == 10.0.0.1`                              |
| Filter by IP Range       | `ip.addr >= 10.0.0.1 and ip.addr <= 10.0.0.50`    |
| Filter by Multiple IPs   | `(ip.addr == 10.0.0.1) || (ip.addr == 10.0.0.2)`  |
| Filter by IP Subnet      | `ip.addr == 10.0.0.0/24`                          |
| Filter by Protocol       | `tcp`, `udp`, `icmp`                              |
| Filter by Port           | `tcp.port == 80`                                  |
| Filter by Destination Port | `tcp.dstport == 443`                            |
| Filter by Source Port     | `tcp.srcport == 25`                              |

---

## Wireshark Capturing Modes

| Mode           | Description                                                |
|----------------|------------------------------------------------------------|
| Promiscuous    | Sets interface to capture all packets on a network segment |
| Monitor mode   | Enables wireless interface to capture all traffic it can receive |

---

## Capture Filter Syntax

| Syntax            | Description                   | Example                 |
|-------------------|-------------------------------|-------------------------|
| `protocol`        | Filter by protocol            | `tcp`, `udp`, `icmp`    |
| `host`            | Filter by host IP address     | `host 192.168.1.1`      |
| `src host`        | Filter by source IP address   | `src host 192.168.1.1`  |
| `dst host`        | Filter by destination IP      | `dst host 10.0.0.1`     |
| `port`            | Filter by port                | `port 80`               |

---

## Display Filter Syntax

| Syntax            | Description                   | Example                 |
|-------------------|-------------------------------|-------------------------|
| `protocol`        | Filter by protocol            | `http`, `tcp`           |
| `ip.addr`         | Filter by IP address          | `ip.addr == 192.168.1.1`|
| `tcp.port`        | Filter by TCP port            | `tcp.port == 80`        |

---

## Keyboard Shortcuts (Main Display Window)

| Shortcut                | Action                                              |
|-------------------------|-----------------------------------------------------|
| **Tab** / **Shift+Tab** | Move between screen elements                        |
| **Right Arrow**         | Move to the next packet or detail item              |
| **Left Arrow**          | Move to the previous packet or detail item          |
| **Ctrl + ↑** / **↓**    | Scroll within the packet list or details pane       |
| **Ctrl + F**            | Open the find packet dialog                         |
| **Enter**               | Select current item                                 |

---

## Protocols and Values

| Protocol       | Example                                                   |
|----------------|-----------------------------------------------------------|
| Ethernet       | `eth`, `eth.dst == ff:ff:ff:ff:ff:ff`                      |
| IPv4/IPv6      | `ip`, `ip.addr == 192.168.1.1`                             |
| TCP/UDP        | `tcp`, `udp`                                              |
| ARP            | `arp`                                                     |

---

## Main Toolbar Items

| Toolbar Icon    | Toolbar Item           | Description                                                   |
|-----------------|------------------------|---------------------------------------------------------------|
| ▶️              | Start                  | Start a new capture                                           |
| ⏹️              | Stop                   | Stop current capture                                          |
| ↺               | Restart                | Restart capture session                                       |
| ⚙️              | Capture Options        | Open "Capture Options" dialog                                 |
| 💾              | Save As                | Save current capture to file                                  |
| 📂              | Open                   | Open capture file                                             |
| 🔍              | Find                   | Find packet based on criteria                                 |
| ↩️              | Go Back                | Jump back in packet history                                   |
| ↪️              | Go Forward             | Jump forward in packet history                                |
| ⬆️              | Go to First Packet     | Jump to first packet of capture                               |
| ⬇️              | Go to Last Packet      | Jump to last packet of capture                                |

---

*Resource: Wireshark Docs, Cheatsheets from Comparitech*

---

This markdown format provides a comprehensive summary of the Wireshark Cheat Sheet. Note that icons have been represented with text or emoji equivalents where possible.
