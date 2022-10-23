 # ISPKomiprox
 ### ISP
 **Home ISP**
| ASN | Name | ISP using proxy | Blocked ping | Blocked traceroute | Throttle | Supported IPv6 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| AS7713 | IndiHome | No | No | Yes | Unknown | Yes |
| AS4787 | CBN | Untested | No | Untested | Unknown | Unknown |
| AS17451 | Biznet Home | Untested | No | Untested | Unknown | Yes |
| AS63859 | MyRepublic | Untested | No | No | Unknown | No |
| AS23700 | First Media | No | No | No | Unknown | No |
| AS55699 | Megavision | Untested | Untested | Untested | Unknown | No |
| AS17670 | MNC Play | Untested | No | No | Unknown | No |
| AS9341 | ICON+ (Iconnet PLN) | Untested | No | Untested | Unknown | No |
| AS131111 | Moratelindo (Oxygen) | Untested | Untested | Untested | Unknown | Unknown |
| AS23951 | Citranet | Untested | Untested | Untested | Unknown | Unknown |
| AS23756 | Padi Net | Untested | Untested | Untested | Unknown | No |
| ? | Fiberstream | Untested | Untested | Untested | Unknown | Unknown |

**Office ISP**
| ASN | Name | ISP using proxy | Blocked ping | Blocked traceroute | Throttle | Supported IPv6 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| ? | Astinet | Untested | Untested | Untested | Unknown | Unknown |
| ? | Lintasarta | Untested | Untested | Untested | Unknown | Unknown |
| ? | Biznet Metronet/Dedicated | Untested | Untested | Untested | Unknown | Unknown |
| ? | Moratel Dedictated/SOHO | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT Metrasat | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT Pasifik Satelit Nusantara | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT Artha Telekomindo | Untested | Untested | Untested | Unknown | Unknown |
| AS132641 | PT Netciti Persada | Untested | Untested | Untested | Unknown | No |
| ? | PT Hawk Teknologi Solusi | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT Jaringanku Sarana Nusantara | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT Remala Abadi | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT iForte Global internet | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT Cipta Informatika Cemeriang | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT Lexa Net | Untested | Untested | Untested | Unknown | Unknown |
| ? | PT Artorius Telemetri Sentosa | Untested | Untested | Untested | Unknown | Unknown |
| AS55666 | G-MEDIA | Untested | Untested | Untested | Unknown | Yes |
| AS45302 | D-NET (PT. Core Mediatech) | Untested | Untested | Untested | Unknown | No |

**Mobile ISP**
| ASN | Name | ISP using proxy | Blocked ping | Blocked traceroute | Throttle | Supported IPv6 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| AS23693 | Telkomsel and by.U | Yes. DPI proxy like Iran/China | No | Yes | Yes. caused by DPI proxy | Yes |
| AS24203 | XL, Live.On and Axis | No | Yes | No | No | No |
| AS45727 | 3 (Tri) | Untested | Untested | Untested | Unknown | No |
| AS4761 | Indosat | Untested | Untested | Untested | Unknown | No |
| AS18004 | Smartfren | No | No | No | Yes | No |

### How to test

**ISP's proxy detection method**

You need to install curl

Ubuntu/Debian:
- sudo apt-get update
- sudo apt-get install -y curl

or

- sudo apt update
- sudo apt install -y curl

Cloudflare web allowed 80 and 443 port
- curl -v --connect-timeout 20 --trace-time -m 31 --connect-to ::api.cloudflare.com:25565 https://www.google.com
- curl -v --connect-timeout 20 --trace-time -m 31 --connect-to ::api.cloudflare.com:45384 https://www.google.com
- curl -v --connect-timeout 20 --trace-time -m 31 --connect-to ::api.cloudflare.com:23389 https://www.google.com
- curl -v --connect-timeout 20 --trace-time -m 31 --connect-to ::api.cloudflare.com:55335 https://www.google.com
- curl -v --connect-timeout 20 --trace-time -m 31 --connect-to ::api.cloudflare.com:10352 https://www.google.com
- curl -v --connect-timeout 20 --trace-time -m 31 --connect-to ::api.cloudflare.com:7352 https://www.google.com

35.24.5.6 and 201.251.64.34 not http server
- curl -v --connect-timeout 20 --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::35.24.5.6:443 https://www.google.com
- curl -v --connect-timeout 20 --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::35.24.5.6:80 http://www.google.com
- curl -v --connect-timeout 20 --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::201.251.64.34:443 https://www.google.com
- curl -v --connect-timeout 20 --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::201.251.64.34:80 http://www.google.com

-----------------------------------------

Running
$ curl -v --connect-timeout 20 -A "Mozilla/5.0" --connect-to ::35.24.5.6:80 http://www.google.com

Undetected

Tested on Smartfren, IndiHome, First Media, and XL
```
* Connecting to hostname: 35.24.5.6
* Connecting to port: 80
*   Trying 35.24.5.6:80...
* Connection timeout after 20000 ms
* Closing connection 0
curl: (28) Connection timeout after 20000 ms
```
Detected

Tested on Telkomsel
```
* Connecting to hostname: 35.24.5.6
* Connecting to port: 80
*   Trying 35.24.5.6:80...
* Connected to 35.24.5.6 (35.24.5.6) port 80 (#0)
> GET / HTTP/1.1
> Host: www.google.com
> User-Agent: Mozilla/5.0
> Accept: */*
>
* Operation timed out after 31001 milliseconds with 0 bytes received
* Closing connection 0
curl: (28) Operation timed out after 31001 milliseconds with 0 bytes received
```
-----------------------------------------
**Check traceroute blocking**

Liunx:
- $ traceroute cloudflare.com

Windows:
- $ tracert cloudflare.com

**Check ping blocking**

- $ ping cloudflare.com


### License
ISPKomiprox licensed under the terms of MIT License. See LICENSE file for details. 
