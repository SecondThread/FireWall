rem %CD%/getIpFromServer.vbs http://wumbogames.github.io/secret/publicip.txt %CD%/test.txt
filename="%CD%/test.txt"
while read -r line
do
	name="$line"
	echo "$name"
done
pause