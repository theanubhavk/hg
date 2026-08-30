#!/bin/sh

# 1. Start Honeygain in the background

/app/honeygain -tou-get

# (Make sure to pass your variables from Render's Environment Variables tab)
/app/honeygain -tou-accept -email "$HG_EMAIL" -pass "$HG_PASSWORD" -device "$HG_DEVICE" &

# 2. Start a simple Python web server on port 10000 to trick Render's health check
python3 -m http.server 10000
