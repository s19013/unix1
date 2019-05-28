sudo find /var -type f  |xargs sudo  du| sort -rn -k 1|head -5
