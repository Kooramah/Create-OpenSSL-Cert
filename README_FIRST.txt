1. Before running CreateCert.bat update the file san.conf to change the FQDN or sites you'd want to assign the certificate
2. In the san.conf, do not touch anything but [alt_names] section. Here add the sites you'd want to assign your certificate. 
3. If you want to add more than one, add "DNS.2" on the next line. If more than 2 then add "DNS.3" and so on. Use "IP.#" if you'd like to use an IP Address.
4. Example:

DNS.1 = www.opswat.com
DNS.2 = www.supportlab.com
DNS.3 = www.opswatsupport.com
DNS.4 = www.CXTeamIsAwesome.com
IP.1 = 192.168.2.2
IP.2 = 10.10.10.1

5. Run CreateCert.bat and follow the prompts
