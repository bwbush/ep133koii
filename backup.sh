#!/usr/bin/env bash

KEY=ep133koii
CID=$(ipfs add --pin=false --recursive=true backup --quieter)
ipfs pin remote add --service=pinata --name=$KEY $CID
ipfs name publish --key=$KEY $CID
