if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/narutooxox/RolexTG.git /RolexTG
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /RolexTG
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Bot Assembilng..."
python3 bot.py
