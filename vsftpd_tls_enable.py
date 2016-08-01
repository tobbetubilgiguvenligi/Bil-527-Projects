#!/usr/bin/python
import fileinput
from shutil import copyfile

copyfile("/etc/vsftpd.conf", "/etc/vsftp.conf.old")

for line in fileinput.input('/etc/vsftpd.conf', inplace=True):
        print line.rstrip().replace('ssl_enable=NO','ssl_enable=YES')

with open('/etc/vsftpd.conf','ab') as fp:
        fp.write('allow_anon_ssl=NO\n')
        fp.write('force_local_data_ssl=YES\n')
        fp.write('force_local_logins_ssl=YES\n')
        fp.write('ssl_tlsv1=YES\n')
        fp.write('ssl_sslv2=NO\n')
        fp.write('ssl_sslv3=NO\n')
        fp.write('require_ssl_reuse=NO\n')
        fp.write('ssl_ciphers=HIGH\n')

fp.close()

print("vsftpd_tls_enable islem tamamlandi. Eski yapilandirma dosyasi /etc/vsftpd.conf.old olarak kaydedildi.")
