#!/bin/sh

configfile=/Users/1242070/sampconf.xml

function Die { 
	msg=$1
	echo "Error: $msg" 1>&2
        exit 1
   }
echo $configfile
initkeyWithPrefix=`grep -o '(?<=<initkey>).*?(?=</initkey>)' $configfile | head -1`
#initkeyWithPrefix=`grep -A2 '<GPG KEY=\"GPG.AppleB2BProdLDAPKey\">' $configfile`
#echo $initkeyWithPrefix
#initkey=grep -oP "<initkey>(.*)</initkey>" $configfile | cut -d ">" -f 2 | cut -d "<" -f 1
if [ -z "$initkeyWithPrefix" ]; then
        Die "Error: Cannot determine initkey from the config sampconf.txt" 
        exit 1
  else
    echo $initkeyWithPrefix
       initkey="`echo "$initkeyWithPrefix" | cut -d"." -f2`"
       echo $initkey
fi




grep -oP '(?<=<GPG KEY\="GPG.AppleB2BProdLDAPKey">\r.*<FINGERPRINT>).*?(?=</FINGERPRINT>)'

'(?<=<FINGERPRINT>).*?(?=</FINGERPRINT>)'



WORKING ::::: grep -A1  '<GPG KEY="GPG.AppleB2BProdLDAPKey">' /ngs/app/b2bp/data/share/apple/config/com.apple.b2b.gpg | tail -1  | grep -oP '(?<=<FINGERPRINT>).*?(?=</FINGERPRINT>)' | head -1


grep -oP '(?<=<GPG KEY="GPG.AppleB2BProdLDAPKey">\r.*<FINGERPRINT>).*?(?=</FINGERPRINT>)'


<GPG KEY="GPG.LDAPKey">


<GPG KEY="GPG.LDAPKey">
      <FINGERPRINT>12345</FINGERPRINT>
      
      grep -oP '(?<=<GPG KEY="GPG.LDAPKey">\r.*<FINGERPRINT>).*?(?=</FINGERPRINT>)'



/(?<=<GPG KEY="GPG.LDAPKey">\n.*<FINGERPRINT>)(.*?)(?=<\/FINGERPRINT>)/sm


print $1 if /(<GPG KEY="GPG.LDAPKey">.*?)<\/FINGERPRINT>/s;


p> print $1 if /(<GPG KEY="GPG.LDAPKey">.*?)<\/FINGERPRINT>/s 
   <GPG KEY="GPG.AppleSftpKey">
	 <FINGERPRINT>73C6EF1ACB8D826CCBEA5EE6878DCBF5711AE4E6</FINGERPRINT>


grep -oP '(?<=<GPG KEY="GPG\.AppleB2BProdEAIKey">.<FINGERPRINT>)(.*?)(?=<\/FINGERPRINT>)' /ngs/app/b2bp/data/share/apple/config/com.apple.b2b.gpg | head -1


grep -oP '(?<=<GPG KEY\="GPG\.AppleB2BProdEAIKey">)(.*?)(?=</FINGERPRINT>)' /ngs/app/b2bp/data/share/apple/config/com.apple.b2b.gpg | head -1