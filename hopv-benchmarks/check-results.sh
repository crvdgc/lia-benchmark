#!/bin/bash
total=0

echo "Sat"
satN=$(grep -R "Sat" | wc -l)
((total+=satN))
echo $satN

echo "Timeout"
timeoutN=$(grep -R "Timeout" | wc -l)
((total+=timeoutN))
echo $timeoutN

echo "Error"
errorN=$(grep -R "error" | wc -l)
((total+=errorN))
echo $errorN

echo "Parsing error"
grep -R "Parsing" | wc -l

echo "-------------"
echo "Total number"
echo $total
