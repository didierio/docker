#!/bin/sh

set -e

green='\033[1;32m'
yellow='\033[1;33m'
NC='\033[0m' # No Color

echo "${green}fetching repositories...${NC}"

if [ ! -d "./apps/blog" ]; then
    echo "${yellow}cloning blog...${NC}"

    git clone git@github.com:didierio/blog.git ./apps/blog --quiet
fi

if [ ! -d "./apps/cache" ]; then
    echo "${yellow}cloning cache...${NC}"

    git clone git@github.com:didierio/cache.git ./apps/cache --quiet
fi

if [ ! -d "./apps/connect" ]; then
    echo "${yellow}cloning connect...${NC}"

    git clone git@github.com:didierio/connect.git ./apps/connect --quiet
fi

if [ ! -d "./apps/website" ]; then
    echo "${yellow}cloning website...${NC}"

    git clone git@github.com:didierio/website.git ./apps/website --quiet
fi

echo "${green}done!${NC}"
