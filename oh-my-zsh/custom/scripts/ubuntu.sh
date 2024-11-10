is_running=$(pgrep -x "Docker Desktop")
if [[ ! $is_running ]]; then
  open -a "Docker"
while [[ $(osascript -e 'tell application "System Events" to get name of first application process whose frontmost is true') != "Docker Desktop" ]]; do
    sleep 1
done
fi
open -a "Kitty"
docker start ubuntu_c 
docker attach ubuntu_c
