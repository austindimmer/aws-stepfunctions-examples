mkdir -p /home/vscode/.aws
ln -s /home/vscode/.aws /workspaces/aws-stepfunctions-examples/.aws
touch /home/vscode/.aws/credentials
sudo chmod -R 765 /home/vscode/.aws
sudo chown -R vscode /home/vscode/.aws
cat <<EOF > /home/vscode/.aws/credentials

[default]
sso_start_url = https://11111111111_Admin.awsapps.com/start
sso_region = eu-west-1
sso_account_id = 11111111111
sso_role_name = 11111111111_Admin
region = eu-west-1
output = json

[11111111111_Admin]
source_profile = 11111111111_Admin
output=json
region=eu-west-1
EOF

cat <<EOF > /home/vscode/.aws/config
[default]
output=json
region = eu-west-1
EOF