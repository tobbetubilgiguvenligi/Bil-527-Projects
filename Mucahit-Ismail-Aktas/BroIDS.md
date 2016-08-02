# BroIDS Kurulum ve Kullaným Klavuzu
***
### 1) BroIDS Nedir?
**BroIDS** ilk baþlarda **Vern Paxson** tarafýndan C++ dilinde geliþtirilmeye baþlanan, daha sonra açýk kaynak hale gelerek herkesin katkýda bulunduðu Linux tabanlý bir **að trafiði analiz ve müdahale** yazýlýmýdýr. **Bro**'nun adý, "Big Brother" yani "Büyük Kardeþ"ten (Big Brother, siber güvenlik dünyasýnda genel olarak NSA'in lakabýdýr) gelmektedir. "Büyük Kardeþ"in bizi hep izlediði varsayýmýndan esinlenilerek bu isim verilmiþtir. BroIDS'in piyasada benzer iþlevlere sahip diðer yazýlýmlardan ayýrt edici özelliði, yüksek "throughput" seviyelerinde (Gigabitler) çalýþabilmesidir.

Bro yazýlýmý :
* Saldýrý Tespit Sistemi
* Saldýrý Engelleme Sistemi
* Að trafiði izleme

amaçlarý doðrultusunda kullanýlabilmektedir.

Fakat biz bu yazýda **Saldýrý Tespit Sistemini** inceleyeceðiz.
***
### 2) Kurulum

BroIDS kurmak için öncelikle bir Linux sisteminde olmalýsýnýz. 

Kuruluma baþlamadan önce sisteminizin **güncel** olmasý gerekir. Dolayýsýyla, komut satýrýnýza : 

> sudo apt-get update && apt-get upgrade

yazarsanýz sisteminiz güncellenir. Daha sonra, Bro'nun bilgisayarýnýzda çalýþabilmesi için önceden yüklü olmasý gereken paketleri yüklemelisiniz. Bunun için :

> sudo apt-get install cmake make gcc g++ flex bison libpcap-dev libssl-dev python-dev swig zlib1g-dev

yazarsanýz bütün gerekli paketler indirilecektir. Artýk Bro'yu indirmek için sistemimiz hazýr.

Þimdi, Bro'yu indirmek istediðiniz dizine gidin. Örneðin, 

> cd ~/ids/

Bro yazýlýmý açýk kaynaklý olduðundan açýk kaynak yazýlýmlarýn bulunduðu Git sitesinde de bir deposu (repository) bulunmaktadýr. Dolayýsýyla yazýlýmý indirmek için sadece o depodaki dosyalarý bilgisayarýmýza indirmemiz yeterlidir. Bunun için komut satýrýnýza :

> git clone --recursive git://git.bro.org/bro

yazýn. Bro, otomatik olarak bulunduðunuz dizine indirlecektir. Dosyalar elimizde olduðuna göre þimdi kuruluma geçebiliriz. Öncelikle indirdiðimiz Bro klasörüne gitmemiz gerekiyor. Eðer hala ayný dizinde iseniz komut satýrýna :

> cd bro

girin. Doðru klasörde olup olmadýðýnýzý anlamak için "_ls_" komutu girin. Aþaðýdakine benzer bir çýktý almanýz gerekir : 

```sh
root@kali:~/bro# ls
aux              build    CMakeLists.txt  doc       man   README      src
bro-config.h.in  CHANGES  configure       INSTALL   NEWS  README.rst  testing
bro-path-dev.in  cmake    COPYING         Makefile  pkg   scripts     VERSION
```

Daha sonra kuruluma baþlamak için :

> ./configure && make && make install

yazýn. Sonra kurulumunuz baþlar. Tercihen, Bro'yu kuracaðýnýz dizini belirlemek istiyorsanýz "- -prefix" parametresi eklemeniz gerekir. Örnek : 

> ./configure --prefix=/etc/bro && make && make install

Eklemezseniz otomatik olarak "/usr/local/bro" klasörüne kurar.

Kurulumunuz bitince Bro kullanýma hazýrdýr.

Son olarak Bro'yu her dizinden komut satýrýndan çalýþtýrabilmek için "PATH"e ekleriz (eðer - -prefix parametresini eklemediyseniz) :

> export PATH=/usr/local/bro/bin:$PATH

### 3) Kullaným
***
##### a) broctl

Bro, yazýlýmý kontrol etmek için bir kontrol betiðine (script) sahiptir ; **broctl**

Komut satýrýna :

> broctl

girin ve Bro arayüzüyle karþýlaþacaksýnýz. Burada :

> help

komutu girerseniz size yardýmcý olacak, hangi komutlarý girebileceðinizi yazan ekran gelir. Komut satýrýna :

> start 

girin. Bro bu komut sonrasýnda çalýþýr duruma geçer. Emin olmak için : 

> status

komutunu girin. Bro'nun prosesi (process) hakkýnda bilgi alacaksýnýz.

Bro þu anda paketleri yakalayýp içerisinde zaten bulunmakta olan imzalara yönelik alarmlar üretmekte.

Birkaç komut örneði :

```sh
stop        # Bro'yu durdurur
update      # Konfigürasyon dosyalarýný günceller
restart     # Bro'yu yeniden baþlatýr
exit        # broctl'den çýkar
diag        # Herhangi bir sorun çýkýnca loglarý bu komutla görebilirsiniz
```
##### b) Loglar

Bro'nun ürettiði loglarý görebilmek için önce **broctl**'den çýkýn :

> exit

Þimdi, Bro'nun ürettiði loglara gözatmak için aþaðýdaki komut ile internetten bir dosya indirin : 

> wget www.testmyids.com

Sonra Bro'yu kurduðunuz dizindeki "logs" klasörüne gidin :

> cd /usr/local/bro/logs/

Burada :

> ls

komutunu çalýþtýrýn. Çýktý olarak þu ana kadar üretilen loglarýn tarih olarak ayýrt edilmiþ olacaðýný ve kaydetmekte olduðunuz trafik loglarýný "current" klasörü içinde göreceksiniz :

> cd current

Sonra :

> ls

Burada kategorilere ayrýlmýþ log dosyalarýný göreceksiniz (http.log, dns.log, weird.log, conn.log... vb.). Herhangi birini incelemek için, örneðin :

> less http.log

komutunu girin. Burada Bro'nun ürettiði http loglarýný görmektesiniz. Bro herhangi bir zararlý veya dikkate deðer paket yakalarsa bunu notice.log içerisine kaydeder.

##### c) Ýmzalar

Bro, imzalarý için kendine özgü bir dile sahiptir. Örnek bir imza dosyasýnýn içeriðine bakmak istiyorsanýz aþaðýdaki komutu girin :

> less /usr/local/bro/share/bro/base/protocols/dhcp/dpd.sig

Karþýnýza buna benzer bir ekran gelir :

```
signature dhcp_cookie {
  ip-proto == udp
  payload /^.*\x63\x82\x53\x63/
  enable "dhcp"
}
```

Bu imza dhcp paketleri için yazýlmýþtýr. Ýmzanýn anlamý :
* Protokolü UDP olan
* paketin içerik (payload) kýsmýnda "/^.*\x63\x82\x53\x63/" yani "cSc" gibi bir þey varsa
* Bro'nun içinde var olan dhcp protokol analizcisini etkinleþtir

Ýmzalarýn payload kýsmý, iki tane "/" karakteri arasýndaki "regular expression"larý algýlar.

Kendi imzamýzý yazmayý öðrenmek istiyorsak Bro'nun https://www.bro.org/sphinx/frameworks/signatures.html sitesini ziyaret edebiliriz.

Bro, imzalarýný /usr/local/bro/share/bro/base/protocols/ dizininin alt klasörlerinde tutuyor. Bu klasöre gidersek :

> cd /usr/local/bro/share/bro/base/protocols/

ve 

> ls

çalýþtýrýrsak, bazý protokolleri görürüz (http, ftp, dchp vb.) bunlardan herhangi birine girince :

> cd http

ve

> ls

burada http protokolünü analiz etmek için kullanýlan dosyalar var. Bunlardan "sig" uzantýlý dosya imzalarýn (signature) olduðu dosyadýr. Basit bir imza yazacak olursak :

> nano dpd.sig

dosyada görebileceðiniz gibi önceden yazýlmýþ imzalar var. Bir tane basit bir imza ekleyecek olursak :

```
signature imza {

  ip-proto == tcp
  dst-port == 80
  event "basarili"

}
```

Bu imza :
* Protokol TCP ise
* Hedef portu 80 ise
* Alarm üretir ve mesajýný "basarili" olarak belirler

Þimdi imzamýzý görmesi için Bro'yu baþtan baþlatmamýz gerekli : 

> broctl restart

Eðer Bro baþlarken hata oluþursa yazým hatalarýný kontrol edin.

Daha sonra alarm üretebilecek bir paket alýþ-veriþinde bulunalým :

> wget www.google.com

Ýmzamýzýn çalýþýp çalýþmadýðýný görebilmek için daha önce baktýðýmýz http.log dosyasýna bakalým : 

> cat /usr/local/bro/logs/current/notice.log && grep -i --color basarili

Bu komutu giridiðinizde karþýnýza üretilen alarm ve detaylarý çýkmalýdýr.

Bu arada dikkat ettiyseniz "notice.log" dosyasý oluþmuþ. Öncesinde log dosyalarýna baktýðýmýzda yoktu. Bunun nedeni Bro'nun bir imzaya uyan paket görüp tehdit olarak "notice.log"a eklemesidir.

Baþka bir imza yazacak olursak :

```
signature karaliste {

  ip-proto == tcp
  dst-ip == 104.154.89.105
  event "saldiri"

}
```

Bu imzada :
* Protokol TCP ise
* Hedef IP karalisteye (blacklisting) aldýðýmýz IP'lerden biriyse
* Alarm üretir ve mesajýný "saldiri" olarak tanýmlar

Bu imzayý aþaðýdaki komutla yakalabiliriz :

> wget www.badssl.com

Baþka bir imza örneði :

```
signature LAND-sig {

  same-ip
  event "LAND saldirisi!"

}
```

Bu imzada ise sistem, LAND saldýrýsýný yakalýyor. Hedef ve kaynak IP adresi eþit ise "LAND saldirisi!" mesajlý bir alarm üretir.

Son bir imza örneði ise :

```
signature attack-sig {
    ip-proto == tcp
    dst-port == 80
    payload /.*root/
    event "root"
}
```

Bu imza :
* TCP kullanýyorsa
* Hedef port 80 ise
* Ýçeriðinde ".*root" olan
* Paket gördüðünde mesajý "root" olan bir alarm üretir.


