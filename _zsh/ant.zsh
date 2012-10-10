stat -f%m . > /dev/null 2>&1
if [ "$?" = 0 ]; then
	stat_cmd=(stat -f%m)
else
	stat_cmd=(stat -L --format=%y)
fi

