date=`date "+%D %I:%M"`
wifi=`ip -o -4 addr show | awk -F '[ /]+' '/global/ {print $4}'`
batt=`acpi | cut -d ' ' -f4-5`

echo -e "(NET) $wifi :: (BAT) $batt :: $date"
