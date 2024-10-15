#!/bin/bash

# получаем id контроллера
CTLID=$1

#если id контроллера не передано - выводим всю информацию
if [[ $CTLID = "" ]]; then
    echo "/media/storcli_rel/Unified_storcli_all_os/Linux_Lite/storcli64 /call/eall/sall show j" | bash                               
else
    # проверка на целое число
    re='^[0-9]+$'
    if ! [[ $CTLID =~ $re ]] ; then
       echo "error: Not a number" >&2; exit 1
    else
        # формируем данные физических дисков
        echo "/media/storcli_rel/Unified_storcli_all_os/Linux_Lite/storcli64 /c$CTLID/eall/sall show all j" | bash
    fi
fi
