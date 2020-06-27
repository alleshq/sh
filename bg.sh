img=${XDG_DATA_HOME:-$HOME/.local/share}/allesbg
url=$(curl -f https://bg.alles.cx/url);
if [ $? -ne 0 ]; then exit 1; fi
wget $url -O $img
feh --bg-fill $img