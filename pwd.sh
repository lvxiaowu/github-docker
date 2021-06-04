filePath="dockerPwd.txt"

if [ ! -f $filePath ]; then
  touch $filePath
fi

echo $1 > $filePath
echo $filePath
