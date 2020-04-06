
#!/bin/bash

directory="./inputs/"

for file in $directory*
do 
 	echo "Decrupting file... $file" 
	java Codec d $file 
	echo "Decrypted file... Deleting ...."
done 


 
