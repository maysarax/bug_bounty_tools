#!/bin/bash
# Bug Hunter 101 Tools


# Check Root Privileges
if [[ $EUID -ne 0 ]]; then
  echo "You must be a root user" 2>&1
  exit 1
else
  mount /dev/sdb1 /mnt/disk2
fi


#printf "\x1b[32m ---> [ Update Your Linux Distro ]\\x1b[0m\n";
#apt-get update
#apt-get upgrade

printf "\x1b[32m ---> [ Install Requirements  ]\\x1b[0m\n";
sudo apt-get install -y git
sudo apt-get install rename
apt-get install python-pip
sudo apt-get install -y python3-pip
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev

printf "\x1b[32m ---> [ Don't forget to set up AWS credentials!   ]\\x1b[0m\n";
apt install -y awscli


sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools

printf "\x1b[32m ---> [ installing JSParser   ]\\x1b[0m\n";

git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
sudo python setup.py install



printf "\x1b[32m ---> [ Install SSL Testing Tools   ]\\x1b[0m\n";


printf "\x1b[32m ---> [   a2sv ]\\x1b[0m\n";
git clone https://github.com/hahwul/a2sv.git
cd a2sv
pip install -r requirements.txt


printf "\x1b[32m ---> [ Install Port Scan   ]\\x1b[0m\n";


printf "\x1b[32m ---> [ lazyrecon   ]\\x1b[0m\n";
git clone https://github.com/nahamsec/lazyrecon.git

printf "\x1b[32m ---> [   nmap ]\\x1b[0m\n";
apt-get install nmap

printf "\x1b[32m ---> [   masscan ]\\x1b[0m\n";
git clone https://github.com/robertdavidgraham/masscan


printf "\x1b[32m ---> [ Install DNS Discovery & Sub-domain   ]\\x1b[0m\n";


printf "[!] Sublist3r is a python tool designed to enumerate subdomains of websites using OSINT\n\n"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip install -r requirements.txt

printf "\x1b[32m ---> [   brutesubs ]\\x1b[0m\n";
printf "[!] An automation framework for running multiple open sourced subdomain bruteforcing tools (in parallel) using your own wordlists via Docker Compose\n\n"
git clone https://github.com/anshumanbh/brutesubs.git

printf "\x1b[32m ---> [ cloudflare_enum  ]\\x1b[0m\n";
printf "[!] Cloudflare DNS Enumeration Tool for Pentesters\n\n"
git clone https://github.com/mandatoryprogrammer/cloudflare_enum

printf "\x1b[32m ---> [  censys.py ]\\x1b[0m\n";
printf "[!] Quick and Dirty script to use the Censys API to query subdomains of a target domain\n\n"
git clone https://gist.github.com/anshumanbh/96a0b81dfe318e9e956013209e178fa9


printf "\x1b[32m ---> [   knock ]\\x1b[0m\n";

sudo apt-get install python-dnspython
git clone https://github.com/guelfoweb/knock.git

printf "\x1b[32m ---> [  teh_s3_bucketeers  ]\\x1b[0m\n";
git clone https://github.com/tomdev/teh_s3_bucketeers.git

printf "\x1b[32m ---> [  virtual-host-discovery  ]\\x1b[0m\n";
git clone https://github.com/jobertabma/virtual-host-discovery.git

printf "\x1b[32m ---> [ installing bash_profile aliases from recon_profile   ]\\x1b[0m\n";

git clone https://github.com/nahamsec/recon_profile.git
cd recon_profile
cat bash_profile >> ~/.bash_profile
source ~/.bash_profile


printf "\x1b[32m ---> [  massdns ]\\x1b[0m\n";
printf "[!] A high-performance DNS stub resolver\n\n"
git clone https://github.com/blechschmidt/massdns

printf "\x1b[32m ---> [ downloading list subdomains ]\\x1b[0m\n";
printf "[!] A list with a lot of subs\n\n"
git clone https://gist.github.com/jhaddix/86a06c5dc309d08580a018c66354a056

printf "\x1b[32m ---> [  GoBuster ]\\x1b[0m\n";
printf "[!] Directory/file & DNS busting tool written in Go\n\n"
git clone https://github.com/OJ/gobuster


printf "\x1b[32m ---> [ Subdomain Takeover   ]\\x1b[0m\n";


printf "\x1b[32m ---> [   subjack ]\\x1b[0m\n";
git clone https://github.com/haccer/subjack.git

printf "\x1b[32m ---> [ aquatone   ]\\x1b[0m\n";
git clone https://github.com/michenriksen/aquatone.git

printf "\x1b[32m ---> [ autoSubTakeover  ]\\x1b[0m\n";
printf "[!] A tool used to check if a CNAME resolves to the scope adress\n\n"
git clone https://github.com/JordyZomer/autoSubTakeover

printf "\x1b[32m ---> [ HostileSubBruteforcer  ]\\x1b[0m\n";

printf "[!] This app will bruteforce for exisiting subdomains\n\n"
git clone  https://github.com/nahamsec/HostileSubBruteforcer

printf "\x1b[32m ---> [ tko-subs ]\\x1b[0m\n";
printf "[!] A tool that can help detect and takeover subdomains with dead DNS records\n\n"
git clone https://github.com/anshumanbh/tko-subs


printf "\x1b[32m ---> [ SandCastle ]\\x1b[0m\n";
printf "[!] Python script for AWS S3 bucket enumeration\n\n"
git clone https://github.com/yasinS/sandcastle

printf "\x1b[32m ---> [ gitrob ]\\x1b[0m\n";
printf "[!] Reconnaissance tool for GitHub organizations\n\n"
git clone https://github.com/michenriksen/gitrob

printf "\x1b[32m ---> [ truffleHog]\\x1b[0m\n";
printf "[!] Searches through git repositories for high entropy strings, digging deep into commit history\n\n"
git clone https://github.com/dxa4481/truffleHog


printf "\x1b[32m ---> [ Discovery Directory   ]\\x1b[0m\n";


printf "\x1b[32m ---> [ dirsearch   ]\\x1b[0m\n";
git clone https://github.com/maurosoria/dirsearch.git


printf "\x1b[32m ---> [ Fingerprinting Tools    ]\\x1b[0m\n";


printf "\x1b[32m ---> [   whatweb ]\\x1b[0m\n";
git clone https://github.com/urbanadventurer/whatweb.git

printf "\x1b[32m ---> [   wafw00f ]\\x1b[0m\n";
git clone https://github.com/EnableSecurity/wafw00f.git

printf "\x1b[32m ---> [ ReconCat   ]\\x1b[0m\n";
git clone https://github.com/daudmalik06/ReconCat.git


printf "\x1b[32m ---> [ Web Application vulnerability Scanner   ]\\x1b[0m\n";


printf "\x1b[32m ---> [  sqlmap  ]\\x1b[0m\n";
git clone https://github.com/sqlmapproject/sqlmap.git

printf "\x1b[32m ---> [ tplmap   ]\\x1b[0m\n";

printf "[!] Code and Server-Side Template Injection Detection and Exploitation Tool\n\n"
git clone https://github.com/epinna/tplmap.git

printf "\x1b[32m ---> [ LFISuit   ]\\x1b[0m\n";
git clone https://github.com/D35m0nd142/LFISuite.git

printf "\x1b[32m ---> [  race-the-web  ]\\x1b[0m\n";
git clone https://github.com/insp3ctre/race-the-web.git

printf "\x1b[32m ---> [  wpscan  ]\\x1b[0m\n";
git clone https://github.com/wpscanteam/wpscan.git

printf "\x1b[32m ---> [  joomscan  ]\\x1b[0m\n";
git clone https://github.com/rezasp/joomscan.git

printf "\x1b[32m ---> [  CMSmap  ]\\x1b[0m\n";
git clone https://github.com/Dionach/CMSmap.git

printf "\x1b[32m ---> [  GitTools  ]\\x1b[0m\n";
git clone https://github.com/internetwache/GitTools.git

printf "\x1b[32m ---> [ weevely3  ]\\x1b[0m\n";
git clone https://github.com/epinna/weevely3.git

printf "\x1b[32m ---> [ lazys3  ]\\x1b[0m\n";
git clone https://github.com/nahamsec/lazys3.git

printf "\x1b[32m ---> [  webscreenshot  ]\\x1b[0m\n";
git clone https://github.com/maaaaz/webscreenshot.git

printf "\x1b[32m ---> [  EyeWitness  ]\\x1b[0m\n";
printf "[!] EyeWitness is designed to take screenshots of websites, provide some server header info, and identify default credentials if possible\n\n"
git clone https://github.com/ChrisTruncer/EyeWitness

printf "\x1b[32m ---> [  Parameth ]\\x1b[0m\n";

printf "[!] This tool can be used to brute discover GET and POST parameters\n\n"
git clone https://github.com/maK-/parameth


printf "\x1b[32m ---> [ Ground-Control  ]\\x1b[0m\n";
printf "[!] A collection of scripts that run on my web server\n\n"
git clone https://github.com/jobertabma/ground-control

printf "\x1b[32m ---> [ Sleepy-Puppy  ]\\x1b[0m\n";
printf "[!] Sleepy Puppy XSS Payload Management Framework\n\n"
git clone https://github.com/Netflix/sleepy-puppy

printf "\x1b[32m ---> [ XSSHunter  ]\\x1b[0m\n";
printf "[!] The XSS Hunter service - a portable version of XSSHunter.com\n\n"
git clone https://github.com/mandatoryprogrammer/xsshunter


printf "\x1b[32m ---> [ Commix  ]\\x1b[0m\n";
printf "[!] Automated All-in-One OS command injection and exploitation tool\n\n"
git clone https://github.com/commixproject/commix



printf "[*] Plugins for Burp Suite\n"
printf "[+] VulnersCom: https://github.com/vulnersCom/burp-vulners-scanner\n"
printf "[+] BackSlash-powered-scanner: https://github.com/PortSwigger/backslash-powered-scanner\n"
printf "[+] Header Checks: https://github.com/eonlight/BurpExtenderHeaderChecks\n"
printf "[+] pyschPATH: https://github.com/ewilded/psychopath\n"

