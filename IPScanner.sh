clear
echo "Please enter subnet mask: "
set r=""
read r
for i in {1..255}
do
IP=$r$i
echo "$IP"
ping -c 1 -w 5 $IP > /dev/null
if [ $? == 0 ]
then
   echo ""
   echo "DEVICE PRESENT AT IP - $IP"
   echo ""
fi
done
