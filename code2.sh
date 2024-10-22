#!/bin/bash

clear # Очистка экрана

echo "          Список"
echo "          ------"
echo "Выберите версию PHP:"
echo
echo "[1] 7.0 PHP"
echo "[2] 7.1 PHP"
echo "[3] 7.2 PHP"
echo "[4] 7.3 PHP"
echo "[5] 7.4 PHP"
echo "[6] 5.6 PHP"
echo "[7] PHP extensions"
echo

read version

case "$version" in

  "1" )
sudo apt-get update > /dev/null
sudo apt-get -y install lsb-release apt-transport-https ca-certificates > /dev/null
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg > /dev/null
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list > /dev/null
sudo apt-get update -y > /dev/null
sudo apt-get install -y php7.0 php7.0-common php7.0-cli > /dev/null
sudo apt-get install -y php7.0-gd php7.0-mysql php7.0-sqlite3 php7.0-soap php7.0-xsl php7.0-json php7.0-opcache php7.0-mbstring php7.0-readline php7.0-curl php7.0-mcrypt php7.0-xml php7.0-zip php-redis > /dev/null
sudo a2dismod php7.4
sudo a2dismod php7.3
sudo a2dismod php7.2
sudo a2dismod php7.1
sudo a2dismod php7.0
sudo a2dismod php5.6
sudo a2enmod php7.0
sudo service apache2 restart
sudo ln -sfn /usr/bin/php7.0 /etc/alternatives/php
  ;;

  "2" )
sudo apt-get update > /dev/null
sudo apt-get -y install lsb-release apt-transport-https ca-certificates > /dev/null
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg > /dev/null
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list > /dev/null
sudo apt-get update -y > /dev/null
sudo apt-get install -y php7.1 php7.1-common php7.1-cli > /dev/null
sudo apt-get install -y php7.1-gd php7.1-mysql php7.1-sqlite3 php7.1-soap php7.1-xsl php7.1-json php7.1-opcache php7.1-mbstring php7.1-readline php7.1-curl php7.1-mcrypt php7.1-xml php7.1-zip php-redis > /dev/null
sudo a2dismod php7.4
sudo a2dismod php7.3
sudo a2dismod php7.2
sudo a2dismod php7.1
sudo a2dismod php7.0
sudo a2dismod php5.6
sudo a2enmod php7.1
sudo service apache2 restart
sudo ln -sfn /usr/bin/php7.1 /etc/alternatives/php
  ;;

  "3" )
sudo apt-get update > /dev/null
sudo apt-get -y install lsb-release apt-transport-https ca-certificates > /dev/null
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg > /dev/null
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list > /dev/null
sudo apt-get update -y > /dev/null
sudo apt-get install -y php7.2 php7.2-common php7.2-cli > /dev/null
sudo apt-get install -y php7.2-bz2 php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-mysql php7.2-opcache php7.2-readline php7.2-soap php7.2-sqlite3 php7.2-tidy php7.2-xml php7.2-xsl php7.2-zip > /dev/null
sudo a2dismod php7.4
sudo a2dismod php7.3
sudo a2dismod php7.2
sudo a2dismod php7.1
sudo a2dismod php7.0
sudo a2dismod php5.6
sudo a2enmod php7.2
sudo service apache2 restart
sudo ln -sfn /usr/bin/php7.2 /etc/alternatives/php
  ;;

  "4" )
sudo apt-get update > /dev/null
sudo apt-get -y install lsb-release apt-transport-https ca-certificates > /dev/null
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg > /dev/null
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list > /dev/null
sudo apt-get update -y > /dev/null
sudo apt-get install -y php7.3 php7.3-common php7.3-cli > /dev/null
sudo apt-get install -y php7.3-bz2 php7.3-curl php7.3-gd php7.3-json php7.3-mbstring php7.3-mysql php7.3-opcache php7.3-readline php7.3-soap php7.3-sqlite3 php7.3-tidy php7.3-xml php7.3-xsl php7.3-zip > /dev/null
sudo a2dismod php7.4
sudo a2dismod php7.3
sudo a2dismod php7.2
sudo a2dismod php7.1
sudo a2dismod php7.0
sudo a2dismod php5.6
sudo a2enmod php7.3
sudo service apache2 restart
sudo ln -sfn /usr/bin/php7.3 /etc/alternatives/php
  ;;

  "5" )
sudo apt-get update > /dev/null
sudo apt-get -y install lsb-release apt-transport-https ca-certificates > /dev/null
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg > /dev/null
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list > /dev/null
sudo apt-get update -y > /dev/null
sudo apt-get install -y php7.4 php7.4-common php7.4-cli > /dev/null
sudo apt-get install -y php7.4-bz2 php7.4-curl php7.4-gd php7.4-json php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-readline php7.4-soap php7.4-sqlite3 php7.4-tidy php7.4-xml php7.4-xsl php7.4-zip > /dev/null
sudo a2dismod php7.4
sudo a2dismod php7.3
sudo a2dismod php7.2
sudo a2dismod php7.1
sudo a2dismod php7.0
sudo a2dismod php5.6
sudo a2enmod php7.4
sudo service apache2 restart
sudo ln -sfn /usr/bin/php7.4 /etc/alternatives/php
  ;;

  "6" )
sudo apt-get update > /dev/null
sudo apt-get -y install lsb-release apt-transport-https ca-certificates > /dev/null
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg > /dev/null
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list > /dev/null
sudo apt-get update -y > /dev/null
sudo apt-get install -y php5.6 php5.6-common php5.6-cli > /dev/null
sudo apt-get install -y php5.6-curl php5.6-mcrypt php5.6-soap php5.6-bz2 php5.6-gd php5.6-mysql php5.6-sqlite3 php5.6-json php5.6-opcache php5.6-xml php5.6-mbstring php5.6-readline php5.6-xmlrpc php5.6-zip php-redis > /dev/null
sudo a2dismod php7.4
sudo a2dismod php7.3
sudo a2dismod php7.2
sudo a2dismod php7.1
sudo a2dismod php7.0
sudo a2dismod php5.6
sudo a2enmod php5.6
sudo service apache2 restart
sudo ln -sfn /usr/bin/php5.6 /etc/alternatives/php
  ;;

  "7" )
sudo apt-get install -y php-memcache php-memcached php-redis  > /dev/null
  ;;

          * )

   echo
   echo "Нет данных."
  ;;

esac

echo

#  Упражнение:
#  --------
#  Измените этот сценарий таким образом, чтобы он не завершал работу
#+ после вывода информации о персоне, а переходил на ожидание нового
#+ ввода от пользователя.

exit 0
