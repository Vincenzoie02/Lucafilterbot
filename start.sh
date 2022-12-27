if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vincenzoie02/Lucafilterbot.git /Lucafilterbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lucafilterbot
fi
cd /Lucafilterbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
