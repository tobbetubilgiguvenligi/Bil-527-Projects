
#VPN ve OpenVPN nedir?

**VPN(Virtual Private Network/Sanal Özel Ağ)** internet üzerinden şifreli ve güvenli olarak veri iletişimi sağlanılmasına ortam hazırlayan bir teknolojidir. Aynı zamanda ISP tarafından yasaklanan sitelere erişilmesini sağlar. VPN sayesinde internet kullanılarak kurumsal ağların birbirine bağlanması daha düşük maliyetlerde gerçekleştirilir. VPN sayesinde kurumsal ağlarda firewall arkasında çalışanlar güvenli bir iletişim ortamı elde ederler.

İki tip VPN teknolojisi bulunur. Bunlar *“Remote Access VPN”* ve *"Site-to-site VPN”* olarak geçer. *Remote Access VPN*’i, farklı lokasyonlardaki şubeleri merkeze bağlamak ya da farklı yerlerde bulunan çalışanların kurum ya da firma ağına istedikleri her yerden güvenli iletişim elde etmeleri için kullanılır.

*Site-to-site VPN* ise farklı firmaların birbirleri ile güvenli iletişim kurmaları amacıyla oluşturulur. Aynı zamanda *Remote Access VPN* de olduğu gibi kurum şubelerinin merkez ağa bağlanması sağlanır bu VPN yapısında iki tarafta VPN sunucu bulunur. 

OpenVPN açık kod yazılımı olarak gerçekleştirilmiş bir VPN yazılımıdır. Birçok platformda çalışabilmektedir. GPL ile lisanslanmıştır. Sunucu ve istemci tarafı bulunmaktadır. SSL/TLS protokollerini kullanarak OSI 2. Ve 3. Katman seviyesinde şifreli ağ erişimi sağlar. Noktadan noktaya ya da köprü modu ile çalışabilmektedir. OpenSSL kütüphanesinin sağladığı şifreleme, yetkilendirme, sertifika oluşturma özelliklerinden faydalanır. Aktif ve pasif saldırılara karşı güvenliği sağlamaktadır. Tüm güvenlik duvarları, vekil sunucular, nat üzerinden sorunsuz olarak tünelleme imkânı sağlar. İstenildiği takdirde GUI ile yönetim imkânı sağlar. Hem kolay kurulur hem de birçok işletim sistemi ile uyumlu olarak çalışan modüler bir yapısı bulunur. Tüm trafik LZO Kütüphanesi kullanılark gerçek zamanlı olarak sıkıştırılmaktadır. Kablosuz ağlar için güvenli erişim imkânı sağlar. Mobil ve gömülü sistemleri de desteklemektedir. Kısa süreli bağlantı kesilmelerinde ve IP değişimlerinde kullanılan uygulamaya bağlı olarak bağlantılar devam ettirilmektedir. Bağlantı sağlanabilmesi için güvenlik duvarında tek bir port’un açık olması yeterlidir. Scripting imkânlarıyla yüksek esneklik sağlanır. OpenVPN SSL/TLS protokollerini kullandığı için Ipsec gibi işletim sisteminin çekirdeğinde temel değişiklikler gerektirmez.

#OpenVPN Nasıl Çalışır?

OpenVPN’i kurduğunuz ve çalıştırdığınız anda sisteminize tun0 adında bir ağ arabirimi eklenir. Tun0 sanal bir ağ arabirimidir. Bu ara birim üzerinden gönderilen paketler şifrelenir ve kullanılmakta olan gerçek ağ arabirimlerine yönlendirilir. OpenVPN OSI 2.ve 3. Katmanlarında çalışır ve paketleri bu katmanlardayken şifreleyebilir. OpenVPN kurulumu sunucu-istemci ya da noktadan noktaya olmak üzere iki şekilde yapılabilir. İki cihaz arasında güvenli bağlantı kurulması isteniyorsa, noktadan noktaya tercih edilir. Sertifika kullanılmadan sadece noktadan noktaya bağlantıda sadece iki uçta kullanılan parola bilgisi ile iletişim sağlanabilir. Sunucu ve istemci modelinden ise birden fazla bilgisayarların sunucu ile bağlantısı gerçekleştirilir. İstemciler izin verildiği takdirde aralarında sunucu üzerinden iletişim sağlanır. Her istemci ve sunucu arasındaki bağlantılar yapılırken sertifika kontrolü yapılır. Sertifika kullanımı güvenliği arttırır.

#Kali üzerine OpenVPN Kurulumu

Aşağıda Kali üzerine OpenVPN’nin nasıl kurulduğu, kullanıcı ve sunucular için nasıl sertifika ve key oluşturulduğu bahsedilir.

*1.* İlk önce sistemin güncellemesi aşağıdaki komutlar yardımıyla yapılır.
```
$ sudo apt-get update
$ sudo apt-get upgrade
```
**Not:** Bundan sonra tüm komutlar root kullanıcısı olarak çalıştırılır.

*2.* OpenVPN yazılımının kurulumunda gerekli paketler aşağıdaki komut ile kurulur.
```
$ sudo apt-get install openvpn easy-rsa
```
# Sertifikaların Gereksinimi ve Kullanım Adımları

Sertifikalı bağlantılar sayesinde çok sayıda bilgisayar birbirine güvenilir olarak bağlanır. Sertifikaların kullanılmasının nedeni trafiğin SSL ile şifreli olarak gönderilebilmesi sağlamaktır.

**Sertifikalı Bağlantı Çalışma Mekanızması:**

* Her bilgisayarın sertifikası tek bir **sertifika otoritesi (certificate authority-CA)** tarafından imzalanır. 

* Birbirleri ile iletişime girecek bilgisayarlar birbirlerine sertifikalarını gönderir.

* Sertifikayı alan taraf sertifika otoritesine bakar ve sertifikanın gerçekliğini ve güvenilirliğini kontrol eder..

* Sertifikanın gerçekliği kanıtlandığında bundan sonra gerçekleşecek veri iletişimleri de aynı sertifika kullanılarak şifrelenir.

* Şifrelenmiş veriler, sertifika sahibi yani özel anahtarı bulunan kişi tarafından açılır.

#Sertifikaların Oluşturulması ve  Sertifika ile Yetkilendirme


 *2.* adımda gerçekleştirilen *openvpn* ve *easy-rsa* paket kurulumları tamamlandıktan sonra, sertifika oluşturmak için kullanılacak dosyaları *"/etc/openvpn"* dizini altına taşımak için aşağıdaki adımlar gerçekleştirilir. 
 
Openvpn içerisinde, sertifikaların kolaylıkla oluşturulabilmesi için bazı kodlar hazır olarak gelir. Bu kodlar Kali içerisinde */usr/share/easy-rsa/* * dizininde bulunur.

*3.*
```
$ sudo su

$ mkdir /etc/openvpn/easy-rsa/

$ sudo cp -R /usr/share/easy-rsa/* /etc/openvpn/easy-rsa
```

İlk komutta root kullanıcısına geçilir ve işlemlerin root yetkisi ile yapılması sağlanır. 2. komutta */etc/openvpn/easy-rsa/* dizini oluşturulur ve 3. komutta */usr/share/easy-rsa/* dizininde bulunan içerik, oluşturulan dizine kopyalanır.

Komutların çalışması sırasında aşağıdaki gibi bir hata alınırsa *easy-rsa* klasörünü içeren dosyalar program yüklenir eksik gelmiştir.

*cannot stat `/usr/share/easy-rsa/`: No such file or directory*

Böyle bir hata alındığında *easy-rsa* içerikleri tekrar indirilir ve */etc/openvpn/* klasörü altına kopyalanır.

*4.*
```
$ cd  /etc/openvpn/easy-rsa/
```
Dosyalar kopyalandıktan sonra *easy-rsa* dizinine gidilir.Bu dizin altında yeralan *vars* dosyası bir metin düzenleyicisi ile açılır. Sertifika oluşturulurken yer alacak verilerin hızlı bir şekilde yaratılması için kullanılan değerler bu dosyada bulunur. Aşağıda bulunan parametreler istenirse dafaultda verilen hali ile kalabilir ya da istenilen değerler girilebilir. Örnek amaçlı bazı değerler verilmiştir. Sadece dosyanın sonunda yer alan ön tanımlı parametlerin değiştirilmesi yeterlidir. Her sertifika için farklı değerler girelebilir. Yapılan değişiklikler tamamlandıktan sonra sayfayı kaydedilir.

Aşağıda görülen */etc/openvpn/easy-rsa/vars* dosyasındaki sertifika için gerekli bilgiler, örnekteki gibi düzenlenebilir.

```
$nano /etc/openvpn/easy-rsa/vars

export KEY_COUNTRY="TR"
export KEY_PROVINCE="Network Defense"
export KEY_CITY="ANKARA"
export KEY_ORG="TOBB ETU"
export KEY_EMAIL=networkdefense@gmail.com
export KEY_CN="NetworkDefense"
#x509 Subject Field
export KEY_NAME="NetworkDefense"
export KEY_OU="NetworkDefense"
```
Doldurmak istemediğiniz kısımları enter'a basarak atlayabilirsiniz.

* **Country Name:** Ülke bilgisi
* **State or Province Name:** Bölge bilgisi
* **City:** Şehir bilgisi
* **Org Name:** Organizasyon ismi
* **Org Unit Name:** Ogranizasyon Birim adı
* **Common Name:** Sunucu Hostname bilgisi 
* **Email Address:** E-mail adresi bilgisi

*5.* *var* dosyası yapılandırıldıktan sonra aşağıdaki komutlar sırası ile çalıştırılır ve sertifika otoritesi oluşturma aşaması gerçekleştirilir.
```
$ sudo su

$ cd /etc/openvpn/easy-rsa

$ source vars 

$ ./clean-all

$ ./build-ca
```
*build-ca* komutu çalıştırılırsa, *vars* dosyasında tanımlanan değişkenlere uygun olarak *ca anahtarları* oluşturulur.

# Server Sertifikası Hazırlama

*6.* Sertifika otoritesi yapılandırıldıktan sonra, *OpenVPN sunucusuna* ait anahtarlar oluşturulur. 

```
$ ./build-key-server testserver
```

**Not:** * /build-key-server* komutunda kullanılan testserver ismi isteğe bağlı olarak seçilebilir. Yalnız, server.conf dosyasında cert ve key parametrelerini set ederken *testserver.crt* ve *testserver.key* olacak şekilde testserver key ismi aynen kullanılmalıdır. Bu komutun çıktısı ise  *vars* dosyasında belirtilen parametrelere uygun olarak aşağıdaki gibi olur. Komut çalıştığında karşımıza gelen, */etc/openvpn/easy-rsa/vars* dosyasına girdiğimiz "TR, Network Defense, TOBBETÜ"gibi alanları enter butonu yardımıyla direkt geçebilirsiniz.
```
"Sign the certificate? [y/n]" ve "1 out of certificate requests certified, commit? [y/n]" alanlarına ise "y" yazarak cevaplamamız gerekmektedir.
```
*7.* Server sertifika ve anahtar oluşturma işlemi tamamlandıktan sonra, anahtar değiş tokuşu için kullanılacak *Diffie Hellman dosyası* oluşturulur. Bu dosya en baştada oluşturulabilir.

*Vars* dosyasının ilgili parametresinde değişiklik yapılmadığı için anahtar dizini *~/easy-rsa/key* dizini olur. Oluşturulan anahtar ve sertifika dosyaları bu dizin altında bulunur. *".key"* uzantılı dosyalar gizli dosyalardır ve özel anahtarı içerirler. *".crt"* uzantılı dosyalar ise dağıtılabilir ve herkes tarafından bilinebilir.

```
$ source vars
$ ./clean-all
$ ./build-dh
```
Artık server sertifika ve keyler oluşmuştur. Aşağıdaki komutlar kullanılarak oluşan sertifika ve keyler */etc/openvpn/* dizinine kopyalanır. Komutları çalıştırarak kopyalama işlemi gerçekleştirebilir.

```
$ cd keys/

$ sudo cp testserver.crt testserver.key ca.crt dh2048.pem  /etc/openvpn/
```

#Client Sertifikası Hazırlama

*8.*  Öncelikle server üzerinde client için sertifikaların oluşturulması gerekir. Crt, key, pem dosyalarını *"/etc/openvpn/"* dizinine kopyaladıktan sonra client sertifikası ve oluşturma işlemi aşağıdaki komutlar yardımı ile başlatılır.
```
$ cd /etc/openvpn/easy-rsa

$ source vars 

$ ./build-key  testclient
```
CA, server ve client için sertifika ve anahtarı oluşturma işlemi başarı ile tamamlanır. Bundan sonra her hangi bir client için sertifika ve anahtar üretmek istenilirse yukarıdaki komutlar kullanılır. 

*./build-key* komutu ile *“keys”* klasörü içinde *testclient.crt* ve *testclient.key* isimli dosyalar oluşur. testclient ismi istenilirse değiştirilebilir. 
Dikkat edilmesi gereken oluşturma işlemi sırasında keys dizini altında *ca.keys* ve *ca.crt* dosyalarının bulunmasıdır. Bütünlüğü bozmamak ve dosyaların taşınarak güvenliklerinin tehlikeye atılmaması için bütün oluşturma işlemlerinin tek bir bilgisayar üzerinde yapılması tavsiye edilir.

Bu iki dosyayı ve ilk başta oluşturduğumuz ca.crt dosyasını, uzak lokasyonda bulunan client makinesinin config klasörü içine kopyalamak gerekir.Bu işlem ayrıca zipleyip mail gönderilerekte yapılabilir. Aynı yöntemle birden fazla değişik isimlerde client oluşturulabilir..

Sertifika ile yetkilendirme yapılması için aşağıdaki dosyaların clienta kopyalanması gerekir.
```
1. /etc/openvpn/easy-rsa/keys/ca.crt
2. /etc/openvpn/easy-rsa/keys/testclient.crt
3. /etc/openvpn/easy-rsa/keys/testclient.key
```

Öncelikle dosyalar bir grup haline getirilir,bunun için tar komutu kullanılabilir. 
*" tar –cf clientsertifika.tar /etc/openvpn/ca.crt /etc/openvpn/easy-rsa/keys/testclient.crt /etc/openvpn/easy-rsa/keys/testclient.key"* 
*"clientsertifika.tar"* dosyası sftp yada scp ile client makineye gönderilir.

**NOT:** Taşıma işleminden sonra *testclient.crt* ve *testclient.key* dosyalarının serverdan kaldırılması gerekir. Silme işlemi yerine uzantısının değiştirmesi yeterli olur. Aşağıdaki komutlar dosyaların uzantılarını değiştirir.
```
$ sudo mv /etc/openvpn/easy-rsa/keys/testclient.crt etc/openvpn/easy-rsa/keys/testclient.crt_yedek
$ sudo mv /etc/openvpn/easy-rsa/keys/testclient.key etc/openvpn/easy-rsa/keys/testclient.key_yedek
```
###Komutların yaptıkları işlemlerin özeti:
```
1. Sertifikaları ve anahtarları oluşturmadan önce karşılıklı şifrelemenin gerçekleşebilmesi için bazı parametreler belirlenir. 

2. CA sertifikası ve anahtarı oluşturulur.

3. Server için gerekli sertifika ve anahtar çifti oluşturulur. Server adı testserver olarak isimlendirilir.

4. Diffie Hellman tekniği kullanılarak anahtar değişiminde kullanılacak dosya elde edilir.

5. Son olarakta testclient clientı için gerekli sertifika ve anahtar çifti oluşturulur.
```
#Konfigürasyon Dosyaları

Sertifikalar oluşturulduktan sonra bu sertifika ve anahtarları kullanacak ayar dosyalarının da yaratılması gerekir. Örnek ayar dosyalarının birer kopyası */usr/share/doc/openvpn/examples/sample-config-files* dizininde bulunur. *client.conf* ve *server.conf.gz* dosyaları uygun bir dizine kopyalanır, gz uzantılı dosya açıldıktan sonra *server.conf* dosyası aynı isimle *server.conf* ve *client.conf* dosyası aynı isimle *client.conf* olarak kopyalanır. Öncelikle *server.conf* dosyası ile ilgili ayarları yapalım.

###Serverın Yapılandırılması

*"/usr/share/doc/openvpn/examples/sample-config-files/"* dizininde bulunan *"server.conf.gz"* dosyasını *"/etc/openvpn/"* dizinine taşınır ve sıkıştırılmış dosya * "/etc/openvpn/"* dizininde açılır.

Server yapılandırma dosyalarının kopyalanması için aşağıdaki komutlar uygulanmalıdır.
```
$ sudo mkdir/etc/openvpn
$ sudo cd /etc/openvpn
$ sudo cp /usr/share/doc/openvpn/examples/sample-config-files/server.conf.gz /etc/openvpn
$ sudo cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf /etc/openvpn
$ sudo gzip –d /etc/openvpn/server.conf.gz

```
komutları kullanılır.

Gz dosyasını *"server.conf.gz”*, *"/etc/openvpn/"* dizininde açılırsa *"server.conf"* dosyası oluşur. *"server.conf"* dosyası *Openvpn sunucusunun* konfigürasyon dosyası olduğu için, aşağıda listelenen bilgilere ilgili alanlara dikkatli bir şekilde doldurulmalıdır.

Yanlış bir işlem yapılırsa openvpn servisi hata alır ve başlatılamama problemi ile karşılaşılır.
```
$sudo su
$nano /etc/openvpn/server.conf
```
**ÖRNEK:** *"server.conf"* dosyasında tanımlı olması gereken alanlar;

* UDP protokolünün 1194 nolu portundan gelen bağlantıları kabul etmesi için.
```
port 1194
proto udp
```
* Katman 3 bir tünel oluşturma için.
```
dev tun
```
* CA sertifikası *ca.crt*, server sertifikası *testserver.crt* ve server anahtarı *testserver.key* dosyalarıdır.

```
ca /etc/openvpn/ca.crt
cert /etc/openvpn/testserver.crt
key /etc/openvpn/testserver.key 
```
* Diffie-Hellman için dh2048.pem dosyasının kullanılması için.
```
dh /etc/openvpn/easy-rsa/keys/dh2048.pem
```
*  Client ile server arasında kurulacak ağda kullanılacak IP blogu için, IP adresleri 10.8.0.0 - 10.8.0.254 arasında dağıtılır.  

```
server 10.8.0.0 255.255.255.0
```
* Ek olarak girilebilecek ayarlar:

* Servera bağlanan clientların IP adreslerinin korunması ve her seferinde aynı ip adresinin atanması için gerekli bilgiler ipp.txt dosyasına yazılır.
```
ifconfig-pool-persist ipp.txt
```
* Bağlanan clientların birbirleriyle iletişim kurabilmesi için birbirini.
```
client-to-client 
```
* Bant genişliğini sınırlamak için. n değeri 100 bps ile 100 Mbps arasında olabilir. 
```
shaper n
```
 
* Clientların bütün internet trafiklerinin server üzerinden olmasını istenirse, server ayarları içine aşağıdaki komutunu koyulmalıdır. Ayrıca server üzerinden internete çıkış ayarları da yapılmalıdır. *"redirect-gateway"* komutu bütün trafiği yönlendirdiği için DHCP adresi alamama gibi sorunlara da yol açabilir. *"push “redirect-gateway def1 bypass-dhcp” "* ifadesi ile clientların default gateway olarak OpenVPN sunucusunu kullanabilecekleri belirtilir. Böylelikle client tarafından üretilen tüm trafik tünel içerisinden geçerek OpenVPN üzerinden pass edilir
```
push "redirect-gateway def1 bypass-dhcp"

```
*Komutları ile clientlara atanacak Dns sunucuların hangileri olduğu ayarlanır
```
push "dhcp-option DNS 8.8.8.8"
push "dhcp-option DNS 8.8.4.4"
````
* Bağlantı kurulduktan sonra, belli bir süre hatta veri aktarımı olmama durumunda bile bağlantının kesilmemesi için.
```
keepalive 10 120 

reneg-sec 0
```
* Bağlantılarda sıkıştırma kullanılması için
```
comp-lzo
```
* Sürekli kendini terkarlayan mesajların susturulması için

```
mute 20
```

* Server’a aynı anda bağlanabilecek client sayısı
```
max-clients 100
```
* *user* ve *group* parametlerinin *nobody* ve *nogroup* olarak ayarlanması openvpn servisinin *nobody* veya *nogroup* yetkilerine sahip diğer servislerde oluşabilecek açıklıklardan etkilenmemesi için tavsiye edilmez. OpenVPN için farklı bir kullanıcı ve grup oluşturulabilir.
```
user nobody
group nogroup
```
* verb modları 0- 6 arasında değişebilir 1-4 normal kullanım içindir.
```
verb 3
```
* Diğer direktiflerle ilgili tüm açıklamalar için */usr/share/doc/openvpn/examples/sample-config-files/server.conf* yolunda bulunan örnek yapılandırma dosyası incelenebilir.
```
persist-key
persist-tun
status openvpn-status.log
log-append openvpn.log 
client-config-dir client-configs
```

#OpenVPN  Client Bağlantı Yapılandırılması

* Client için ayar dosyasının hazırlanması gereklidir. Clientlar için birçok yetkilendirme yöntemi kullanılır. Sertifika bağlantılı yöntem anlatılmıştır. Öncelikle clienta OpenVPN kurulur. Ubuntu üzerinde openvpn kurulumu ve yapılandırma dosyasının oluşturulması için aşağıdaki komutlar uygulanmalıdır. Windows ve MAC için farklı client yazılımları da bulunur. Fakat yapılandırma dosyası içeriği tüm işletim sistemlerinde aynıdır.
Client makinede aşağıdaki komutlar çalıştırılarak OpenVPN client kurulumu yapılır.
```
$ sudo apt-get update
$ sudo apt-get install openvpn
$ sudo mkdir /etc/openvpn
$ sudo cd /etc/openvpn
$ sudo cp /usr/share/doc/openvpn/examples/sample-config-files/client.conf client.conf

```
* Sertifika tabanlı yetkilendirme için client yapılandırma dosyasında düzenlenmesi gerekli parametreler şunlardır.
```
Remote SERVER_IP 1194
ca /etc/openvpn/ca.crt
cert /etc/openvpn/testclient.crt
key /etc/openvpn/testclient.key
```

Windows bir makineden bağlanılacak ise aşağıdaki web adresinden uygun olan client versiyonu indirilir ve kurulur.
https://openvpn.net/index.php/open-source/downloads.html

linux client ile devam edilir. Client makineye openvpn client kurulumu yapıldıktan sonra aşağıda belirttilen dizinden *"client.conf"* dosyası *"/etc/openvpn/"* dizinine kopyalanır.
Ayrıca server üzerinde daha önceden "tar"lanıp oluşturulan *"clientsertifika.tar"* dosyasında bulunan sertifikalarda yine bu dizine *"/etc/openvpn"* çıkarılır. Bu işlemler aşağıda verilen komutların çalıştırılması ile gerçekleşir.
```
sudo cd /usr/share/doc/openvpn/examples/sample-config-files
sudo cp client.conf /etc/openvpn/.
```
*"Client.conf"* dosyasını *"/etc/openvpn/"* dizinine kopyaladıktan sonra *client.conf* dosyasında bulunan aşağıda belirtilen alanların düzenlemesi gerekir.

```
cd /etc/openvpn
sudo nano client.conf 
```
```
client
dev tun
proto udp
remote SERVER_IP 1194
resolv-retry infinite
nobind
persist-key
persist-tun
ca /etc/openvpn/ca.crt
cert /etc/openvpn/testclient.crt
keys /etc/openvpn/testclient.crt
ns-cert-type server
comp-lzo yes
verb 3
```

*client.conf* dosyası oluşturulduktan sonra openvpn sunucusuna bağlanılır. Aşağıdaki komutla vpn bağlantı gerçekleştirilir.
```
sudo openvpn /etc/openvpn/client.conf
```
#Ağ Trafiğinin Yönlendirilmesi

Client üzerindeki tüm trafiğin vpn üzerinden aktarılması için client yapılandırma dosyasına (*/etc/openvpn/client.conf*) aşağıdaki parametre eklenmelidir.
```
push "redirect-gateway def1"
```
Benzer bir parametrenin de server yapılandırma dosyasına  (*/etc/openvpn/server.conf*) eklenmesi gerekir.
```
push "redirect-gateway def1 bypass-dhcp"
```
Bu şekilde client openvpn sunucusuna bağlandığında 10.8.0.0 ağına dahil olur ve clienttaki tüm trafik bu ağa yönlendirilir. Serverın fiziksel olarak bağlı olduğu ağdaki diğer makinelere bağlanmak için server üzerinde nat ayarları yapılmalı ve yapılandırma dosyasına aşağıdaki parametre eklenmelidir. Serverın 192.168.1.0 ağına bağlı olduğunu varsayarsak sunucu yapılandırma dosyasına (*/etc/openvpn/server.conf*) şu parametre eklenmelidir.
```
push "route 192.168.1.0 255.255.255.0"
```

Server ve client ayarları yapılandırılmıştır.

* Yapmamız gereken işlem adımı port yönlendirmektir.

Modemlerde wan 1194 udp portuna gelen istekler içerideki VPN serverin statik ip adresine ve 1194 portuna yönlendirilmelidir. Bazı modemlerde nat menüsü altında port forwarding kısmından kolayca yapılabilir.

Eğer router varsa ve Server üzerindeki nat ayarları için aşağıdaki komutlar uygulanmalıdır. Komutlar aynı zamanda /etc/rc.local dosyasına eklenirse makine yeniden başlatıldığında da nat ayarları etkinleştirilir.
```
echo "1" > /proc/sys/net/ipv4/ip_forward 
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
iptables -A FORWARD -i eth0 -o tun0 -m state --state RELATED,ESTABLISHED -j ACCEPT iptables -A FORWARD -i tun0 -o eth0 -j ACCEPT
iptables-save 
exit 0
```
* Bu bölümde farklı iptables kuralları yazılabilir örneğin sadece aşağıdaki komutun uygulanması da yeterli olacaktır. VPN erişimi internet üzerindeki herhangi bir VPS sunucu ile gerçekleşiyorsa VPS'in IP adresine bağlı olarak şu şekilde nat yapılabilir.
```
echo "1" > /proc/sys/net/ipv4/ip_forward 
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -j SNAT --to-source VPS_IP_ADDRESS
iptables-save 
exit 0
```
#Programın Çalıştırılması

"server.conf" dosyasındaki alanları örnekteki gibi doldurduktan sonra openvpn servisi başlatılır. Bu işlem için aşağıdaki komut terminalde çalıştırılır.
```
$sudo service openvpn restart
Or 
$ /etc/init.d/openvpn restart 
```

* OpenVPN programı Ubuntu'nun paket deposundan yüklediğinde program daemon olarak çalışmaya başlar. Her açılışta çalıştırmak üzere ayarlar. Otomatik olarak başlarken okuması gereken ayar dosyaları /etc/openvpn dizini altına koyulur. Böylece her açılışta doğru ayarlar ile başlar.Öncelikle deamon sonlandırılır.
```
$ sudo /etc/init.d/openvpn stop
```
Tekrar server etkin hale getirilir.
```
$sudo openvpn server.conf 
```

Yukarıdaki komutu çalıştırdığımızda server ayarlamalarını yapar, gerekli dosyaları okur ve UDP 1194 potunu dinlemeye başlar. Çıktıları kontrol edilir. Eğer en sonda

```
Initialization Sequence Completed
```

verisi varsa işlem başarılı olmuş demektir. Eğer bu satırı görülmediyse, dosyalarınızın yerlerini ve ayar dosyalarınızı tekrar kontrol etmeniz tavsiye edilir. Çıktılar arasında sorunun nedeni bulunur.

Client tarafında ayar dosyası çalıştırılır:
```
$sudo openvpn client.conf 
```

Çıktılar arasında aşağıdaki satırlar varsa işlem başarılı ile tamamlanmış demektir.

```
Peer Connection Initiated with server.adresi:1194
...

Initialization Sequence Completed

```
Server tarafındaki ekranda bağlantı detaylarının ekrana yazıldığını görülür. Client tarafında yeni bir terminal ekranı açılır;
```
$ifconfig
```

komutu verilirse tun0 arabirimi için atanmış bir inet adresi görülür. Yukarıdaki ayarları aynen uyguladı iseniz bu adres büyük olasılıkla 10.8.0.x olacaktır. Clienttan servera yani 10.8.0.y adresine (*) ping atarak;
```
$ping 10.8.0.y
```
bağlantı test edilebilir. Testin çalışabilmesi için serverın ping isteklerine cevap vermesi gereklidir.


#OpenVPN Sunucu Firewall ve Routing Konfigürasyonu 

**Not:** Openvpn sunucumuzda firewall çalışıyorsa aşağıdaki komut ile firewall'da 1194 numaralı port açılır.
```
$sudo ufw allow 1194
$ufq status
```

Firewall'dan 1194 porta izin verilirse, openvpn'nin *"tun0"* adaptörü ile fiziksel network adaptörü *"eth0"*'ın birbirleri ile haberleşmesini, yani NAT'lama yapılmasını gerektirir. Öncelikle *"sysctl.conf"* dosyasında *"net.ipv4.ip_forward=1"* tanımını kontrol etmeliyiz.
```
$ sudo nano /etc/ sysctl.conf
“net.ipv4.ip_forward=1” olmalı
```
*"sysctl.conf"* dosyasında alanı kontrol ettikten sonra aşağıdaki komut ile *"10.8.0.0/24 subnetinden"* *"tun0"* dan gelen paketler fiziksel network cihazına *"eth0"*'a yönlenecektir. Yani *"Postrouting"* işlemi yapılır.
```
$ sudo /sbin/iptable –t nat –A POSTROUTING –s 10.8.0.0/24 –o eth0 –j MASQUERADE

$ sudo /sbin/iptables –A FORWARD –i eth0 –o tun0 –m state --state RELATED,ESTABLISH –j ACCEPT

$ sudo /sbin/iptables –A FORWARD –i tun0 –o eth0 –j ACCEPT
```
***Not:***  Openvpn servisi server başladığında otomatik çalışması için aşağıdaki komut kullanılmalıdır.
```
$ update-rc.d –f openvpn defaults 
```
**Not:** Server_IP gördüğünüz yerlere kendi serverınızın ip adresini yazmaya dikkat edin.

#KAYNAKLAR

[1]  https://openvpn.net/index.php/open-source/documentation/howto.html

[2]  https://openvpn.net/index.php/open-source/articles.html

[3]  https://www.digitalocean.com/community/tutorials/how-to-set-up-an-openvpn-server-on-ubuntu-14-04

[4]  http://www.olympos.org/howto-nasil/openvpn/openvpn-ile-vpn-uygulamalari-20220.html

[5]  http://fedoranews.org/contributors/florin_andrei/openvpn/

[6]  http://penguence.linux.org.tr/?~p=dergi&action=show&which=77

[7]  http://openvpn.net/index.php/documentation/howto.html

[8]. http://www.linuxakademi.org/2012/11/openvpn-sunucu-kurulumu-ve-istemci-yapilandirmasi.html
