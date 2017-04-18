echo "Please enter some input: " ;
read input ;
for i in {1..15}; do echo "$input" | sed 's/./&\n/g' | shuf | tr -d '\n' >> shuffl.txt && printf "\n" >> shuffl.txt ; done && echo "$input" >> shuffl.txt &&

while read line;
	do convert -background white -fill black -gravity Center -weight 200 -pointsize 24 PANGO:"$line" gif_$line.png ; 
	done < shuffl.txt ;
#while read line;
#	do convert -background white -fill black -gravity Center -weight 200 -pointsize 24 PANGO:"$line" gif_%d.png ;
	convert -delay 40 -loop 0 *.png shuffld.gif ; 
	rm *.png ; 
	rm shuffl.txt
