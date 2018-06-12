#!/bin/sh
destdir=/home/cabox/workspace/myfile.txt
while :
do
echo "Enter the name"
read name
echo "Enter the surname"
read surname
echo "Hello $name $surname"
if [ -f "$destdir" ]
then 
    echo "$name" "$surname" >> "$destdir"
fi
done
 
 echo "Search"
 read search 
 search()
 { 
 if [ "$search" -eq "Aisuluu"]; then
  echo $surname
 else 
 }