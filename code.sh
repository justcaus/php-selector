#!/bin/sh
#!/bin/bash
echo "Switching to PHP$1..."
case $1 in
    "7")
        sudo a2dismod php5.6
        sudo a2enmod php7.0
        sudo service apache2 restart
        sudo ln -sfn /usr/bin/php7.0 /etc/alternatives/php;;
    "5.6")
        sudo a2dismod php7.0
        sudo a2enmod php5.6
        sudo service apache2 restart
        sudo ln -sfn /usr/bin/php5.6 /etc/alternatives/php;;
esac
echo "Current version: $( php -v | head -n 1 | cut -c-7 )"
