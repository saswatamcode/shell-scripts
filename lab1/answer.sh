cat <<EOF >>states.txt
Andhra Pradesh
Arunachal Pradesh
Assam
Bihar
Chhattisgarh
Goa
Gujarat
Haryana
Himachal Pradesh
Jharkhand
EOF

touch capitals.txt

cat <<EOF >>capitals.txt
Hyderabad
Itanagar
Dispur
Patna
Raipur
Panaji
Gandhinagar
Chandigarh
Shimla
Ranchi
EOF

head -3 states.txt

cut -d " " -f 1 states.txt

grep -i 'i' capitals.txt
