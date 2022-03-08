#!/bin/bash

while read url; do
	wget -P ../data-raw $url
done < urls.txt
