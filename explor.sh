#!/bin/bash

echo "Welcome to explore"

echo "Current directory: $(pwd)"

echo "📁 Contents:"

for content in *
do
    if [ -f "$content" ]
    then
        echo "📄 $content ------------ $(du -sh "$content" | awk '{printf $1}')"
    fi
    if [ -d "$content" ]
    then
        echo "📁 $content ------------ $(du -sh "$content" | awk '{printf $1}')"
    fi
done

flag=1

while [ "$flag" -eq 1 ]
do
echo ""
read -p "Enter a line of text(Press enter without writing to exit):" text

if [[ -n "$text" ]]
then
    echo "Characters count: $(echo -n "$text" | wc -m) characters"
else
    echo "Exiting the Explorer. GoodBye!"
    flag=0
fi

done
