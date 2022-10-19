@echo off
echo.
echo Checking ISP's proxy system
echo.
set CURL_APP=curl

@rem Default value
set TIME_OUT_1=10

set ARGS_1=-v --connect-timeout %TIME_OUT_1% --trace-time -m 31 --connect-to ::api.cloudflare.com:25565 https://www.google.com
set ARGS_2=-v --connect-timeout %TIME_OUT_1% --trace-time -m 31 --connect-to ::api.cloudflare.com:45384 https://www.google.com
set ARGS_3=-v --connect-timeout %TIME_OUT_1% --trace-time -m 31 --connect-to ::api.cloudflare.com:23389 https://www.google.com
set ARGS_4=-v --connect-timeout %TIME_OUT_1% --trace-time -m 31 --connect-to ::api.cloudflare.com:55335 https://www.google.com
set ARGS_5=-v --connect-timeout %TIME_OUT_1% --trace-time -m 31 --connect-to ::api.cloudflare.com:10352 https://www.google.com
set ARGS_6=-v --connect-timeout %TIME_OUT_1% --trace-time -m 31 --connect-to ::api.cloudflare.com:7352 https://www.google.com

@rem Default value
set TIME_OUT_2=10

set ARGS_7=-v --connect-timeout %TIME_OUT_2% --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::35.24.5.6:443 https://www.google.com
set ARGS_8=-v --connect-timeout %TIME_OUT_2% --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::35.24.5.6:80 http://www.google.com
set ARGS_9=-v --connect-timeout %TIME_OUT_2% --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::201.251.64.34:443 https://www.google.com
set ARGS_10=-v --connect-timeout %TIME_OUT_2% --trace-time -m 31 -A "Mozilla/5.0" --connect-to ::201.251.64.34:80 http://www.google.com

echo $ %CURL_APP% %ARGS_1%
"%CURL_APP%" %ARGS_1%
echo $ %CURL_APP% %ARGS_2%
"%CURL_APP%" %ARGS_2%
echo $ %CURL_APP% %ARGS_3%
"%CURL_APP%" %ARGS_3%
echo $ %CURL_APP% %ARGS_4%
"%CURL_APP%" %ARGS_4%
echo $ %CURL_APP% %ARGS_5%
"%CURL_APP%" %ARGS_5%
echo $ %CURL_APP% %ARGS_6%
"%CURL_APP%" %ARGS_6%

echo $ %CURL_APP% %ARGS_7%
"%CURL_APP%" %ARGS_7%
echo $ %CURL_APP% %ARGS_8%
"%CURL_APP%" %ARGS_8%
echo $ %CURL_APP% %ARGS_9%
"%CURL_APP%" %ARGS_9%
echo $ %CURL_APP% %ARGS_10%
"%CURL_APP%" %ARGS_10%

pause