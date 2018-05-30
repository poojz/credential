t= "password=345"
scan()
{
url_without_suffix="${url%.*}"
reponame="$(basename "${url_without_suffix}")"

b="/*"
c="$reponame$b"
echo $c
for file in $c; do
echo $(basename "$file")
echo "the content of the file $(basename "$file") is: "
f="password([^/]+)"
for i in `cat $file`
do
  
  m=$i
  echo "$i"
  if  [[ $m =~ $f ]]
  then
   echo "password found"
fi	
done 
done
}
myfunc()
{
echo "enter the url of the repository"
read url
git clone $url
}
