#!/bin/bash

docker build --build-arg uid=${UID:-1000} --tag android-studio .

