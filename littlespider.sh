echo "============================"
echo "  Searching...       "
echo "============================"

wget $1 2> /dev/null

cat index.html | grep "href=" | grep "http" | cut -d "/" -f 3 | grep "\." | grep -v ">" | grep -v " " | sort -u > dominios
rm index.html
for i in $(cat dominios)
do
        ip=$(host $i | grep "address" | cut -d " " -f 4 | grep -v "address")
        isalias=$(host $i | cut -d " " -f 4 | grep "alias")
        echo "$ip" > tempip
        tam=$(cat tempip | wc -l)
        if [ "$isalias" == "alias" ]; then
                alias=$(host $i | cut -d " " -f 6 | grep "\.")
                echo "$i is an alias for $alias"
        else
                if [ "$tam" -gt "1" ]; then
                        for n in $ip
                        do
                                echo "$n                $i"
                        done
                else
                echo "$ip               $i"
                fi
        fi
        rm tempip
done
rm dominios
