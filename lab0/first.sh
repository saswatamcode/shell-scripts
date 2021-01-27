mkdir -p dept/CSE dept/CSSE dept/CSCE dept/IT
cd dept/CSE
cat << EOF >> CSE.txt
This is text a CSE section
EOF
cd .. && cd CSCE
cat << EOF >> CSCE.txt
This is text a CSCE section
EOF
cd .. && cd CSSE
cat << EOF >> CSSE.txt
This is text a CSSE section
EOF
cd .. && cd IT
cat << EOF >> IT.txt
This is text a IT section
EOF
