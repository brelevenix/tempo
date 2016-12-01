sudo apt-get update
sudo apt-get install r-base -y
sudo su - \
-c "R -e \"packages <- c('shiny','rmarkdown','infotheo', 'minerva', 'visNetwork', 'rAmCharts','mclust','Hmisc'); if (length(setdiff(packages, rownames(installed.packages()))) > 0){install.packages(setdiff(packages, rownames(installed.packages())), repos='https://cran.rstudio.com/')}\""
apt-get install gdebi-core
wget https://download3.rstudio.org/ubuntu-12.04/x86_64/shiny-server-1.5.1.834-amd64.deb
sudo gdebi shiny-server-1.5.1.834-amd64.deb
sudo systemctl start shiny-server
wget https://drive.google.com/open?id=0B7cAS879hIpMb21QWXh4XzFINDg
wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=0B7cAS879hIpMb21QWXh4XzFINDg' -O Linkspotter_app.zip
sudo unzip  Linkspotter_app.zip -d /srv/shiny-server/
