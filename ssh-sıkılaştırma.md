# SSH Sıkılaştırma Rehberi

SSH (Secure Shell) temel olarak uzaktan Linux sunuculara bağlanıp dosya transfer etmeyi veya uzaktan komut çalıştırmayı güvenli bir kanal üzerinden sağlayan açık kaynaklı bir ağ protokolüdür.

Bu yazıda ben sizlere bu protokolü çalıştırırken güvenliğini artırmaya yönelik olarak OpenSSH Server ile ilgili önlemleri açıklamaya çalışacağım.


1) Genellikle Linux sistemler varsayılan olarak bütün kullanıcıların ssh üzerinden bağlanabileceği şekilde gelirler. Tabi bu kullanıcılar arasında root kullanıcısı da vardır. Güvenliği bir kademe artırmak için root kullanıcısının uzaktan ssh bağlantısı yapmasını devre dışı bırakmak daima iyi bir yöntemdir.
Çünkü hackerlar sistemlere girebilmek için daima kaba kuvvet saldırılarını denerler. Bu saldırılarda da ilk hedef root kullanıcısı olacaktır.
root kullanıcısının ssh üzerinden giriş yetkisini devre dışı bırakmak için aşağıdaki adımlar Linux komut satırında (bash vs.) uygulanmalıdır:
 * Konfigürasyon dosyası herhangi bir text editör ile açılır:
```bash
vim /etc/ssh/sshd_config
```
 * Eğer root kullanıcısının login olmasına dair olan konfigürasyon satırı aşağıdaki gibiyse başındaki # işareti kaldırılır:
```bash
#PermitRootLogin no
```
 * Ve aşağıdaki şekilde düzeltilir:
```bash
PermitRootLogin no
```

 * Kaydedip çıktıktan sonra yaptığımız değişikliğin etkili olabilmesi için aşağıdaki komut çalıştırılır:
```bash
/etc/init.d/sshd restart
```

 * Bu adımla ilgili güvenlik önlemini bir adım daha öteye taşımak için konfigürasyon dosyasında giriş yapmasına izin verilen kullanıcıları özellikle belirtebilirsiniz. Bunun için sshd_config dosyasında ilgili satırı aşağıdaki örneğe göre düzenleyip ssh sunucuyu yeniden başlatabilirsiniz. Örn:
```bash
AllowUsers mahmut admin
```

2) Güvenliği artırmak için başka bir yöntem de ssh üzerinden şifreyle giriş yapılmasını devre dışı bırakmaktır. Kendinize has RSA anahtarını kullanarak giriş yapabilirsiniz bu sayede güvenlik seviyeniz bir adım daha artacaktır.
 * Uzaktaki Linux sisteme erişirken kullanmak istediğimiz Linux ortamda aşağıdaki komutları uygulayarak önce RSA kimliği için key oluşturuyoruz daha sonra da bunu uzak sunucuya kopyalıyoruz. Bundan sonra giriş yaparken şifre kullanmadan giriş yapabilirsiniz.
```bash
ssh-keygen -t rsa
ssh-copy-id -i ~/.ssh/id_rsa.pub user@remoteserver.address
```

 * Daha sonra uzak Linux sunucunuza bağlanarak
```bash
 #PasswordAuthentication yes
```
olan kısmı
```bash
PasswordAuthentication no
```
şeklinde düzeltin. Böylece uzaktaki Linux sisteminize bağlanırken sadece oluşturduğunuz RSA anahtarı kullanılabilir.
 * Bu arada RSA anahtarlarının erişim izinlerini _chmod_ komutunu kullanarak düzenlemeyi de unutmayın. Burada detaylı bilgi vermeye gerek duymuyorum.

3) SSH sunucusunu aksi gerekmedikçe sadece kullandığınız internet protokünü kullanacak şekilde konfigüre edin.
 * Bunu yapmak için herhangi bir text editör ile (kişisel tercihim vim) açarak:
```bash
vim /etc/ssh/sshd_config
```
SSH sunucunun sadece IPv4 protokolünde dinleme yapması için:
```bash
AddressFamily inet
```
Sadece IPv6 protokolünde dinleme yapması için de:
```bash
AddressFamily inet
```
şeklinde bir konfigürasyon satırı girip kaydedin.

 * Daha sonra 1. adımda anlatıldığı gibi ssh daemon'ı yeniden başlatmayı unutmayın.

4) SSH sunucunun dinlediği varsayılan portunu 22'den farklı bir portla değiştirin. Böylece 22 portuna gelen otomatikleştirilmiş ssh ataklarından korunmuş olursunuz.
 * Bunun için 1. adımda anlatıldığı gibi sshd_config dosyasını düzenlemek için açın ve port numarasını kullanılmadığından emin olduğunuz bir port numarasıyla değiştirin. Örn:
```bash
Port 22
```
olan satırı
```bash
Port 54322
```
şeklinde düzenleyebilirsiniz.

 * Daha sonra ssh sunucuyu yeniden başlatmayı ihmal etmeyin.


5) Kullanılan ssh protokolü de güvenlik açısından çok önemlidir. SSH protokol versiyonu 1'in (SSH-1) araya girme atakları (man-in-the-middle attacks) açısından ciddi güvenlik zafiyetleri bulunmaktadır. Bu yüzden konfigürasyon dosyanızı düzenleyerek _Protocol 2_'nin kullanıldığından emin olun.
 * sshd_config dosyasının ilgili satırını aşağıdaki şekilde düzeltin:
```bash
Protocol 2
```

 * Daha sonra sunucuyu yeniden başlatmayı unutmayın.

6) Başka bir güvenlik artırıcı önlem olarak hiçbir işlem yapılmadan belli bir süreyi geçen oturumları sonlandırmak için konfigürasyon yapabilirsiniz. Bunun için sshd_config dosyasında aşağıdaki örneğe göre düzenlemeler yapabilirsiniz. Örn:
```bash
ClientAliveInterval 600
ClientAliveCountMax 0
```
 * Buradaki örnekte görüldüğü gibi kullanıcı 600 saniye hiçbirşey yapmadan durursa oturumu sonlandırılacaktır.

 * Değişikliği yaptıktan sonra ssh daemon'ı yeniden başlatmayı unutmayın.

7) RSH üzerinden givensiz erişimi devre dışı bırakın. Bunu yapmak için sshd_config dosyasında ilgili konfigürasyon satırını aşağıdaki gibi düzeltebilirsiniz:
```bash
IgnoreRhosts yes
```

8) Host tabanlı kimlik doğrulamayı devre dışı bırakın. Bunu yapmak için sshd_config dosyasında ilgili konfigürasyon satırını aşağıdaki gibi düzeltebilirsiniz:
```bash
HostbasedAuthentication no
```

9) Bağlantıların kabul edileceği IP adreslerini belireyerek de güvenliği artırabilirsiniz. Örn:
```bash
ListenAddress 192.168.1.15
```

10) SSHD'yi chroot yaparak oturum açan kullanıcıyı kendi home dizinine hapsetmek de güvenlik seviyesini bir adım öteye taşıyabilir. OpenSSH'ın son versiyonları (4.8 sonrası) bunu üçüncü parti uygulamalara gerek kalmadan sağlıyor. Detaylı bilgi vermek için uzun bir konu olduğundan bu kadar değiniyorum.

11) Kaba kuvvet saldırılarını engellemek için Fail2Ban gibi araçlar kullanarak başarısız olan ardışık oturum açma teşebbüslerini kontrol altına alabilirsiniz.

12) Yerel güvenlik duvarı "iptables" üzerinde ssh portuna gelen bağlantıları sınırlandırabilirsiniz. Bu madde 9. maddeyle birlikte değerlendirilebilir. Bu yüzden iptables komutlarıyla ilgili detaylı bilgi vermiyorum.

13) Son olarak işletim sisteminizi ve OpenSSH sunucunuzu daima güncel tutun ve güvenlik yamalarını muhakkak uygulayın.
