#!/bin/bash

git submodule update --init
git submodule foreach git pull origin master
