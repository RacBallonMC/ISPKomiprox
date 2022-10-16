 ### ISP
 **Home ISP**
| Name | ISP using proxy | Blocked ping | Blocked traceroute |
| :---: | :---: | :---: | :---: |
| IndiHome | None | No | Yes |
| CBN | Untested | No | Untested |
| Biznet Home | Untested | No | Untested |
| MyRepublic | Untested | No | No |
| FirstMedia | None | No | No |
| Megavision | Untested | Untested | Untested |
| MNC | Untested | No | No |
| ICON+ | Untested | No | Untested |
| PT Netciti Persada | Untested | Untested | Untested |
| Moratelindo | Untested | Untested | Untested |
| Citranet | Untested | Untested | Untested |
| Padi Net | Untested | Untested | Untested |
| Fiberstream | Untested | Untested | Untested |

**Office ISP**
| Name | ISP using proxy | Blocked ping | Blocked traceroute |
| :---: | :---: | :---: | :---: |
| Astinet | Untested | Untested | Untested |
| Lintasarta | Untested | Untested | Untested |
| Metronet | Untested | Untested | Untested |
| PT Metrasat | Untested | Untested | Untested |
| PT Pasifik Satelit Nusantara | Untested | Untested | Untested |
| PT Artha Telekomindo | Untested | Untested | Untested |
| PT Hawk Teknologi Solusi | Untested | Untested | Untested |
| PT Jaringanku Sarana Nusantara | Untested | Untested | Untested |
| PT Remala Abadi | Untested | Untested | Untested |
| PT iForte Global internet | Untested | Untested | Untested |
| PT Cipta Informatika Cemeriang | Untested | Untested | Untested |
| PT Lexa Net | Untested | Untested | Untested |
| GMEDIA | Untested | Untested | Untested |

**Mobile ISP**
| Name | ISP using proxy | Blocked ping | Blocked traceroute |
| :---: | :---: | :---: | :---: |
| Telkomsel | DPI proxy | No | Yes |
| XL, Live.On and Axis | None | Yes | No |
| 3 | Untested | Untested | Untested |
| Indosat | Untested | Untested | Untested |
| Smartfren | None | No | No |

### How to test

**Detect ISP's proxy**

You need to install curl

- sudo apt update
- sudo apt install -y curl

Cloudflare web allowed 80 and 443 port
- curl -v --connect-to ::www.cloudflare.com:25565 https://www.google.com
- curl -v --connect-to ::www.cloudflare.com:45384 https://www.google.com
- curl -v --connect-to ::www.cloudflare.com:23389 https://www.google.com
- curl -v --connect-to ::www.cloudflare.com:55335 https://www.google.com
- curl -v --connect-to ::www.cloudflare.com:10352 https://www.google.com
- curl -v --connect-to ::www.cloudflare.com:7352 https://www.google.com

35.24.5.6 and 201.251.64.34 not http server
- curl -v -A "Mozilla/5.0" --connect-to ::35.24.5.6:443 https://www.google.com
- curl -v -A "Mozilla/5.0" --connect-to ::35.24.5.6:80 http://www.google.com
- curl -v -A "Mozilla/5.0" --connect-to ::201.251.64.34:443 https://www.google.com
- curl -v -A "Mozilla/5.0" --connect-to ::201.251.64.34:80 http://www.google.com

**Detect block traceroute**

Liunx:
- $ traceroute cloudflare.com

Windows:
- $ tracert cloudflare.com

**Detect block ping**

- $ ping cloudflare.com


### License
ISPKomiprox licensed under the terms of MIT License. See LICENSE file for details. 
