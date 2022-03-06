python setting.py
#file=`curl -s "https://www.city.fujisawa.kanagawa.jp/hokenyobo/corona_doukou_data.html" -o - | grep -oP '\d{8,8}_pr.pdf' | sed 's/.pdf//g'`
#curl http://www.city.fujisawa.kanagawa.jp/hokenyobo/documents/${file}.pdf -o data/${file}.pdf
#pdftotext -layout data/${file}.pdf - | awk 'BEGIN { OFS=","; print "No,患者概要,年代,性別,居住地,職業,陽性判明日,症状,推定発生事由"; } NR>=31 { print $1, $2, $3, $4, $5, $6, $7, #$8, $9 }' > data/${file}.csv
#python fujisawa.py data/${file}.csv
