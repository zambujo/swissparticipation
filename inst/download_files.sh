#!/bin/bash

while read url; do
	wget -P ../data-raw $url
done < url_list.txt
