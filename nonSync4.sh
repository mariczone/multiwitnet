#!/bin/bash

list=()
for name in $(docker ps --format '{{.Names}}') 
do 
    if docker exec $name witnet node nodeStats | grep -q "Synchronization progress"; then
        list+=( $name )
    fi
done

for t in ${list[@]}; do
  echo "--------------- $t ---------------"
  docker exec $t witnet node addPeers 3.227.22.151:21337 3.250.231.153:21337 3.250.231.153:21337 3.250.231.153:21337 3.250.231.153:21337 3.250.231.153:21337 3.250.231.153:21341 3.250.231.153:21341 3.250.231.153:21341 3.250.231.153:21345 3.250.231.153:21345 3.250.231.153:21345 3.250.231.153:21345 3.250.231.153:21361 3.250.231.153:21361 3.250.231.153:21361 3.250.231.153:21361 3.250.231.153:21361 3.250.231.153:21367 3.250.231.153:21367 3.250.231.153:21367 5.189.144.203:21337 10.14.0.1:22352 10.30.0.1:22368 10.37.0.1:22375 13.238.154.108:21337 15.161.154.57:21337 15.185.214.244:21337 15.207.121.29:21337 18.133.189.187:21337 18.162.59.134:21337 18.177.154.168:21337 34.69.247.189:21337 34.72.238.213:21337 34.75.236.230:21337 35.196.183.236:21337 35.196.183.236:21337 35.196.183.236:21337 35.222.59.115:21337 35.230.20.14:21337 35.230.20.14:21337 37.59.52.28:21337 44.229.31.67:21337 45.156.23.45:21341 45.156.23.45:21345 45.156.23.190:21337 45.156.23.190:21337 45.156.23.244:21337 45.156.23.244:21337 45.156.23.244:21337 45.156.23.244:21337 45.156.24.23:21337 45.156.24.23:21341 45.156.24.77:21341 45.156.24.77:21341 45.156.24.77:21341 45.156.24.86:21341 45.156.24.86:21341 45.156.24.148:21337 45.156.24.148:21337 45.156.24.148:21337 45.156.24.148:21347 45.156.24.148:21347 45.156.24.148:21347 45.156.24.148:21347 45.156.24.148:21355 45.156.24.148:21355 45.156.24.148:21359 45.156.24.148:21359 45.156.24.148:21359 45.156.24.148:21361 45.156.24.148:21361 45.156.24.148:21361 45.156.24.148:21373 45.156.24.148:21373 45.156.24.148:21373 45.156.24.148:21375 45.156.24.148:21375 45.156.24.148:21375 46.4.115.118:22339 49.12.2.247:21337 49.12.2.247:21337 49.12.2.247:21341 49.12.2.247:21341 49.12.2.247:21341 49.12.2.247:21341 49.12.2.247:21341 49.12.2.247:21345 49.12.2.247:21345 49.12.5.97:21337 49.12.48.84:22339 49.12.64.137:21337 49.12.65.17:21337 49.12.65.17:21337 49.12.65.17:21337 49.12.65.17:21337 49.12.73.196:21337 49.12.73.196:21337 49.12.73.196:21337 49.12.73.196:21337 49.12.104.58:21341 49.12.104.58:21341 49.12.104.58:21341 49.12.104.58:21341 49.12.109.158:21337 49.12.109.158:21337 49.12.109.158:21337 49.12.109.158:21337 51.79.53.152:21337 51.195.6.49:21337 51.195.6.49:21337 51.195.6.49:21337 51.195.6.49:21337 51.195.6.49:21337 51.195.6.49:21337 51.254.244.147:21337 51.254.244.147:21337 52.166.178.145:22337 52.166.178.145:22337 54.39.77.225:21337 54.39.77.225:21337 62.171.170.204:22337 64.227.29.117:22339 64.227.34.207:21337 67.205.165.120:22339 68.183.22.202:22339 68.183.204.241:21337 68.183.204.241:21337 68.183.204.241:21337 69.181.156.54:21337 73.235.39.100:21337 78.46.99.183:22339 78.46.223.248:21337 78.46.223.248:21337 78.46.223.248:21337 78.47.103.252:21337 78.47.148.22:21337 80.240.16.170:21337 81.16.141.132:21337 81.16.141.132:21337 82.213.202.243:23337 85.155.125.104:21337 88.6.110.230:21337 88.99.68.107:22339 94.130.176.222:21337 94.130.176.222:21337 94.130.176.222:21337 94.130.176.222:21339 94.130.176.222:21345 94.130.176.222:21345 94.130.176.230:21339 94.130.176.230:21339 94.130.176.230:21339 94.130.176.230:21345 94.130.176.230:21345 94.130.176.230:21345 94.130.176.230:21345 94.130.176.231:21337 94.130.176.231:21337 94.130.176.231:21337 94.130.176.231:21337 94.130.176.231:21345 94.130.176.231:21345 94.130.176.231:21345 94.177.225.12:21341 94.191.64.49:21337 94.191.64.49:21337 94.191.64.49:21337 94.237.24.17:21337 94.237.109.18:21337 95.111.235.58:21337 95.111.235.58:21337 95.111.235.58:21337 95.111.248.194:21341 95.111.248.194:21341 95.111.248.194:21349 95.111.248.194:21361 95.111.248.194:21361 95.111.248.194:21375 95.111.248.194:21375 95.111.248.194:21375 95.216.218.136:21337 95.216.218.136:21337 95.216.218.136:21337 95.216.218.136:21337 95.216.218.136:21339 95.216.218.136:21339 95.216.218.136:21345 95.216.218.136:21345 95.216.218.136:21345 95.217.12.13:21337 95.217.22.56:21337 95.217.22.56:21337 95.217.130.155:21337 95.217.130.155:21337 95.217.130.155:21337 95.217.130.155:21337 95.217.130.155:21337 95.217.159.27:21339 95.217.159.27:21339 95.217.159.27:21339 95.217.159.27:21345 95.217.159.27:21349 95.217.159.27:21349 95.217.159.27:21349 95.217.159.27:21349 95.217.159.27:21353 95.217.159.27:21353 95.217.159.27:21353 95.217.159.27:21353 95.217.159.27:21355 95.217.159.27:21355 95.217.159.27:21355 95.217.159.27:21357 95.217.159.27:21357 95.217.159.27:21357 95.217.159.27:21357 95.217.159.27:21357 95.217.159.27:21373 95.217.159.27:21373 95.217.159.27:21373 95.217.182.60:21337 95.217.182.60:21337 95.217.182.60:21337 95.217.209.2:21345 95.217.209.2:21345 95.217.209.2:21345 95.217.209.2:21345 95.217.209.2:21345 95.217.213.109:21345 95.217.213.109:21345 95.217.213.109:21345 95.217.213.109:21345 95.217.214.162:21339 95.217.214.162:21339 95.217.214.162:21339 95.217.214.162:21339 103.3.60.164:21337 103.195.101.143:21337 104.248.50.198:21337 104.248.50.198:21337 106.12.124.3:21337 106.12.124.3:21337 106.12.124.3:21337 106.12.124.3:21337 109.74.206.57:21337 109.74.206.241:21337 110.77.202.40:21337 110.77.202.40:21337 111.229.176.161:21337 116.203.46.135:21337 116.203.46.135:21337 116.203.46.135:21337 116.203.56.32:21337 116.203.56.32:21337 116.203.56.32:21337 116.203.98.139:21339 116.203.98.139:21339 116.203.138.243:21339 116.203.138.243:21339 116.203.138.243:21339 116.203.180.78:21337 116.203.225.48:21337 116.203.225.48:21337 116.203.234.252:21337 118.24.129.101:21337 118.24.129.101:21337 118.24.129.101:21337 118.24.129.101:21337 118.24.129.101:21337 128.199.91.152:21337 134.17.135.18:21337 134.209.182.200:21337 134.209.182.200:21337 134.209.182.200:21337 134.209.182.200:21337 135.181.20.246:22339 135.181.24.121:21337 135.181.24.121:21337 135.181.24.121:21337 135.181.24.121:21345 135.181.24.121:21345 135.181.24.121:21345 135.181.24.121:21345 135.181.24.121:21353 135.181.24.121:21353 135.181.24.121:21357 135.181.24.121:21357 135.181.24.121:21357 135.181.24.121:21357 135.181.24.121:21361 135.181.24.121:21361 135.181.24.121:21361 135.181.24.121:21361 135.181.24.121:21361 135.181.24.121:21365 135.181.24.121:21365 135.181.24.121:21367 135.181.24.121:21367 135.181.24.121:21367 135.181.24.121:21367 135.181.24.121:21367 135.181.24.121:21369 135.181.24.121:21369 135.181.24.121:21369 135.181.24.121:21369 135.181.24.121:21369 135.181.24.121:21375 135.181.24.121:21375 135.181.24.121:21375 135.181.24.121:21375 135.181.25.48:21337 135.181.36.168:21337 135.181.36.168:21337 135.181.38.221:21337 138.68.65.20:21337 138.68.65.20:21337 138.68.65.24:21337 138.68.65.24:21337 138.68.76.41:21337 138.68.76.41:21337 138.68.76.41:21337 138.201.155.65:21337 139.64.244.210:21337 139.64.244.210:21337 139.64.244.210:21337 139.64.244.210:21339 139.64.244.210:21339 139.64.244.210:21339 139.64.244.210:21341 139.64.244.210:21341 139.64.244.210:21341 139.64.244.210:21341 139.99.192.230:21337 139.99.192.230:21337 139.99.192.230:21337 139.99.192.230:21337 139.99.203.110:21337 139.99.203.110:21337 139.99.203.110:21337 139.99.203.110:21337 139.99.203.219:21337 139.99.203.219:21337 139.99.204.129:21337 139.99.204.129:21337 139.162.7.244:21337 139.162.7.244:21337 139.162.7.244:21337 139.162.102.104:21337 139.162.135.130:21337 142.93.8.181:21337 143.110.224.100:21337 143.110.224.100:21337 143.110.224.100:21337 143.110.224.100:21337 144.91.82.132:21337 144.91.82.132:21337 144.91.82.132:21337 144.91.104.168:21337 144.91.113.168:21337 144.91.113.168:21337 144.91.113.168:21337 148.70.128.169:21337 148.70.128.169:21337 148.70.128.169:21337 148.70.128.169:21337 148.70.151.173:21337 148.70.151.173:21337 148.70.151.173:21337 148.70.151.173:21337 149.202.99.247:21337 149.202.99.247:21337 150.136.87.141:21337 150.136.87.141:23337 150.136.87.141:25337 152.44.34.30:21337 152.44.34.30:21337 152.44.34.30:21337 152.44.34.30:21337 152.44.34.30:21337 152.44.34.30:21337 152.44.38.64:21337 152.44.38.64:21337 152.44.38.64:21337 152.44.38.64:21337 157.245.40.134:21341 157.245.40.134:21341 157.245.40.134:21341 157.245.40.134:21341 157.245.40.134:21345 157.245.40.134:21345 157.245.40.134:21345 157.245.40.134:21369 157.245.40.134:21369 157.245.40.134:21369 157.245.40.134:21369 157.245.67.41:21337 157.245.67.41:21337 157.245.171.146:21337 157.245.171.146:21337 157.245.171.146:21337 159.65.122.198:21337 159.65.122.198:21337 159.65.122.198:21337 159.69.56.99:22339 159.69.146.71:21337 159.69.150.11:21337 159.69.150.11:21337 159.69.150.11:21337 159.89.101.77:21337 159.89.101.77:21337 159.89.101.77:21337 159.89.101.77:21337 159.89.231.228:22339 159.203.33.162:22339 161.35.172.136:21337 161.97.64.253:21337 161.97.102.208:21337 161.97.102.208:21337 161.97.102.208:21337 161.97.102.208:21337 161.97.102.208:21337 161.117.188.201:21337 161.117.188.201:21337 161.117.188.201:21337 161.117.188.201:21337 161.117.188.201:21337 164.90.183.45:21337 164.90.183.45:21337 164.90.237.220:21337 164.90.237.220:21337 164.90.237.220:21337 164.90.237.220:21337 165.22.24.100:21337 165.22.24.100:21337 165.22.24.100:21337 165.227.81.148:22339 167.71.210.157:21337 167.71.230.22:21337 167.71.230.22:21337 167.71.230.22:21337 167.71.230.22:21337 167.71.230.22:21337 167.86.85.109:21337 167.86.85.109:21337 167.86.92.202:21337 167.86.92.202:21337 167.86.92.202:21337 167.86.109.249:21337 167.86.109.249:21337 167.86.109.249:21337 167.86.109.249:21337 167.86.111.224:21337 167.86.111.224:21337 167.86.111.224:21337 167.86.112.23:21337 167.99.92.45:21341 167.99.92.45:21341 167.99.92.45:21341 167.99.92.45:21341 167.99.92.45:21355 167.99.92.45:21355 167.99.92.45:21355 167.99.92.45:21355 167.99.92.45:21361 167.99.92.45:21361 167.99.92.45:21361 167.99.92.45:21363 167.99.92.45:21363 167.99.92.45:21363 167.99.92.45:21363 167.99.92.45:21363 167.99.92.45:21373 167.99.92.45:21373 167.99.92.45:21373 167.99.92.45:21373 167.172.196.106:21337 167.179.98.235:21337 168.119.5.23:22339 168.119.48.4:21339 168.119.48.4:21339 168.119.48.4:21339 168.119.50.180:21337 168.119.58.62:21337 168.119.58.62:21337 168.119.58.62:21337 168.119.58.62:21337 168.119.59.213:21337 168.119.59.213:21337 172.104.178.10:21337 172.104.202.56:21337 172.104.202.56:21337 172.104.202.56:21337 172.104.202.56:21337 172.105.10.178:21335 172.105.175.187:21337 172.105.175.187:21337 173.212.217.182:21337 173.212.217.182:21337 173.212.217.182:21337 173.212.245.133:21337 173.249.8.65:20337 173.249.8.65:20337 173.249.8.65:20337 173.249.46.207:21337 178.32.224.19:21337 178.32.224.19:21337 178.62.85.63:21337 178.62.85.63:21337 178.62.85.63:21337 178.79.135.89:21337 178.128.175.95:21337 178.128.175.95:21337 178.128.175.95:21337 178.128.175.95:21337 178.128.229.239:21337 182.61.26.51:21337 182.61.26.51:21337 182.61.26.51:21337 182.61.26.51:21337 182.61.44.253:21337 182.61.44.253:21337 182.61.53.142:21337 188.127.177.29:21337 188.127.181.141:21337 188.127.191.68:21337 193.109.217.252:21337 193.109.217.253:21337 194.182.72.60:21340 195.181.208.239:21341 195.201.39.42:21341 195.201.39.42:21341 195.201.39.42:21341 195.201.39.42:21341 195.201.39.42:21353 195.201.39.42:21353 195.201.39.42:21355 195.201.39.42:21355 195.201.39.42:21355 195.201.39.42:21355 195.201.39.42:21357 195.201.39.42:21357 195.201.39.42:21357 195.201.39.42:21357 195.201.39.42:21361 195.201.39.42:21361 195.201.39.42:21361 195.201.39.42:21361 195.201.39.42:21365 195.201.39.42:21365 195.201.39.42:21365 195.201.39.42:21365 195.201.39.42:21367 195.201.39.42:21367 195.201.39.42:21367 195.201.39.42:21367 195.201.39.42:21369 195.201.39.42:21369 195.201.39.42:21369 195.201.110.244:22339 195.201.154.78:22339 198.48.63.102:21337 198.48.63.102:21337 198.48.63.102:21337 198.48.63.102:21337 198.74.55.205:21337 198.199.81.38:22339 202.182.100.84:21337 206.81.1.6:22339 206.81.7.170:21337 206.189.20.137:21337 206.189.20.137:21337 206.189.20.137:21337 206.189.20.137:21337 206.189.85.178:21337 206.189.236.55:22339 206.189.237.62:22339 207.180.219.48:21337 207.180.219.48:21337 207.180.219.48:22337 207.180.221.3:21337 207.244.244.102:21395 209.50.48.17:21337 209.50.48.17:21337 209.50.48.17:21337 209.50.48.17:21337 209.50.48.17:21337 209.126.8.47:22337 209.126.10.194:21337 209.126.10.194:21337 209.126.12.201:21337 209.151.154.177:21337 209.151.154.177:21337 209.250.237.99:21337 209.250.239.97:21337 213.133.101.58:22339 213.136.81.248:21337 213.239.194.162:22339 213.239.207.68:22339 217.61.18.38:21340 217.69.2.119:21339 217.69.2.119:21339 217.69.2.119:21345 217.69.2.119:21345 217.69.2.119:21345 217.69.2.119:21349 217.69.2.119:21349 217.69.2.119:21349 217.69.2.119:21349 217.69.2.119:21351 217.69.2.119:21351 217.69.2.119:21351 217.69.2.119:21351 217.69.2.119:21351 217.69.2.119:21357 217.69.2.119:21361 217.69.2.119:21361 217.69.2.119:21361 217.69.2.119:21363 217.69.2.119:21363 217.69.2.119:21369 217.69.2.119:21369 217.69.2.119:21371 217.69.2.119:21371 217.69.2.119:21373 217.69.2.119:21373 217.69.2.119:21373 217.69.2.119:21373 217.69.5.132:21337 3.250.231.153:21339 3.250.231.153:21343 3.250.231.153:21347 3.250.231.153:21349 3.250.231.153:21351 3.250.231.153:21353 3.250.231.153:21355 3.250.231.153:21357 3.250.231.153:21359 3.250.231.153:21363 3.250.231.153:21365 3.250.231.153:21369 3.250.231.153:21371 3.250.231.153:21373 3.250.231.153:21375 5.9.77.84:21337 34.69.247.189:21337 35.184.221.181:21337 35.196.183.236:21337 35.230.20.14:21337 41.157.53.173:21337 45.56.107.223:21337 45.156.23.45:21337 45.156.23.45:21339 45.156.23.45:21345 45.156.23.190:21339 45.156.23.190:21341 45.156.23.190:21343 45.156.23.190:21345 45.156.23.218:21337 45.156.23.218:21339 45.156.23.218:21341 45.156.23.218:21343 45.156.23.218:21345 45.156.23.236:21337 45.156.23.236:21339 45.156.23.236:21341 45.156.23.236:21343 45.156.23.236:21345 45.156.23.244:21339 45.156.23.244:21341 45.156.23.244:21343 45.156.23.244:21345 45.156.24.9:21337 45.156.24.9:21339 45.156.24.9:21341 45.156.24.9:21343 45.156.24.9:21345 45.156.24.23:21339 45.156.24.23:21343 45.156.24.23:21345 45.156.24.23:21347 45.156.24.23:21349 45.156.24.23:21351 45.156.24.23:21353 45.156.24.23:21355 45.156.24.77:21337 45.156.24.77:21339 45.156.24.86:21337 45.156.24.86:21339 45.156.24.86:21343 45.156.24.86:21345 45.156.24.148:21339 45.156.24.148:21341 45.156.24.148:21343 45.156.24.148:21345 45.156.24.148:21349 45.156.24.148:21351 45.156.24.148:21353 45.156.24.148:21357 45.156.24.148:21363 45.156.24.148:21365 45.156.24.148:21367 45.156.24.148:21369 45.156.24.148:21371 49.12.2.247:21339 49.12.2.247:21343 49.12.104.58:21337 49.12.104.58:21339 49.12.104.58:21343 49.12.104.58:21345 51.79.141.166:21337 51.79.143.44:21337 51.254.244.147:21337 54.185.188.35:21337 62.171.131.195:21337 62.171.170.204:21337 63.250.47.141:21337 72.14.185.185:21337 78.46.223.248:21337 78.47.148.22:21337 81.16.141.132:21337 94.130.176.222:21341 94.130.176.222:21343 94.130.176.230:21337 94.130.176.230:21341 94.130.176.230:21343 94.130.176.231:21339 94.130.176.231:21341 94.130.176.231:21343 94.191.33.160:21337 94.191.73.11:21337 94.191.73.173:21337 94.203.253.205:21337 94.237.24.17:21337 94.237.109.17:21337 94.237.109.18:21337 95.85.55.133:21337 95.111.248.194:21337 95.111.248.194:21339 95.111.248.194:21343 95.111.248.194:21345 95.111.248.194:21347 95.111.248.194:21353 95.111.248.194:21355 95.111.248.194:21357 95.111.248.194:21359 95.111.248.194:21363 95.111.248.194:21365 95.111.248.194:21367 95.111.248.194:21369 95.111.248.194:21371 95.111.248.194:21373 95.216.218.136:21341 95.216.218.136:21343 95.217.159.27:21337 95.217.159.27:21341 95.217.159.27:21343 95.217.159.27:21347 95.217.159.27:21351 95.217.159.27:21359 95.217.159.27:21361 95.217.159.27:21363 95.217.159.27:21365 95.217.159.27:21367 95.217.159.27:21369 95.217.159.27:21371 95.217.159.27:21375 95.217.182.60:21339 95.217.182.60:21341 95.217.182.60:21343 95.217.182.60:21345 95.217.209.2:21337 95.217.209.2:21339 95.217.209.2:21341 95.217.209.2:21343 95.217.213.109:21337 95.217.213.109:21339 95.217.213.109:21341 95.217.213.109:21343 95.217.214.162:21337 95.217.214.162:21341 95.217.214.162:21343 95.217.214.162:21345 103.45.102.5:21337 104.248.50.198:21337 104.248.250.232:21337 106.12.102.250:21337 106.12.124.3:21337 109.74.206.241:21337 116.202.116.178:22339 116.203.56.32:21339 116.203.56.32:21341 116.203.56.32:21343 116.203.56.32:21345 116.203.98.139:21337 116.203.98.139:21341 116.203.98.139:21343 116.203.98.139:21345 116.203.138.243:21337 116.203.138.243:21341 116.203.138.243:21343 116.203.138.243:21345 116.203.158.31:21337 116.203.158.31:21339 116.203.158.31:21341 116.203.158.31:21343 116.203.158.31:21345 118.24.125.84:21337 118.24.245.84:21337 118.25.158.213:21337 132.232.67.7:21337 134.122.98.28:21337 134.175.91.229:21337 135.181.24.121:21339 135.181.24.121:21341 135.181.24.121:21343 135.181.24.121:21347 135.181.24.121:21349 135.181.24.121:21351 135.181.24.121:21355 135.181.24.121:21359 135.181.24.121:21363 135.181.24.121:21371 135.181.24.121:21373 135.181.34.214:21337 135.181.35.20:21337 135.181.35.32:21337 135.181.35.56:21337 135.181.35.79:21337 135.181.37.106:21337 135.181.37.106:21339 135.181.37.106:21341 135.181.37.106:21343 135.181.37.106:21345 135.181.38.221:21337 138.68.65.20:21337 138.68.65.24:21337 138.68.76.41:21337 139.99.203.110:21337 139.99.203.219:21337 139.99.204.129:21337 139.162.135.130:21337 139.162.234.100:21337 139.162.239.140:21337 142.93.32.119:21337 144.91.125.176:21337 148.70.108.200:21337 152.44.36.22:21337 157.245.40.134:21337 157.245.40.134:21339 157.245.40.134:21343 157.245.40.134:21347 157.245.40.134:21349 157.245.40.134:21351 157.245.40.134:21353 157.245.40.134:21355 157.245.40.134:21357 157.245.40.134:21359 157.245.40.134:21361 157.245.40.134:21363 157.245.40.134:21365 157.245.40.134:21367 157.245.40.134:21371 157.245.40.134:21373 157.245.40.134:21375 157.245.41.57:21337 159.65.14.172:21337 159.65.118.6:21337 159.65.118.92:21337 159.65.118.137:21337 159.65.122.207:21337 159.65.122.212:21337 159.65.122.240:21337 159.89.105.99:21337 159.89.105.199:21337 161.35.20.26:21337 161.97.102.194:21337 161.97.102.239:21337 161.97.113.229:21337 164.68.112.40:21337 164.68.121.189:21337 164.90.237.220:21337 165.22.239.152:21337 167.86.112.22:21337 167.86.113.243:21337 167.99.92.45:21337 167.99.92.45:21339 167.99.92.45:21343 167.99.92.45:21345 167.99.92.45:21347 167.99.92.45:21349 167.99.92.45:21351 167.99.92.45:21353 167.99.92.45:21357 167.99.92.45:21359 167.99.92.45:21365 167.99.92.45:21367 167.99.92.45:21369 167.99.92.45:21371 167.99.92.45:21375 168.119.48.4:21337 168.119.48.4:21341 168.119.48.4:21343 168.119.48.4:21345 172.104.50.85:21337 172.104.178.10:21337 172.105.18.82:21337 172.105.99.71:21337 172.105.169.131:21337 172.105.175.187:21337 173.212.241.42:21337 173.249.3.178:21337 173.249.3.178:22337 173.249.8.65:21337 178.62.192.198:21337 178.79.135.89:21337 178.79.178.213:21337 178.128.164.30:21337 182.61.12.194:21337 188.166.241.82:21337 195.201.39.42:21337 195.201.39.42:21339 195.201.39.42:21343 195.201.39.42:21345 195.201.39.42:21347 195.201.39.42:21349 195.201.39.42:21351 195.201.39.42:21359 195.201.39.42:21363 195.201.39.42:21371 195.201.39.42:21373 195.201.39.42:21375 203.195.137.36:21337 206.189.116.4:21337 206.189.124.26:21337 207.180.211.147:21337 209.50.63.41:21337 209.50.63.47:21337 209.151.154.177:21337 209.151.157.79:21337 217.69.2.119:21337 217.69.2.119:21341 217.69.2.119:21343 217.69.2.119:21347 217.69.2.119:21353 217.69.2.119:21355 217.69.2.119:21359 217.69.2.119:21365 217.69.2.119:21367 217.69.2.119:21375
done