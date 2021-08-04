# iTunesDocker

Based on:
- https://github.com/yankcrime/dockerfiles/tree/master/itunes
- https://github.com/scottyhardy/docker-wine

## Usage

- Start the base container
  ```powershell
  docker run -d `
    -p 3388:3389/tcp `
    --name itunes `
    --restart unless-stopped `
    -e TZ=America/Chicago `
    -e RDP_SERVER=yes `
    -e WINEARCH=win32 `
    -v e:/Docker/iTunes/user.reg:/home/wineuser/.wine/user.reg:rw `
    -v e:/Docker/iTunes/iTunes:/home/wineuser/iTunes:rw `
    -v "e:/Docker/iTunes/appdata:/home/wineuser/.wine/drive_c/users/wineuser/Application Data:rw" `
    scottyhardy/docker-wine:latest
  ```
  (*Example uses PowerShell*)

- Setup the environment
  - Connect to the RDP server on port 3388
  - Once connected, login using the username + password: `wineuser`
  - Once logged in, open a terminal and run:
    ```bash
    /bin/bash -c "$(wget -qO- https://raw.githubusercontent.com/au5ton/iTunesDocker/main/setup.sh)"
    ```
- Run the iTunes installer `iTunesSetup.exe` on the Desktop
  - Located at: `/home/wineuser/Desktop/iTunesSetup.exe`
- Run iTunes with the `open-itunes.sh` script on the Desktop
