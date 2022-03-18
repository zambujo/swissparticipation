#!/bin/bash

while read url; do
	wget --server-response --spider $url 2>&1 | grep -i Last-Modified
done < url_list.txt
