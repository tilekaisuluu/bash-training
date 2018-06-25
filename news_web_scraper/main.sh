if [ "$1" = "-h" ] || [ "$1" == "--help" ]; then
  echo "######################"
  echo "Usage: `basename $0`" 
  echo "######################"
  echo "Command '--create' is used to create project structure"
  echo "######################"
  echo "Folder 'news_web_scraper' is the root folder" 
  echo "######################"
  echo "'README.md' project documentation "
  echo "######################"
  echo "Command '--destroy' is to remove all project files and folders"
  echo "######################"

  exit 0
fi

if [ "$1" = "-c" ] || [ "$1" == "--create" ]; then
touch README.md
mkdir src
mkdir tests
mkdir output
fi

if [ "$1" = "-d" ] || [ "$1" == "--destroy" ]; then
rmdir src
rmdir tests
rmdir output 
rm README.md
fi 




if [ "$1" = "--url"  ]; then

url=$2

newDir=$(echo "$url" | awk -F/ '{print $3}')

mkdir -p $newDir
wget -qO- $url | grep -Eo '(http|https)://[\da-z./?A-Z0-9\D=_-]*' | uniq >> $newDir/urls.txt

fi

