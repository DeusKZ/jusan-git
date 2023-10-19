#!/bin/bash

read -p "Введите URL вышего профиля https://stepik.org/users/" url

id=$(curl -s "https://stepik.org:443/api/users/$url" | jq -r '.users[].id')

echo "ID вашего профиля на Stepik.org:$id"

