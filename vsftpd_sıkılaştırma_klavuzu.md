# vsftpd Hakında
vsftpd GPL lisanslı *NIX systemler için geliştirilmiş bir FTP (File Transfer Protokol) sunucusudur. İsmini very secure (çok güvenli) FTP'den alan sunucu Güvenlik, Performans ve Stabilite özelliklerini sunmak konusunda iddialıdır. 
#### Özellikleri
  * Sanal IP yapılandırması
  * Sanal kullanıcılar
  * Bağımsız veya inetd çalışma özelliği
  * Kullanıcı bazlı yapılandırma
  * Kaynak bazlı IP yapılandırması
  * Kaynak bazlı IP kısıtlama
  * IPv6 Desteği
  * SSL Desteği
  * ve daha fazlası

Daha detaylı bilgi, performans analizleri, güvenlik analizleri için geliştiricinin sitesine [burdan](https://security.appspot.com/vsftpd.html) göz atabilirsiniz.
  redhat, suse, debian, freebsd, gnu, gnome, kde, kernel ve çok daha fazla açık kaynak organizasyonları FTP sunucu olarak vsftpd tercih etmektedir.

## vsftpd Sunucusu Sıkılaştırma Klavuzu
Bu klavuzda vsftpd sunucusunun sıkılaştırılması ve SSL/TLS desteğine kavuşturulması için adımlar anlatılacaktır. Bu adımları manuel olarak yapabileceğiniz gibi hem sıkılaştırma işlemi için hemde SSL/TLS desteği için hazırlanmış betikleri kullanmaznızda mümkündür.Kali Linux 2016-1 işletim sistemleri üzerinde test edilmiştir.

###vsftp Sunucusunun Kurulumu
Sıkılaştırma işlemi paket yöneticisi yardımıyla yüklenen vsftpd sunucusuna uygulanmıştır. Kaynak kod üzerinden derleme yaparak kurulum yapılmış sunucu için birçok adım aynı olsada değişiklik yapılacak yapılandırma dosyanının dizini değişiklik gösterebilir. vsftpd sunucusunu yüklemek için terminalden aşağıdaki komutu girmek yeterlidir.

    apt-get install vsftpd 


###vsftp Sunucusunun Sıkılaştırılması
Öncelikle kullanıcıların her işlem için özel olması güvenliği artıran politikalardan biridir. Bu sebeple bir ftp kullanıcısı oluşturarak bağlantıyı bu kullanıcı üzerinden gerçekleştirmek güvenliği artıran faktörlerden biri olacaktır. Bu işlem için önce kullanıcı oluşturalım.

    adduser ftpkullanıcısı
 
 ftpkullanıcısını ana dizinine root yetkisi atanmalıdır.
 
     sudo chown root:root /home/ftpkullanıcısı
 
 vsftpd sunucusunun dosya yükleme işlemini gerçekleştireceği ayrı bir dizini oluşturmamız gerkecek bu işlem için aşağıdaki komutlar girilmelidir.
 
     mkdir /home/ftpuser/dosyalar
     chown ftpkullanıcısı:ftpkullanıcısı /home/ftpkullanıcısı/dosyalar
 
Sıkılaştırma işlemini gerçekleştirebilmek için etc dizini altında vsftp sunucusunun yapılandırma dosyasında değişiklik yapılması gerekmektedir. Oluşturduğum vsftpd_hardening.py betik dosyası ile aşağıda anlatacağım işlemleri tek komutla yapmak mümkündür. Bunun için sadece süper kullanıcı yetkisiyle betiği çalıştırmak yeterlidir. Kali Linux root kullanıcısı ile çalıştığı için hiç bir komutun önüne sudo komutunu eklemedim. Betik indirildikten sonra çalışma yetkisi verilmeli ve çalıştırılmalıdır. Betik sadece ilk kurulum sonrası değiştirilmemiş yapılandırma dosyasında çalışır. Her hangi bir değişiklik yapılmış yapılandırma dosyasında farklı sonuçlar doğurabilir. Bu sebeple betik vsftp.conf dosyanın bir yedeğini etc dizini altında vsftpd.conf.old adı altında saklamaktadır.

    chmod 755 vsftpd_hardening.py 
    ./vsftpd_hardening.py

Ancak betiğin gerçekleştirdiği adımları tek tek uygulamak da mümkündür. Tercih ettiğiniz bir dosya editörü vasıtasıyla vsftpd.conf dosyasını açın.

   nano /etc/vsftp.conf
 
 FTP sunucuları dosya paylaşımı amaçlı geliştirildiğinden anonim girişlere izinlidir. Ancak sunucunuzu güven altına alabilmek için bu özelliğin kapatılması gerekmetedir bu sebeple _anonymous_enable_ değişkenini bulup "NO" yapın. Ön tanımlı olarak değer "NO" gelmektedir.
 
    anonymous_enable=NO
 
  Yerel kullanıcı yetkilendirmek için _local_enable_ değişkeni bulunarak yorum dışına alınduktan sonra "YES" olarak tanımlanmalıdır ve bu dizine kullanıcıların yazma hakkı elde edebilmeleri için _write_enable_ değişkenide "YES" olarak tanımlanmalıdır. Ön tanımlı olarak _local_enable_ değişkeni "YES" gelmektedir.  Ön tanımlı olarak _write_enable_ değişkeni yorum içerisinde gelmektedir.

    local_enable=YES
    write_enable=YES
 
 Son olarak _chroot_local_user_ değişkeni bulunmalı ve değeri YES olarak atanmalıdır. Böylece yerel kullanıcılar sunucuya bağlandıklarında sadece tanımlı dizine erişebilirler ve farklı dizinlerde yazma okuma ve görme gibi yetkileri olmaz. Ön tanımlı olarak _chroot_local_user_ değişkeni yorum içerisinde gelmektedir.
 
    chroot_local_user=YES

Ana başlıklar (Banner) bilgisayar korsanlarının bilgi toplama esnasında çalışan servisleri ve sürümlerini öğrenerek saldırı planlamada ki en büyük yardımcılarıdır. Bu sebeple vsftpd servisinin ana başlığını _#ftpd_banner=Welcome to blah FTP service._ değişkenini yorum dışına alarak "FTP Sunucusu"'na eşitleyelim. Ön tanımlı olarak _ftpd_banner_ değişkeni yorum içerisinde gelmektedir.

    ftpd_banner=FTP Sunucusu
 
 Standart log formatnı değiştirerek sıkılaştırma işlemimizi tamamlayabiliriz. Bunun için _xferlog_std_format_ değişkeni bulunarak "NO" değerine eşitlenmelidir. Ön tanımlı olarak _xferlog_std_format_ değişkeni yorum içerisinde gelmektedir.
 
    xferlog_std_format=NO

###vsftp Sunucusunun SSL/TLS Desteği Eklenmesi
FTP yapısı gereği clear text bir protokoldür. Yani paketler şifrelenmeden açık metin şekilde ağ üzerinde gönderilirler. vsftpd sunucusu secure FTP desteği sunmaktadır. Hatta 3.03 sürümüyle SSL/TLS iyileştirmeleri yapılmıştır. Bu adımda vsftpd sunucusuna SSL/TLS desteğini nasıl ekleyebileceğimizi anlatacağım. Anlattığım işlemleri gerçekleştiren vsftp_tls_enable.py betik dosyasını süper kullanıcı yetkisiyle çalıştırarak aşağıdaki işlemlerin tamamnı tek komutla tamamlayabilirsiniz. vsftpd_hardening betiğinde olduğu gibi bu betikte sadece vsftpd_hardening.py betiği çalıştırıldıktan sonra yapılandırma dosyanı doğru biçimde değiştirebilir. Bu yüzden mutasyonların önüne geçebilmek için vsftpd.conf yapılandırma dosyanın yedeği etc dizini altında vsftpd.conf.old dosyasına alnmaktadır. vsftpd servisi 3.0.3 sürümüyle beraber public/private anahtarlarını beraberinde getirmektedir. Bu yüzden yeni sertifika oluşturma gereği görülmemiştir. Ancak eski sürümlerin sıkılaştırması için sertifika oluşturmayı anlatacağım. Betik sertifika oluşturmak dışında tüm yapılandırma işlemlerini gerçekleştirmektedir. Önce betiğe çalışma yetkisi verdikten sonra süper kullanıcı yetkisiyle çaıştıralım.

    chmod 755 vsftpd_tls_enable.py
    ./vsftp_tls_enable.py

Öncelikle bir SSL sertifikası oluşturmamız gerekmekte bunun için  aşağıdaki komut girilerek işlemi tamamlayabiliriz.

    sudo openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
 
 Oluşturduğumuz yeni sertifika 1 yıl geçerliliği vardır ve _/etc/ssl/private/_ dizini altında bulunabilir.
 
 Tekrar vsftpd sunucusunun yapılandırma dosyasına girerek SSL/TLS desteğini etkinleştirmek için gerekli değişkenler tanımlanmalı ve eklenmelidir. Öncelikle sertifikamızın yerini sunucuya tanıtmalıyız bunun için _rsa_private_key_file_ değişkeni bulunmalı yoksa eklenmelidir ve değeri gerekli dizine eşitlenmelidir. Ön tanımlı olarak  _rsa_private_key_file_ değişkeni "/etc/ssl/private/ssl-cert-snakeoil.key" değerine eşit gelmektedir. Betik dosyası vsftpd servisinin 3.0.3 sürümü için geliştirildiğinden bu değişken ve sertifika değişkeni ön tanımlı değerleri bozulmadan kullanılmıştır.
 
     rsa_private_key_file=/etc/ssl/private/vsftpd.pem
 
 Bu adımdan sonra destek açılmalı ve SSL kullanımı zorunlu kılınmalıdır buyüzden aşağıdaki değişkenler varsa değerleri değiştirilmeli yoksa dosyaya eklenmelidir. 
 
    ssl_enable=YES
    allow_anon_ssl=NO
    force_local_data_ssl=YES
    force_local_logins_ssl=YES
 
 SSL/TLS'in son sürümü olan TLS desteği ile çalışmak çok daha güvenlidir bu yüzden sadece TLS değikeni YES olmaldır. Aşağıdaki starıları yapılandırma dosyanın sonuna ekleyerek bu özelliğe kavuşabiliriz.
 
     ssl_tlsv1=YES
     ssl_sslv2=NO
     ssl_sslv3=NO
 
 Son olarak aşağıdaki değişkenler yapılandırma dosyanıa eklenerek işlemi tamamlayacağız.
 
     require_ssl_reuse=NO
     ssl_ciphers=HIGH
 
 Artık yapılandırma dosyasını kaydederek çıkabiliriz.
 
 Tüm bu adımlar tamamlandığında nerdeyse güvenli bir FTP sunucusu kurmuş oluyoruz.
 Ömer Alper Karakuş
 151111032
