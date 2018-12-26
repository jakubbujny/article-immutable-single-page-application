#!/usr/bin/env bash



docker run -p 80:80 -e API_URL=https://injected-in-env.jakubbujny.com -it jakubbujny/immutable-spa