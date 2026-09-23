#!/bin/sh

echo "search keyword?"
read SEARCH
curl cheat.sh/"$SEARCH"
