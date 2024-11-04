#!/data/data/com.termux/files/usr/bin/bash
echo -e "\e[1;34m
┏━━━━━━━━━━•❅•°•❈•°•❅•━━━━━━━━━━┓
           ╔═╗╔══╗╔══╗╔══╗
           ║╬║║╔╗║║══╣║══╣
           ║╔╝║╠╣║╠══║╠══║
           ╚╝─╚╝╚╝╚══╝╚══╝
╔══╗╔═╗╔═╗╔╦╗╔═╗╔══╗╔══╗╔═╦╗
║══╣║╦╝║╔╝║║║║╬║╚║║╝╚╗╔╝╚╗║║
╠══║║╩╗║╚╗║║║║╗╣╔║║╗─║║─╔╩╗║
╚══╝╚═╝╚═╝╚═╝╚╩╝╚══╝─╚╝─╚══╝
┗━━━━━━━━━━•❅•°•❈•°•❅•━━━━━━━━━━┛\e[0m"

echo -e "\e[1;33mPASS SECURITY Creado Por: Angel Del Villar\e[0m"

echo -e "\e[1;34mGITHUB: https://github.com/Angel-iluminaty\e[0m"

pkg install python
cp login.py $PREFIX/bin/
chmod 700 $PREFIX/bin/login.py
cp login $PREFIX/bin/
chmod 700 $PREFIX/bin/login
mkdir /data/data/com.termux/files/usr/share/login/
clear

#TODO: hide input
read -p "Ingrese una nueva contraseña: " passone;
read -p "Repita la contraseña: " passtwo;

if [ $passone = $passtwo ];
then
	touch /data/data/com.termux/files/usr/share/login/.pass
	python -c "import hashlib; print(hashlib.sha1(b'$passone').hexdigest())" > /data/data/com.termux/files/usr/share/login/.pass
	echo 'Iniciar sesión instalado'

elif [ $passone != $passtwo ];
then
	echo 'La contraseña no coincide'
fi
