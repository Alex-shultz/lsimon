#!/bin/bash

# получаем имя диска
PDNAME=$1

# формируем данные физического диска
echo "/media/storcli_rel/Unified_storcli_all_os/Linux_Lite/storcli64 $PDNAME show all j" | bash
