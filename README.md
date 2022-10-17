 ### ISP
 **Home ISP**
| Name | ISP using proxy | Blocked ping | Blocked traceroute | Throttle |
| :---: | :---: | :---: | :---: | :---: |
| IndiHome | No | No | Yes | Unknown |
| CBN | Untested | No | Untested | Unknown |
| Biznet Home | Untested | No | Untested | Unknown |
| MyRepublic | Untested | No | No | Unknown |
| FirstMedia | No | No | No | Unknown |
| Megavision | Untested | Untested | Untested | Unknown |
| MNC | Untested | No | No | Unknown |
| ICON+ | Untested | No | Untested | Unknown |
| PT Netciti Persada | Untested | Untested | Untested | Unknown |
| Moratelindo | Untested | Untested | Untested | Unknown |
| Citranet | Untested | Untested | Untested | Unknown |
| Padi Net | Untested | Untested | Untested | Unknown |
| Fiberstream | Untested | Untested | Untested | Unknown |

**Office ISP**
| Name | ISP using proxy | Blocked ping | Blocked traceroute | Throttle |
| :---: | :---: | :---: | :---: | :---: |
| Astinet | Untested | Untested | Untested | Unknown |
| Lintasarta | Untested | Untested | Untested | Unknown |
| Metronet | Untested | Untested | Untested | Unknown |
| PT Metrasat | Untested | Untested | Untested | Unknown |
| PT Pasifik Satelit Nusantara | Untested | Untested | Untested | Unknown |
| PT Artha Telekomindo | Untested | Untested | Untested | Unknown |
| PT Hawk Teknologi Solusi | Untested | Untested | Untested | Unknown |
| PT Jaringanku Sarana Nusantara | Untested | Untested | Untested | Unknown |
| PT Remala Abadi | Untested | Untested | Untested | Unknown |
| PT iForte Global internet | Untested | Untested | Untested | Unknown |
| PT Cipta Informatika Cemeriang | Untested | Untested | Untested | Unknown |
| PT Lexa Net | Untested | Untested | Untested | Unknown |
| GMEDIA | Untested | Untested | Untested | Unknown |

**Mobile ISP**
| Name | ISP using proxy | Blocked ping | Blocked traceroute | Throttle |
| :---: | :---: | :---: | :---: | :---: |
| Telkomsel and by.U | Yes. DPI proxy like Iran/China | No | Yes | Yes. caused by DPI proxy |
| XL, Live.On and Axis | No | Yes | No | No |
| 3 | Untested | Untested | Untested | Unknown |
| Indosat | Untested | Untested | Untested | Unknown |
| Smartfren | No | No | No | Yes |

### How to test

**ISP's proxy detection method**

You need to install curl

Ubuntu/Debian:
- sudo apt update
- sudo apt install -y curl

Cloudflare web allowed 80 and 443 port
- curl -v --trace-time -m 31 --connect-to ::www.cloudflare.com:25565 https://www.google.com
- curl -v --trace-time -m 31 --connect-to ::www.cloudflare.com:45384 https://www.google.com
- curl -v --trace-time -m 31 --connect-to ::www.cloudflare.com:23389 https://www.google.com
- curl -v --trace-time -m 31 --connect-to ::www.cloudflare.com:55335 https://www.google.com
- curl -v --trace-time -m 31 --connect-to ::www.cloudflare.com:10352 https://www.google.com
- curl -v --trace-time -m 31 --connect-to ::www.cloudflare.com:7352 https://www.google.com

35.24.5.6 and 201.251.64.34 not http server
- curl -v --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::35.24.5.6:443 https://www.google.com
- curl -v --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::35.24.5.6:80 http://www.google.com
- curl -v --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::201.251.64.34:443 https://www.google.com
- curl -v --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::201.251.64.34:80 http://www.google.com

**Check traceroute blocking**

Liunx:
- $ traceroute cloudflare.com

Windows:
- $ tracert cloudflare.com

**Check ping blocking**

- $ ping cloudflare.com


### License
ISPKomiprox licensed under the terms of MIT License. See LICENSE file for details. 
