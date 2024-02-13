git config --global user.email "dg-hub"
git config --global user.name "dg-hub"
cd /srv/jekyll
git clone https://dg-hub:$1@github.com/dg-hub/dg-hub.github.io.git
cd /srv/jekyll/dg-hub.github.io
rm -rf /srv/jekyll/dg-hub.github.io/*
cp -r /srv/jekyll/_site /srv/jekyll/dg-hub.github.io
echo !!!!!!!!!!!!!!!SOURCE!!!!!!!!!!!!!!!
ls  /srv/jekyll/_site/
echo !!!!!!!!!!!!!!!TARGET!!!!!!!!!!!!!!!
ls  /srv/jekyll/dg-hub.github.io/
git add --all
git commit -m "Adding Jekyll Action"
echo "Push to origin with $1"
git push -u origin
