git pull
rm -rf /var/gnu-fm/nixtape/themes/2024-end-times/
git clone https://github.com/foocorp/end-times.git /var/gnu-fm/nixtape/themes/2024-end-times/
mkdir /var/gnu-fm/nixtape/themes/2024-end-times/templates_c/
chmod 777 /var/gnu-fm/nixtape/themes/2024-end-times/templates_c/
apache2ctl graceful

