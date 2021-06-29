mkdir $HOME/new-user-role-credentials
cd $HOME/new-user-role-credentials
sudo openssl genrsa -out new-user.key 2048
sudo openssl req -new -key new-user.key -out new-user.csr
sudo openssl x509 -req -in new-user.csr -CA /etc/kubernetes/pki/ca.crt -CAkey /etc/kubernetes/pki/ca.key -CAcreateserial -out new-user.crt -days 500