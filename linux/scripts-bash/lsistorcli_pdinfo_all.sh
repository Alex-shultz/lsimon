#!/bin/bash

# получаем имя диска
PDNAME=$1

# формируем данные физического диска
echo "/usr/local/bin/storcli64 $PDNAME show all j" | bash
