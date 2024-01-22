for pass in $(cat wordlist.txt);
do
	for i in $( openssl enc -list | tail +2);
		do $(openssl ${i:1} -pbkdf2 -d -in Level_2_Challenge.enc -out Level_2_Decryption_$i-$pass.txt -k $pass);
	done;
done;
