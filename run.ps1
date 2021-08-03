
docker run -d `
 -p 3388:3389/tcp `
 --name itunes `
 --restart unless-stopped `
 -e TZ=America/Chicago `
 -e RDP_SERVER=yes `
 -e WINEARCH=win32 `
 -v e:/Docker/iTunes/Desktop:/home/wineuser/Desktop:rw `
 -v e:/Docker/iTunes/Music:/home/wineuser/Music:rw `
 -v "e:/Docker/iTunes/appdata:/home/wineuser/.wine/drive_c/users/wineuser/Application Data:rw" `
 scottyhardy/docker-wine:latest

pause
