#!/bin/bash
clear
echo -e "\033[1;36mINSTALANDO O SINCRONIZADOR GESTOR-SSH\033[0m"
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
clear
echo -e "\033[1;36mPOR FAVOR AGUARDE...\033[0m"
if [[ -e "/opt/sshplus/licenca.txt" ]]; then
crack=$(cut -d"'" -f2 /opt/sshplus/licenca.txt) > /dev/null 2>&1
fi
sleep 1.5
echo -e "\033[1;36mVALIDANDO UMA LICENÇA...\033[0m"
rm *.zip > /dev/null 2>&1
apt install unzip -y > /dev/null 2>&1
wget github.com/SrCarrara/SincAI/tree/SincAI/sincarm/sshplus.zip.001 > /dev/null 2>&1
wget github.com/SrCarrara/SincAI/tree/SincAI/sincarm/sshplus.zip.002 > /dev/null 2>&1
wget github.com/SrCarrara/SincAI/tree/SincAI/sincarm/sshplus.zip.003 > /dev/null 2>&1
cat sshplus.zip* > monitor.zip && zip -F monitor.zip > /dev/null 2>&1
rm -rf /opt/sshplus > /dev/null 2>&1
unzip monitor.zip -d  /opt/sshplus/ > /dev/null 2>&1
chmod -R 777 /opt/sshplus > /dev/null 2>&1
sleep 1
if [[ -e "/opt/sshplus/licenca.txt" ]]; then
sed -i "s;TWYT-PCIA-QF3G;$crack;g" /opt/sshplus/licenca.txt > /dev/null 2>&1
fi
clear
service ssh restart
echo -e "\n\033[1;32mCONCLUÍDO!\033[0m"
sleep 3
clear
echo -e "\033[1;36mENTRE NO PAINEL WEB E CRIE UMA CONTA SSH PRA VER SE ESTÁ TUDO OK!\033[0m"
sleep 5
cat /dev/null > ~/.bash_history && history -c && clear
rm *.html > /dev/null 2>&1
rm *.zip > /dev/null 2>&1
rm *.001 > /dev/null 2>&1
rm *.002 > /dev/null 2>&1
rm *.003 > /dev/null 2>&1
clear