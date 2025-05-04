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
