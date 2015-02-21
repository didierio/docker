#!/bin/sh

set -e

green='\033[1;32m'
yellow='\033[1;33m'
NC='\033[0m' # No Color
echo "${green}fetching repositories${NC}"

if [ ! -d "blog" ]; then
    echo "${yellow}cloning blog...${NC}"

    git clone git@github.com:didierio/blog.git --quiet
fi

if [ ! -d "cache" ]; then
    echo "${yellow}cloning cache...${NC}"

    git clone git@github.com:didierio/cache.git --quiet
fi

if [ ! -d "connect" ]; then
    echo "${yellow}cloning connect...${NC}"

    git clone git@github.com:didierio/connect.git --quiet
fi

if [ ! -d "website" ]; then
    echo "${yellow}cloning website...${NC}"

    git clone git@github.com:didierio/website.git --quiet
fi

if [ ! -d "work" ]; then
    echo "${yellow}cloning work...${NC}"

    git clone git@github.com:didierio/work.git --quiet
fi





