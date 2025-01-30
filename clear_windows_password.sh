
#2025-01-29-1

program='chntpw'
windowsPart='Windows/System32/config/SAM'

if ! command -v $program 2>&1 >/dev/null
then
    echo "$program not installed, please install it."
    exit 1
fi


for a in $(ls -d /media/* /mnt/*)
do
	locationAndFile=${a}'/'${windowsPart}
	if [ -f $locationAndFile ]
	then
		found=1
		echo "Registry found at $locationAndFile"
		$program -i $locationAndFile
	fi
done

if [ ! $found ]
  then
  echo "Windows Registry not found. Mount Windows partition first, by clicking on it in the File manager."
fi
