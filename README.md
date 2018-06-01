# kznnog_intro_to_netdevops

gentle intro to network automation @ kznnog 31 may 2018

scripts from demo are included and outlined below, 

1) inventory-rt -> grabs linetag, vendor, model, code version from configs in rancid
                
2) inventory-rt front end

3) check_guest_ssid.sh -> this is specific to a fortigate device, this script searches for an ssid called 'guest'

4) qos - this generates rate limit statements via a shell script, the front end grabs this info
          - qos_calc.sh -> shell script that does the calculation
          - index.php -> front end which displays the data
          
5) config generator front end -> https://github.com/brettrsa/config_generate



