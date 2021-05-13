if [ ! -f Procfile ]; then
  echo "Procfile not found! Run this script from the project root"
  exit 1
fi
app_name="loaclhost"
app_port="5000"
app_user="ubuntu"
foreman export systemd --app $app_name -p$app_port --user $app_user /etc/systemd/system
systemctl daemon-reload
systemctl restart $app_name.target