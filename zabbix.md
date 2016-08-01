**ZABBIX KURULUM VE KULLANIM KILAVUZU**

**1.INTRODUCTION** **(GÄ°RÄ°Å)**

**2.ZABBIX CONCEPTS**

**3.INSTALLATION** **(KURULUM)**

**4.QUICKSTART** **(HIZLI BAÅLANGIÃ‡)**

**5.ZABBIX APPLIANCE** **(ZABBIX CÄ°HAZI)**

**6.CONFIGURATION** **(YAPILANDIRMA)**

**7.IT SERVICES** **(IT HÄ°ZMETLERÄ°)**

**8.WEB MONITORING** **(WEB Ä°ZLEME)**

**9.MAINTEANCE** **(BAKIM)**

**10.REGULAR EXPRESSIONS**

**11.EVENT ACKNOWLEDGEMENT**

**12.CONFIGURATION EXPRT/IMPORT**

**13.DISCOVERY**

**14.DISTRIBUTED MONITORING**

**15.WEB INTERFACE** **(WEB ARAYÃœZÃœ)**

**1.GÄ°RÄ°Å**

**1.1.KÄ±lavuz yapÄ±sÄ±**

**YapÄ±**

Bu Zabbix kÄ±lavuzunun iÃ§eriÄŸi belli konularda kolay eriÅŸim saÄŸlamak iÃ§in bÃ¶lÃ¼mlere ve alt bÃ¶lÃ¼mlere ayrÄ±lmÄ±ÅŸtÄ±r.

Ä°lgili konulara yÃ¶nlendiÄŸinizde, alt ve tek tek sayfalarÄ± dahil tam iÃ§eriÄŸini ortaya Ã§Ä±karmak iÃ§in bÃ¶lÃ¼m klasÃ¶rleri geniÅŸlettiÄŸinizden emin olun.

**BÃ¶lÃ¼mler**

GiriÅŸ bÃ¶lÃ¼mÃ¼ Zabbix yazÄ±lÄ±m hakkÄ±nda genel bilgi saÄŸlar.

Zabbix kavramlarÄ± Zabbix'de kullanÄ±lan terminolojiyi aÃ§Ä±klar ve Zabbix bileÅŸenleri ile ilgili detaylarÄ± saÄŸlar.

Kurulum ve HÄ±zlÄ± BaÅŸlangÄ±Ã§ bÃ¶lÃ¼mleri Zabbix'i baÅŸlamak iÃ§in yardÄ±mcÄ± olmalÄ±dÄ±r. Zabbix cihazÄ± bu uygulamayÄ± kullanmayÄ± denemek iÃ§in alternatif bir yoldur.

YapÄ±landÄ±rma bu kÄ±lavuzda yer alan en bÃ¼yÃ¼k ve daha Ã¶nemli bÃ¶lÃ¼mlerinden biridir. OrtamÄ±nÄ±zÄ± izlemek iÃ§in Zabbix kurmak konusunda birden fazla gerekli tavsiyeler iÃ§erir.

IT hizmetleri bÃ¶lÃ¼mÃ¼ izleme ortamÄ±nÄ±n Ã¼st dÃ¼zey genel gÃ¶rÃ¼nÃ¼mÃ¼ iÃ§in Zabbix'in nasÄ±l kullanÄ±lacaÄŸÄ±nÄ± hakkÄ±nda detay verir.

Web izleme web sitelerinin kullanÄ±labilirliÄŸini izlemesini Ã¶ÄŸrenmek iÃ§in yardÄ±mcÄ± olmalÄ±dÄ±r.

Sanal makine izleme VMware ortamÄ±nda izleme yapÄ±landÄ±rmak iÃ§in nasÄ±l yapÄ±lacaÄŸÄ± hakkÄ±nda bilgi sunar.

BakÄ±m, DÃ¼zenli ifadeler, durum onaylama ve XML export/import Zabbix yazÄ±lÄ±mÄ±nÄ±n bu Ã§eÅŸitli yÃ¶nlerini nasÄ±l kullanÄ±lacaÄŸÄ±nÄ± ortaya koyan bÃ¶lÃ¼mlerdir.

KeÅŸif aÄŸ cihazlarÄ±, aktif maddelerin, dosya sistemleri, aÄŸ arayÃ¼zleri, vb otomatik keÅŸif kurmak iÃ§in talimatlarÄ± iÃ§erir.

DaÄŸÄ±tÄ±k izleme bÃ¶lÃ¼mÃ¼ daha bÃ¼yÃ¼k ve daha karmaÅŸÄ±k ortamlarda Zabbix kullanma olanaklarÄ± ile ilgilenir.

Web arayÃ¼zÃ¼ Zabbix Ã¼zerinde web arayÃ¼zÃ¼ kullanmak iÃ§in Ã¶zel bilgileri iÃ§erir.

API bÃ¶lÃ¼mÃ¼ Zabbix API ile Ã§alÄ±ÅŸan ayrÄ±ntÄ±larÄ±nÄ± sunar.

**1.2 Zabbix Nedir?**

**Genel BakÄ±ÅŸ**

Zabbix Alexei Vladishev tarafÄ±ndan oluÅŸturulmuÅŸtur ve halen aktif olarak Zabbix SIA tarafÄ±ndan geliÅŸtirilir ve desteklenir.

Zabbix Enterprise seviyesinde Network ve Networke baÄŸlÄ± cihazlarÄ± izleyebilme, Ã¶lÃ§ebilme, raporlama ve alarm sistemi yapabildiÄŸimiz aÃ§Ä±k kaynaklÄ± ve Ã¼cretsiz bir Ã§Ã¶zÃ¼mdÃ¼r.

Zabbix, enterprise seviyede bir network monitÃ¶r uygulamasÄ±dÄ±r. Zabbix ile sisteminizdeki sunucularÄ±, switchleri, printer vb aygÄ±tlara izleme yapabilir ve oluÅŸacak durumlara gÃ¶re bildirim alabilirsiniz. Zabbix ile oldukÃ§a baÅŸarÄ±lÄ± izleme ve yÃ¶netme senaryolarÄ± kurabilir ve birÃ§ok sistem iÃ§in Zabbix ÅŸablonlarÄ±na kolayca ulaÅŸabilirsiniz.

**Zabbix KullanÄ±mÄ±**

DÃ¼nyada farklÄ± boyutta birÃ§ok kuruluÅŸ birincil izleme platformu olarak Zabbix'e gÃ¼veniyor.

**1.3 Zabbix'in Ã–zellikleri**

**Genel BakÄ±ÅŸ**

Zabbix tek bir paket Ã¶zelliklerin Ã§ok sayÄ±da sunan, son derece entegre aÄŸ izleme Ã§Ã¶zÃ¼mÃ¼dÃ¼r.

*Bilgi Toplama*

-KullanÄ±labilirlik ve performans kontrolleri

-SNMP , IPMI, JMX, VMware izleme desteÄŸi

-Ã–zel kontroller

-Ã–zel aralÄ±klarla istenen veri toplama

-Server/proxy ve agents tarafÄ±ndan gerÃ§ekleÅŸtirme

*Esnek eÅŸik tanÄ±mlarÄ±*

-Arka uÃ§ veritabanÄ± deÄŸerlerinin referansÄ±, Ã§ok esnek bir sorun eÅŸikleri ve tetikleyicileri tanÄ±mlayabilirsiniz.

*YÃ¼ksek yapÄ±landÄ±rÄ±labilir uyarÄ±*

-GÃ¶nderme bildirimleri eskalasyon programÄ±, alÄ±cÄ±, ortam tÃ¼rÃ¼ iÃ§in Ã¶zelleÅŸtirilebilir.

-Bildirimler makro deÄŸiÅŸkenleri kullanarak anlamlÄ± ve yararlÄ± yapÄ±labilir.

-Otomatik eylemler uzaktan komut iÃ§erir.

*GerÃ§ek zamanlÄ± grafik*

-Ä°zlenen Ã¶ÄŸeler grafik iÅŸlevselliÄŸi kullanÄ±larak grafiklenir.

*Web izleme yetenekleri*

-Zabbix web sitesinde fare tÄ±klamasÄ±nÄ± benzetmenin bir yolunu takip edebilirsiniz ve iÅŸlevsellik, tepki sÃ¼resi iÃ§in kontrol edebilirsiniz.

*KapsamlÄ± gÃ¶rselleÅŸtirme seÃ§enekleri*

-Ã–zel grafikler oluÅŸturma yeteneÄŸi

-Network haritasÄ±

-Pano tarzÄ± genel gÃ¶rÃ¼nÃ¼mÃ¼ iÃ§in Ã¶zel ekranlar ve slayt gÃ¶sterileri

-KayÄ±tlar

-Ä°zlenen kaynaklarÄ±n Ã¼st dÃ¼zey gÃ¶rÃ¼nÃ¼mÃ¼

*Tarihsel veri depolama*

-Veri tabanÄ±nda depolanan veriler

-YapÄ±landÄ±rabilir tarih

-YerleÅŸik temizlik prosedÃ¼rÃ¼

*Kolay yapÄ±landÄ±rma*

-Host olarak izlenen cihazlarÄ± ekleme

-Ä°zlenen cihazlara ÅŸablonlarÄ± uygulamak

*Åablon kullanÄ±mÄ±*

-Kontrolleri gruplandÄ±rma

-Åablonlar diÄŸer ÅŸablonlarÄ± devralabilir

*AÄŸ bulma*

-AÄŸ cihazlarÄ±nÄ± otomatik bulma

-Agent otomatik kayÄ±t

-Dosya sistemleri, aÄŸ arayÃ¼zleri ve SNMP, OIDler keÅŸfi

*HÄ±zlÄ± web arayÃ¼zÃ¼*

-PHP web tabanlÄ± Ã¶nyÃ¼z

-Her yerinden eriÅŸilebilir

-Denetim gÃ¼nlÃ¼ÄŸÃ¼

*Zabbix API*

-Zabbix API kitle manipÃ¼lasyon, 3. parti yazÄ±lÄ±m entegrasyonu ve diÄŸer amaÃ§lar iÃ§in programlanabilir bir arayÃ¼z saÄŸlar.

*Ä°zinler sistemi*

> -GÃ¼venli kullanÄ±cÄ± kimlik doÄŸrulamasÄ±
>
> -Belirli kullanÄ±cÄ±larÄ±n belirli gÃ¶rÃ¼ÅŸleri ile sÄ±nÄ±rlÄ± olabilir.

*Tam Ã¶zellikli ve kolayca geniÅŸletilebilir araÃ§*

-Ä°zleme hedefleri Ã¼zerinde uygulanÄ±r

-Linux hem de Windows Ã¼zerinde daÄŸÄ±tÄ±labilir

*KarmaÅŸÄ±k ortamlar iÃ§in hazÄ±r*

-Uzaktan izleme Zabbix proxy kullanarak daha kolay yapÄ±lÄ±r.

**1.4 Zabbix Genel BakÄ±ÅŸ**

**Mimari**

Zabbix birÃ§ok Ã¶nemli yazÄ±lÄ±m bileÅŸenlerinden oluÅŸmaktadÄ±r, yÃ¼kÃ¼mlÃ¼lÃ¼kleri aÅŸaÄŸÄ±da belirtilmiÅŸtir.

**Sunucu**

Zabbix sunucusu ajanlarÄ±n bÃ¼tÃ¼nlÃ¼k bilgi ve istatistik raporunu kaydettiÄŸi merkezi bileÅŸendir. Sunucu tÃ¼m yapÄ±landÄ±rma, istatistik ve operasyonel verilerin saklandÄ±ÄŸÄ± merkezi depodur.

**VeritabanÄ± Depolama**

TÃ¼m yapÄ±landÄ±rma bilgilerinin yanÄ± sÄ±ra Zabbix tarafÄ±ndan toplanan veriler bir veritabanÄ±nda saklanÄ±r.

**Web ArayÃ¼zÃ¼**

Her yerde ve her platformda Zabbix 'e kolay eriÅŸim iÃ§in web tabanlÄ± bir arayÃ¼z saÄŸlanÄ±r. ArayÃ¼z Zabbix sunucu parÃ§asÄ±dÄ±r ve genellikle (zorunlu deÄŸil) sunucuyu Ã§alÄ±ÅŸtÄ±ran aynÄ± fiziksel makine Ã¼zerinde Ã§alÄ±ÅŸÄ±r.

**Proxy**

Zabbix proxy, Zabbix sunucusu adÄ±na performans ve kullanÄ±labilirlik veri toplayabilir. Proxy, Zabbix daÄŸÄ±tÄ±m isteÄŸe baÄŸlÄ± bir parÃ§asÄ±dÄ±r; Bununla birlikte, tek bir Zabbix sunucusunun yÃ¼kÃ¼nÃ¼ daÄŸÄ±tmak iÃ§in Ã§ok faydalÄ± olabilir.

**Agent**

Zabbix ajanlarÄ± aktif yerel kaynaklarÄ± ve uygulamalarÄ± izlemek ve Zabbix sunucusuna toplanan verileri raporlamak iÃ§in yerleÅŸtirilir.

**Veri AkÄ±ÅŸÄ±**

Buna ek olarak bir adÄ±m geri almak ve Zabbix iÃ§inde veri akÄ±ÅŸÄ±nÄ± izlemek Ã¶nemlidir. Ã–ncelikle veri toplamak iÃ§in host oluÅŸturmanÄ±z gerekir. Zabbix spektrumun diÄŸer ucuna taÅŸÄ±rken tetik(trigger) oluÅŸturmak iÃ§in bir Ã¶ÄŸe olmalÄ±dÄ±r. Bir eylem oluÅŸturmak iÃ§in bir tetikleyici olmasÄ± gerekir.EÄŸer Sunucu X iÃ§in Ã§ok yÃ¼ksek uyarÄ± almak istiyorsanÄ±z, Ã¶ncelikle CPU' sunu izlemek amacÄ±yla bir Ã¶ge tarafÄ±ndan takip edilen Sunucu X iÃ§in host girdisi oluÅŸturmak gerekir. ArdÄ±ndan eÄŸer CPU yÃ¼ksekse, mail gÃ¶nderen durum tarafÄ±ndan takip edilen tetikleyici aktive edilir.

**2.ZABBIX KAVRAMLARI**

**2.1 Zabbix TanÄ±mlarÄ±**

**Genel BakÄ±ÅŸ**

Bu bÃ¶lÃ¼mde Zabbix'de kullanÄ±lan bazÄ± terimlerin anlamÄ±nÄ± Ã¶ÄŸrenebilirsiniz.

**TanÄ±mlar**

*Host*

- IP / DNS ile izlemek istediÄŸiniz bir aÄŸ cihazÄ±

*Host group*

-MantÄ±ksal gruplama;hostlarÄ± ve templateleri iÃ§erebilir.

*Item*

-verinin belli bir parÃ§asÄ±

*Trigger*

-Bir sorun eÅŸiÄŸini tanÄ±mlar ve Ã¶ÄŸeleri alÄ±nan verileri "deÄŸerlendirmek" iÃ§in kullanÄ±lan mantÄ±ksal bir ifade

*Action*

-Durumun reaksiyon anlamÄ±

*Escalation*

-Bir eylem iÃ§inde faaliyetlerini yÃ¼rÃ¼tmek iÃ§in Ã¶zel bir senaryo; Uzak komutlar / bildirimleri gÃ¶nderme yÃ¼rÃ¼tme dizisi

*Media*

-Bildirim aracÄ±; daÄŸÄ±tÄ±m kanalÄ±

*Notification*

-SeÃ§ilen medya kanalÄ± Ã¼zerinden bir kullanÄ±cÄ±ya gÃ¶nderilen bazÄ± olaylar hakkÄ±nda mesaj

*Remote command*

-Otomatik olarak bazÄ± durum Ã¼zerine izlenen ana bilgisayarda Ã§alÄ±ÅŸtÄ±rÄ±lan tanÄ±mlanmÄ±ÅŸ bir komut

*Template*

-Bir veya birkaÃ§ hosta uygulanan varlÄ±k kÃ¼mesi (Ã¶ÄŸeler, tetikleyiciler, grafikler, ekranlar, uygulamalar, dÃ¼ÅŸÃ¼k seviyeli keÅŸif kurallarÄ±, web senaryolarÄ±)

*Application*

-MantÄ±klÄ± bir grup Ã¶ÄŸe gruplandÄ±rma

*Web scenario*

-Web sitesi durumunu kontrol etmek iÃ§in bir veya birkaÃ§ HTTP isteÄŸi gÃ¶nderme

*Frontend*

-Zabbix ile saÄŸlanan web arayÃ¼zÃ¼

*Zabbix API*

-Zabbix API (ana, Ã¶ÄŸeleri, grafik ve diÄŸerleri gibi) Zabbix nesneleri oluÅŸturmak, gÃ¼ncellemek ve almak iÃ§in JSON RPC protokolÃ¼ kullanan veya herhangi bir diÄŸer Ã¶zel gÃ¶revleri gerÃ§ekleÅŸtirmek iÃ§in izin verir.

*Zabbix Sunucusu*

-Ä°zleme gerÃ§ekleÅŸtiren Zabbix yazÄ±lÄ±mÄ±nÄ±n merkezi iÅŸlemi

*Zabbix Agent*

-Yerel kaynaklarÄ± ve uygulamalarÄ± izlemek iÃ§in izleme hedefleri Ã¼zerindeki sÃ¼reÃ§

*Zabbix Proxy*

-Sunucunun bazÄ± iÅŸlem yÃ¼kÃ¼nÃ¼ alan Zabbix sunucu adÄ±na veri toplayabilir bir sÃ¼reÃ§.

**2.Sunucu**

**Genel BakÄ±ÅŸ**

Zabbix sunucusu Zabbix yazÄ±lÄ±mÄ±nÄ±n merkezi bir sÃ¼recidir.

Sunucu tetikleyicileri Ã¶lÃ§er, kullanÄ±cÄ±lara bildirimler gÃ¶nderir. Zabbix agent ve proxy ler bÃ¼tÃ¼nlÃ¼ÄŸÃ¼ ve kullanabilirliÄŸi Ã¼zerindeki verileri kayÄ±t etme merkezi bileÅŸenidir. Sunucu kendisi uzaktan basit servis kontrolleri kullanarak (Ã¶rneÄŸin web sunucularÄ± ve posta sunucularÄ± gibi) aÄŸ servislerini kontrol edebilirsiniz.

Sunucu tÃ¼m yapÄ±landÄ±rma, istatistik ve operasyonel verilerin depolandÄ±ÄŸÄ± merkezi depodur.

Bir Zabbix sunucusu iÅŸleyiÅŸi, Ã¼Ã§ farklÄ± bileÅŸen ayrÄ±lÄ±r; bunlar: Zabbix sunucu, web Ã¶n ve veritabanÄ± depolama.

Zabbix yapÄ±landÄ±rma bilgileri her sunucu ve web Ã¶n hem de etkileÅŸime veri tabanÄ±nda depolanÄ±r. Web Ã¶nyÃ¼z (veya API) kullanarak yeni bir Ã¶ÄŸe oluÅŸturduÄŸunuzda Ã–rneÄŸin, veritabanÄ±ndaki Ã¶ÄŸeler tabloya eklenir. Sonra, Zabbix sunucusu Zabbix sunucu iÃ§indeki bir Ã¶nbellekte depolanan aktif olan Ã¶ÄŸelerin bir listesi iÃ§in Ã¼rÃ¼n tablosunu sorgular. Zabbix Ã¶nyÃ¼zÃ¼nde yapÄ±lan deÄŸiÅŸiklikler son veri bÃ¶lÃ¼mÃ¼nde gÃ¶stermesinin iki dakika kadar sÃ¼rmesinin nedeni budur.

**Sunucu Ä°ÅŸlemi**

Zabbix sunucusu arka plan programÄ± iÅŸlemi olarak Ã§alÄ±ÅŸÄ±r. Sunucu Ã§alÄ±ÅŸtÄ±rÄ±larak baÅŸlamÄ±ÅŸ olabilir:

shell&gt; cd sbin

shell&gt; ./zabbix\_server

Zabbix sunucusu ile aÅŸaÄŸÄ±daki komut satÄ±rÄ± parametreleri kullanabilirsiniz:

-c --config &lt;file&gt; absolute path to the configuration file (default is /etc/zabbix/zabbix\_server.conf)

-R --runtime-control &lt;option&gt; perform administrative functions

-h --help give this help

-V --version display version number

Komut satÄ±rÄ± parametreleri Ã¶rnekleri:

shell&gt; zabbix\_server -c /usr/local/etc/zabbix\_server.confshell&gt; zabbix\_server â€“help

shell&gt; zabbix\_server â€“V

**Ã‡alÄ±ÅŸma SÃ¼resi KontrolÃ¼**

Ã‡alÄ±ÅŸma SÃ¼resi Kontrol SeÃ§enekleri

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  SeÃ§enek                                       TanÄ±m                                                                                        AmaÃ§
  --------------------------------------------- -------------------------------------------------------------------------------------------- ----------------------------------------------------------------
  config\_cache\_reload                         yapÄ±landÄ±rma Ã¶nbelleÄŸini yeniden yÃ¼kleyin. Ã¶nbelleÄŸin yÃ¼klÃ¼ olup olmadÄ±ÄŸÄ±nÄ± gÃ¶z ardÄ± edin.   

  log\_level\_increase\[=&lt;**target**&gt;\]   Log dÃ¼zeyini artÄ±racak hedef belirtilmemiÅŸse, tÃ¼m sÃ¼reÃ§leri etkiler.                         **pid** - Process identifier (1 to 65535)\
                                                                                                                                             process type - All processes of specified type (e.g., poller)\
                                                                                                                                             process type,N - Process type and number (e.g., poller,3)

  log\_level\_decrease\[=&lt;**target**&gt;\]   Log dÃ¼zeyini azaltacak hedef belirtilmemiÅŸse, tÃ¼m sÃ¼reÃ§leri etkiler.                         **pid** - Process identifier (1 to 65535)\
                                                                                                                                             process type - All processes of specified type (e.g., poller)\
                                                                                                                                             process type,N - Process type and number (e.g., poller,3)
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Sunucu yapÄ±landÄ±rma Ã¶nbelleÄŸini yeniden Ã§alÄ±ÅŸma zamanÄ± denetimi kullanma Ã¶rneÄŸi:

shell&gt; zabbix\_server -c /usr/local/etc/zabbix\_server.conf -R config\_cache\_reload

Log dÃ¼zeyini deÄŸiÅŸtirmek iÃ§in Ã§alÄ±ÅŸma zamanÄ± denetimi kullanan Ã¶rnekler:

Increase log level of all processes:

shell&gt; zabbix\_server -c /usr/local/etc/zabbix\_server.conf -R log\_level\_increase

Increase log level of second poller process:

shell&gt; zabbix\_server -c /usr/local/etc/zabbix\_server.conf -R log\_level\_increase=poller,2

Increase log level of process with PID 1234:

shell&gt; zabbix\_server -c /usr/local/etc/zabbix\_server.conf -R log\_level\_increase=1234

Decrease log level of all http poller processes:

shell&gt; zabbix\_server -c /usr/local/etc/zabbix\_server.conf -R log\_level\_decrease="http poller"

**Ä°ÅŸlem KullanÄ±cÄ±sÄ±**

Zabbix sunucusu root olmayan kullanÄ±cÄ± olarak Ã§alÄ±ÅŸacak ÅŸekilde tasarlanmÄ±ÅŸtÄ±r. BaÅŸlatÄ±ldÄ±ÄŸÄ± anda root olmayan kullanÄ±cÄ± ne olursa olsun Ã§alÄ±ÅŸacaktÄ±r. Yani herhangi bir sorun olmadan herhangi bir root olmayan kullanÄ±cÄ± olarak sunucu Ã§alÄ±ÅŸtÄ±rabilirsiniz.

**DÃ¼zenleme klasÃ¶rÃ¼**

zabbix\_server yapÄ±landÄ±rÄ±lmasÄ±yla ilgili ayrÄ±ntÄ±lar iÃ§in yapÄ±landÄ±rma dosyasÄ± seÃ§eneklerine bakÄ±n.

**Start-up komut dosyalarÄ±**

Komut dosyalarÄ± otomatik olarak / start sistemi baÅŸlatma / kapatma sÄ±rasÄ±nda Zabbix sÃ¼reÃ§leri durdurmak iÃ§in kullanÄ±lÄ±r. scripts dizini misc / init.d altÄ±nda yer almaktadÄ±r.

**Desteklenen Platformlar**

Zabbix sunucu aÅŸaÄŸÄ±daki platformlarda test edilmiÅŸtir:

-   Linux

-   Solaris

-   AIX

-   HP-UX

-   Mac OS X

-   FreeBSD

-   OpenBSD

-   NetBSD

-   SCO Open Server

-   Tru64/OSF1

**3.KURULUM**

**3.1 BaÅŸlangÄ±Ã§**

Zabbix yÃ¼klemenin 3 yolu vardÄ±r:

-   DaÄŸÄ±tÄ±m paketlerini yÃ¼kleyin.

-   En sonki kaynak arÅŸivini indirin ve derleyin.

-   Sanal cihazÄ± indirin.

**3.2 Gereksinimler**

*DonanÄ±m*

HafÄ±za: Zabbix hem fiziksel bellek hem de disk belleÄŸi gerektirir. Fiziksel bellek 128 MB ,disk alanÄ± 256 MB boÅŸ bellek alanÄ± iyi bir baÅŸlangÄ±Ã§ noktasÄ± olabilir.

CPU:Zabbix ve Ã¶zellikle Zabbix veritabanÄ±, izlenen parametre sayÄ±sÄ± ve seÃ§ilen veritabanÄ± motoruna gÃ¶re Ã¶nemli bir CPU kaynaklarÄ±nÄ± gerektirebilir.

DiÄŸer DonanÄ±mlar:Bir seri haberleÅŸme portu ve bir seri GSM modemi Zabbix SMS bildirimi desteÄŸini kullanmak iÃ§in gereklidir. USB-seri dÃ¶nÃ¼ÅŸtÃ¼rÃ¼cÃ¼ de Ã§alÄ±ÅŸacaktÄ±r.

DonanÄ±m yapÄ±landÄ±rmasÄ± Ã¶rnekleri:

Tablo donanÄ±m yapÄ±landÄ±rmalarÄ±nÄ±n Ã§eÅŸitli Ã¶rneklerini sunar:

  Ä°sim         Platform                  CPU/HafÄ±za          VeritabanÄ±                               Ä°zlenilen host
  ------------ ------------------------- ------------------- ---------------------------------------- ----------------
  Small        CentOS                    Virtual Appliance   MySQL InnoDB                             100
  Medium       CentOS                    2 CPU cores/2GB     MySQL InnoDB                             500
  Large        RedHat Enterprise Linux   4 CPU cores/2GB     RAID10 MySQL InnoDB or PostgreSQL        &gt;1000
  Very Large   RedHat Enterprise Linux   8 CPU cores/2GB     Fast RAID10 MySQL InnoDB or PostgreSQL   &gt;10000

*Desteklenen Platformlar*

Zabbix sunucu aÅŸaÄŸÄ±daki platformlarda test edilmiÅŸtir:

-   Linux

-   Solaris

-   AIX

-   HP-UX

-   Mac OS X

-   FreeBSD

-   OpenBSD

-   NetBSD

-   SCO Open Server

-   TRU64/OSF1

*YazÄ±lÄ±m*

Zabbix veritabanÄ± motorlarÄ± liderliÄŸinde, PHP kodlama dili ve modern bir Apache web sunucusu etrafÄ±nda inÅŸa edilmiÅŸtir.

VeritabanÄ± yÃ¶netim sistemi:

  YazÄ±lÄ±m      Versiyon         Yorumlar
  ------------ ---------------- ----------------------------------------------------------------------------------------------
  MySQL        5.0.3 or later   MySQL Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir. InnoDB motoru gereklidir.
  Oracle       10g or later     Oracle Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.
  PostgreSQL   8.1 or later     PostgreSQL Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.
  SQLite       3.3.5 or later   SQLite Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.
  IBM DB2      9.7 or later     IBM DB2 Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.

BaÅŸlangÄ±Ã§ AÅŸamasÄ±:

  YazÄ±lÄ±m   Versiyon          Yorumlar
  --------- ----------------- ---------------------
  Apache    1.3.12 or later   
  PHP       5.3.0 or later    PHP v7 desteklenmez

> PHP GeniÅŸletme

  gd          2.0 or later      PHP GD uzantÄ±sÄ± PNG gÃ¶rÃ¼ntÃ¼leri (--with-png-dir), JPEG (--with-jpeg-dir) gÃ¶rÃ¼ntÃ¼ler ve FreeType 2 (--with-freetype-dir) desteklemesi gerekir .
  ----------- ----------------- ------------------------------------------------------------------------------------------------------------------------------------------------
  bcmath                        php-bcmath (*--enable-bcmath*)
  ctype                         php-ctype (*--enable-ctype*)
  libXML      2.6.15 or later   php-xml veya php5-dom distribÃ¼tÃ¶rÃ¼ tarafÄ±ndan ayrÄ± bir paket olarak saÄŸlanÄ±r
  xmlreader                     php-xmlreader distribÃ¼tÃ¶rÃ¼ tarafÄ±ndan ayrÄ± bir paket olarak saÄŸlanÄ±r.
  xmlwriter                     php-xmlwriter distribÃ¼tÃ¶rÃ¼ tarafÄ±ndan ayrÄ± bir paket olarak saÄŸlanÄ±r.
  session                       php-session distribÃ¼tÃ¶rÃ¼ tarafÄ±ndan ayrÄ± bir paket olarak saÄŸlanÄ±r.
  socket                        php-net-socket (*--enable-sockets*).KullanÄ±cÄ± komut desteÄŸi iÃ§in gerekli
  mbstring                      php-mbstring (*--enable-mbstring*)
  gettext                       php-gettext (--with-gettext). Ã§alÄ±ÅŸmak iÃ§in Ã§eviriler gereklidir.
  ldap                          php-ldap. LDAP kimlik Ã¶nyÃ¼z kullanÄ±lmasÄ± durumunda sadece gerekli.
  Ibm\_db2                      Ibm\_db2 Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.
  mysqli                        MySQL Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.
  oci8                          Oracle Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.
  pgsql                         PostgreSQL Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.
  sqlite3                       SQLite Zabbix arka uÃ§ veritabanÄ± olarak kullanÄ±ldÄ±ÄŸÄ±nda gereklidir.

*Ä°stemci tarafÄ±nda Web TarayÄ±cÄ±*

Ã‡erezler ve Java Script etkinleÅŸtirilmiÅŸ olmalÄ±dÄ±r.

Google Chrome, Mozilla Firefox, Microsoft Internet Explorer ve Opera son sÃ¼rÃ¼mleri desteklenir. DiÄŸer tarayÄ±cÄ±lar (Safari, Konqueror) da Zabbix'le birlikte Ã§alÄ±ÅŸabilir.

*Sunucu*

  Gereksinimler   TanÄ±m
  --------------- ---------------------------------------------------
  OpenIPMI        IPMI desteÄŸi iÃ§in gerekli
  libssh1         SSH desteÄŸi iÃ§in gerekli
  fping           ICMP ping itemlarÄ± iÃ§in gerekli
  libcurl         Required for web monitoring and VMware monitoring
  libiksemel      Jabber desteÄŸi iÃ§in gerekli
  libxml2         VMware izleme iÃ§in gerekli
  net-snmp        SNMP desteÄŸi iÃ§in gerekli

*Java Gateway*

Kaynak depo veya arÅŸiv Zabbix aldÄ±ysanÄ±z, gerekli baÄŸÄ±mlÄ±lÄ±klarÄ± zaten kaynak aÄŸacÄ±nda yer almaktadÄ±r.

EÄŸer daÄŸÄ±tÄ±m paketinden Zabbix aldÄ±ysanÄ±z,gerekli baÄŸÄ±mlÄ±lÄ±klarÄ± zaten paketleme sistemi ile saÄŸlanmaktadÄ±r.

YukarÄ±daki her iki durumda da, yazÄ±lÄ±m kullanÄ±lmak Ã¼zere hazÄ±rdÄ±r ve herhangi bir ek yÃ¼ke gerek yoktur.

AÅŸaÄŸÄ±daki tabloda, ÅŸu anda orijinal kodu Java aÄŸ geÃ§idi ile paketlenmiÅŸ JAR dosyalarÄ± listeler:

  KÃ¼tÃ¼phane                      Lisans               Website                                                             Yorumlar
  ------------------------------ -------------------- ------------------------------------------------------------------- ----------------------------------------
  *logback-core-0.9.27.jar*      EPL 1.0,LGPL 2.1     <http://logback.qos.ch/>                                            Tested with 0.9.27, 1.0.13, and 1.1.1.
  *logback-classic-0.9.27.jar*   EPL 1.0,LGPL 2.1     <http://logback.qos.ch/>                                            Tested with 0.9.27, 1.0.13, and 1.1.1.
  *slf4j-api-1.6.1.jar*          MIT License          <http://www.slf4j.org/>                                             Tested with 1.6.1, 1.6.6, and 1.7.6.
  *android-json-4.3\_r3.1.jar*   Apache License 2.0   <https://android.googlesource.com/platform/libcore/+/master/json>   Tested with 2.3.3\_r1.1 and 4.3\_r3.1.

*VeritabanÄ± Boyutu*

Zabbix yapÄ±landÄ±rma verileri disk alanÄ± belirli bir miktar gerektirir ve Ã§ok bÃ¼yÃ¼mez.

Zabbix veritabanÄ± boyutu aÄŸÄ±rlÄ±klÄ± olarak depolanan tarihsel veri miktarÄ±nÄ± tanÄ±mlayan bu deÄŸiÅŸkenlere baÄŸlÄ±dÄ±r:

-   Saniyede iÅŸlenen deÄŸerlerin sayÄ±sÄ±

  --------------------------------------------------------------------------------------------------------------------------
  Parametre             Gerekli disk alanÄ± iÃ§in formÃ¼l (bayt)
  --------------------- ----------------------------------------------------------------------------------------------------
  Zabbix YapÄ±landÄ±rma   Sabit boyutu. Normal olarak 10 MB veya daha azdÄ±r

  Tarih                 gÃ¼n \* (Ã¶ÄŸeler / yenileme hÄ±zÄ±) \* 24 \* 3600 \* bayt
                        
                        Ã¶ÄŸe: Ã¶ÄŸe sayÄ±sÄ±
                        
                        gÃ¼n: geÃ§miÅŸini tutmak iÃ§in gÃ¼n sayÄ±sÄ±
                        
                        yenileme hÄ±zÄ±: maddenin ortalama yenileme hÄ±zÄ±
                        
                        byte: tek deÄŸer tutmak iÃ§in gerekli bayt sayÄ±sÄ±, normalde, veritabanÄ± motoru \~ 90 bayt baÄŸlÄ±dÄ±r.

  Trends                gÃ¼n \* (Ã¶ÄŸeler / 3600) \* 24 \* 3600 \* bayt
                        
                        Ã¶ÄŸe: Ã¶ÄŸe sayÄ±sÄ±
                        
                        gÃ¼n: geÃ§miÅŸini tutmak iÃ§in gÃ¼n sayÄ±sÄ±
                        
                        byte: Tek eÄŸilim tutmak iÃ§in gerekli bayt sayÄ±sÄ±, normalde, veritabanÄ± motoru \~ 90 bayt baÄŸlÄ±dÄ±r

  Events                gÃ¼n \* olaylar \* 24 \* 3600 \* bayt
                        
                        olaylar: Saniyede olay sayÄ±sÄ±. En kÃ¶tÃ¼ durum senaryosunda saniyede bir (1) olay.
                        
                        gÃ¼n: geÃ§miÅŸini tutmak iÃ§in gÃ¼n sayÄ±sÄ±
                        
                        byte: Tek eÄŸilim tutmak iÃ§in gerekli bayt sayÄ±sÄ±, veritabanÄ± motoru, normalde \~ 170 bayt baÄŸlÄ±dÄ±r
  --------------------------------------------------------------------------------------------------------------------------

Yani, toplam gerekli disk alanÄ± olarak hesaplanabilir:

YapÄ±landÄ±rma + Tarih + Trendler + Olaylar

Disk alanÄ± Zabbix kurulumdan sonra hemen kullanÄ±lmamalÄ±dÄ±r. VeritabanÄ± boyutu bÃ¼yÃ¼yecek ve bir noktadan sonra bÃ¼yÃ¼mesi duracak.

**3.3 Paketleri YÃ¼kleme**

*DaÄŸÄ±tÄ±m Paketleri*

BirÃ§ok popÃ¼ler iÅŸletim sistemi daÄŸÄ±tÄ±mlarÄ± Zabbix paketleri temin var. Sen Zabbix yÃ¼klemek iÃ§in bu paketleri kullanabilirsiniz.

*Zabbix resmi deposundan*

Zabbix SIA Red Hat Enterprise Linux, Debian ve Ubuntu LTS resmi RPM ve DEB paketleri saÄŸlar.

Paket dosyalarÄ± repo.zabbix.com mevcuttur. yum ve apt depolarÄ± da sunucu Ã¼zerinde bulunmaktadÄ±r. Zabbix yÃ¼klemek iÃ§in adÄ±m-adÄ±m tutorial burada saÄŸlanÄ±r.

### *Red Hat Enterprise Linux / CentOS*

Desteklenen platformlar:RHEL 5, RHEL 6, RHEL 7, Oracle Linux 5, Oracle Linux 6, Oracle Linux 7, CentOS 5, CentOS 6, CentOS 7

*Depo YapÄ±landÄ±rma Paketini YÃ¼kleme*

Depo yapÄ±landÄ±rma paketini yÃ¼kleyin. Bu paket yum yapÄ±landÄ±rma dosyalarÄ±nÄ± iÃ§erir.

Zabbix 2.4 for RHEL5, Oracle Linux 5, CentOS 5:

\#rpm â€“ivh <http://repo.zabbix.com/zabbix/2.4/rhel/5/x86_64/zabbix-release-2.4-1.el5.noarch.rpm>

Zabbix 2.4 for RHEL6, Oracle Linux 6, CentOS 6:

\#rpm â€“ivh <http://repo.zabbix.com/zabbix/2.4/rhel/6/x86_64/zabbix-release-2.4-1.el6.noarch.rpm>

Zabbix 2.4 for RHEL7, Oracle Linux 7, CentOS 7:

\# rpm -ivh <http://repo.zabbix.com/zabbix/2.4/rhel/7/x86_64/zabbix-release-2.4-1.el7.noarch.rpm>

*Zabbix paketleri yÃ¼kleme*

Zabbix paketleri kurun. MySQL veritabanÄ± ile Zabbix sunucusu ve web Ã¶nyÃ¼z iÃ§in Ã¶rnek.

\# yum install zabbix-server-mysql zabbix-web-mysql

Sadece Zabbix agent yÃ¼klemek iÃ§in Ã¶rnek:

\# yum install zabbix-agent

*Ä°lk veritabanÄ± oluÅŸturma*

MySQL'de Zabbix veritabanÄ± ve kullanÄ±cÄ± oluÅŸturun. MySQL iÃ§in veritabanÄ± oluÅŸturma komutlarÄ±na bakÄ±n.

BaÅŸlangÄ±Ã§ olarak ÅŸema ve veri alÄ±n.

\# cd /usr/share/doc/zabbix-server-mysql-2.4.0/create

\# mysql -uroot zabbix &lt; schema.sql

\# mysql -uroot zabbix &lt; images.sql

\# mysql -uroot zabbix &lt; data.sql

*Zabbix sunucu iÅŸlemine baÅŸlama*

zabbix\_server.conf dÃ¼zenleme veritabanÄ± yapÄ±landÄ±rmasÄ±

\# vi /etc/zabbix/zabbix\_server.conf

DBHost=localhost

DBName=zabbix

DBUser=zabbix

DBPassword=zabbix

Zabbix sunucu iÅŸlemine baÅŸlama

\# service zabbix-server start

*Zabbix Ã¶nyÃ¼z iÃ§in PHP yapÄ±landÄ±rma dÃ¼zenlemesi*

Zabbix Ã¶nyÃ¼z iÃ§in Apache yapÄ±landÄ±rma dosyasÄ± /etc/httpd/conf.d/zabbix.conf yer almaktadÄ±r. BazÄ± PHP ayarlarÄ±m zaten yapÄ±landÄ±rÄ±lmÄ±ÅŸ durumda.

php\_value max\_execution\_time 300

php\_value memory\_limit 128M

php\_value post\_max\_size 16M

php\_value upload\_max\_filesize 2M

php\_value max\_input\_time 300

\#php\_value date.timezone Europe/Riga

Bu "date.timezone" ayarÄ±nÄ± yorumsuzlaÅŸtÄ±rmak ve sizin iÃ§in doÄŸru zaman dilimini ayarlamak iÃ§in gereklidir. YapÄ±landÄ±rma dosyasÄ±nÄ± deÄŸiÅŸtirdikten sonra apache web sunucusunu yeniden baÅŸlatÄ±n.

\# service httpd restart

Zabbix Ã¶nyÃ¼zÃ¼ http://zabbix-frontend-hostname/zabbix adresinde ulaÅŸÄ±labilir. VarsayÄ±lan kullanÄ±cÄ± adÄ± / ÅŸifre admin / Zabbix 'dir.

*Debian/Ubuntu*

Desteklenen versiyonlar:Debian 7 (Wheezy), Ubuntu 14.04 LTS (Trusty Tahr)

*Depo yapÄ±landÄ±rma paketini yÃ¼kleme*

Depo yapÄ±landÄ±rma paketini yÃ¼kleyin. Bu paket apt yapÄ±landÄ±rma dosyalarÄ±nÄ± iÃ§erir.

Zabbix 2.4 for Debian 7:

\# wget http://repo.zabbix.com/zabbix/2.4/debian/pool/main/z/zabbix-release/zabbix-release\_2.4-1+wheezy\_all.deb

\# dpkg -i zabbix-release\_2.4-1+wheezy\_all.deb

\# apt-get update

Zabbix 2.4 for Ubuntu 14.04 LTS:

\#wget <http://repo.zabbix.com/zabbix/2.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_2.4-1+trusty_all.deb>

\# dpkg -i zabbix-release\_2.4-1+trusty\_all.deb

\# apt-get update

*Zabbix Paketleri YÃ¼kleme*

Zabbix paketleri kurun.dbconfig-common veritabanÄ± oluÅŸturacak ve otomatik olarak baÅŸlangÄ±Ã§ ÅŸema ve veri dolduracaktÄ±r. EÄŸer arka uÃ§ db farklÄ± bir sunucuda bulunuyorsa, /etc/dbconfigcommon/config 'de dbc\_remote\_questions\_default='true' olarak ayarlayÄ±n.

MySQL veritabanÄ± ile Zabbix sunucusu ve web Ã¶nyÃ¼z iÃ§in Ã¶rnek.

\# apt-get install zabbix-server-mysql zabbix-frontend-php

Sadece Zabbix agent yÃ¼klemek iÃ§in Ã¶rnek:

\# apt-get install zabbix-agent

#### *Editing PHP configuration for Zabbix frontend*

Zabbix Ã¶nyÃ¼z iÃ§in Apache yapÄ±landÄ±rma dosyasÄ± /etc/apache2/conf.d/zabbix 'de yer almaktadÄ±r.

BazÄ± PHP ayarlarÄ± zaten yapÄ±landÄ±rÄ±lmÄ±ÅŸ durumda.

php\_value max\_execution\_time 300

php\_value memory\_limit 128M

php\_value post\_max\_size 16M

php\_value upload\_max\_filesize 2M

php\_value max\_input\_time 300

php\_value date.timezone Europe/Riga

Bu "date.timezone" ayarÄ±nÄ± yorumsuzlaÅŸtÄ±rmak ve sizin iÃ§in doÄŸru zaman dilimini ayarlamak iÃ§in gereklidir. YapÄ±landÄ±rma dosyasÄ±nÄ± deÄŸiÅŸtirdikten sonra apache web sunucusunu yeniden baÅŸlatÄ±n.

\# service apache2 restart

Zabbix Ã¶nyÃ¼zÃ¼ http://zabbix-frontend-hostname/zabbix adresinde ulaÅŸÄ±labilir. VarsayÄ±lan kullanÄ±cÄ± adÄ± / ÅŸifre admin / Zabbix 'dir.

**3.4 Kaynaklardan Kurulum**

Kaynaklardan derleyerek Zabbix son sÃ¼rÃ¼mÃ¼nÃ¼ alabilirsiniz.

Kaynaklardan Zabbix yÃ¼klemek iÃ§in adÄ±m-adÄ±m tutorial burada saÄŸlanÄ±r.

*1.Zabbix daemons yÃ¼kleme*

1.1 Kaynak arÅŸivi indirin

Zabbix indirme sayfasÄ±na gidin ve kaynak arÅŸivini indirin.Bi kere indirin, kaynaklarÄ± dÄ±ÅŸarÄ± Ã§Ä±karÄ±n:

\$ tar -zxvf zabbix-2.4.0.tar.gz

1.2 KullanÄ±cÄ± hesabÄ± oluÅŸturma

Zabbix daemon sÃ¼reÃ§lerinin tÃ¼mÃ¼ iÃ§in bir ayrÄ±calÄ±ÄŸÄ± olmayan bir kullanÄ±cÄ± gereklidir. Bir Zabbix daemon ayrÄ±calÄ±ÄŸÄ± olmayan bir kullanÄ±cÄ± hesabÄ±ndan baÅŸlatÄ±lÄ±rsa, bu kullanÄ±cÄ± olarak Ã§alÄ±ÅŸacak.

Ancak, eÄŸer daemon root hesabÄ±yla baÅŸlatÄ±lÄ±rsa, zabbix kullanÄ±cÄ± hesabÄ±na geÃ§er. Linux sistemlerinde, bÃ¶yle bir kullanÄ±cÄ± hesabÄ± oluÅŸturmak iÃ§in (kendi grubunda, "Zabbix"), Ã§alÄ±ÅŸtÄ±rÄ±n:

groupadd zabbix

useradd -g zabbix zabbix

AyrÄ± bir kullanÄ±cÄ± hesabÄ±nÄ±n Zabbix frontend kurulumu iÃ§in gerekli deÄŸildir.

Zabbix sunucu ve agent aynÄ± makinede Ã§alÄ±ÅŸÄ±rsa, agent Ã§alÄ±ÅŸtÄ±rmaktansa sunucusu Ã§alÄ±ÅŸtÄ±rmak iÃ§in farklÄ± bir kullanÄ±cÄ± kullanÄ±lmasÄ± tavsiye edilir. Her ikisi de aynÄ± kullanÄ±cÄ± olarak Ã§alÄ±ÅŸtÄ±rÄ±lÄ±r. Aksi takdirde, agent , Ã¶rneÄŸin, veritabanÄ± ÅŸifre sunucu yapÄ±landÄ±rma dosyasÄ± ve herhangibir admin kullanÄ±cÄ±sÄ±na eriÅŸebilirsiniz.

1.3 Zabbix veritabanÄ± oluÅŸturma

Zabbix sunucusu ve proxy daemons, hem de Zabbix arabirimi iÃ§in, bir veri tabanÄ± gereklidir. Zabbix agent Ã§alÄ±ÅŸtÄ±rmak gerekli deÄŸildir.

SQL komut dosyalarÄ± veritabanÄ± ÅŸemasÄ±nÄ± oluÅŸturma ve veri setini eklemek iÃ§in verilmektedir. Zabbix sunucusu veritabanÄ± da ÅŸema Ã¼stÃ¼nde veri kÃ¼mesi gerektirir iken Zabbix proxy veritabanÄ± sadece ÅŸema gerekiyor.

Bir Zabbix veritabanÄ± yarattÄ±ÄŸÄ±nÄ±zda, Zabbix derlemek iÃ§in aÅŸaÄŸÄ±daki adÄ±mlarla devam edin.

1.4 KaynaklarÄ± YapÄ±landÄ±rma

Bir Zabbix sunucu veya proxy iÃ§in kaynaklar yapÄ±landÄ±rÄ±rken, kullanÄ±lacak veritabanÄ± tÃ¼rÃ¼nÃ¼ belirtmelisiniz. Sadece bir veritabanÄ± tÃ¼rÃ¼ bir anda bir sunucu veya proxy sÃ¼reci ile derlenmiÅŸ olabilir.

Ã‡Ä±karÄ±lan Zabbix kaynak dizin Ã§alÄ±ÅŸtÄ±rmak iÃ§inde tÃ¼m desteklenen yapÄ±landÄ±rma seÃ§enekleri gÃ¶rmek iÃ§in:

./configure --help

Bir Zabbix sunucu ve ajan iÃ§in kaynaklarÄ±nÄ± yapÄ±landÄ±rmak iÃ§in Ã§alÄ±ÅŸtÄ±rabilirsiniz:

./configure --enable-server --enable-agent --with-mysql --enable-ipv6 --with-net-snmp --with-libcurl --with-libxml2

Bir Zabbix sunucusu(PostgreSQL vb) kaynaklarÄ±nÄ± yapÄ±landÄ±rmak iÃ§in Ã§alÄ±ÅŸtÄ±rabilirsiniz:

./configure --enable-server --with-postgresql --with-net-snmp

Bir Zabbix proxy(SQLite vb) kaynaklarÄ±nÄ± yapÄ±landÄ±rmak iÃ§in Ã§alÄ±ÅŸtÄ±rabilirsiniz:

./configure --prefix=/usr --enable-proxy --with-net-snmp --with-sqlite3 --with-ssh2

Bir Zabbix agent kaynaklarÄ±nÄ± yapÄ±landÄ±rmak iÃ§in Ã§alÄ±ÅŸtÄ±rabilirsiniz:

./configure --enable-agent

BaÄŸlantÄ± kitaplÄ±klarÄ±nÄ± statik ÅŸekilde baÄŸlamak iÃ§in --enable-statik flag kullanabilirsiniz. FarklÄ± sunucular arasÄ±nda derlenmiÅŸ ikililer daÄŸÄ±tmak iÃ§in planlÄ±yorsanÄ±z, gerekli kÃ¼tÃ¼phaneler olmadan bu ikili iÅŸ yapmak iÃ§in bu flag 'i kullanmalÄ±sÄ±nÄ±z. Solaris altÄ±nda Ã§alÄ±ÅŸmayan --enable-static ' i unutmayÄ±n.

1.5 HerÅŸeyi yÃ¼kleme

make install

Bu adÄ±m yeterli izinleri ( sudo kullanarak veya yaygÄ±n 'root') ile bir kullanÄ±cÄ± olarak Ã§alÄ±ÅŸtÄ±rÄ±lmalÄ±dÄ±r.

/usr/local/sbin 'deki daemon ikilileri (zabbix\_server, zabbix\_agentd, zabbix\_proxy) ve /usr/local/bin 'deki client ikilileri (zabbix\_get, zabbix\_sender) yÃ¼kleyerek 'make install' Ã§alÄ±ÅŸtÄ±rÄ±lÄ±r.

1.6 Ä°nceleme ve dÃ¼zenleme yapÄ±landÄ±rma dosyalarÄ±

-   Zabbix agent yapÄ±landÄ±rma dosyasÄ± /usr/local/etc/zabbix\_agentd.conf dÃ¼zenlemek

YÃ¼klÃ¼ zabbix\_agentd ile her host iÃ§in bu dosyayÄ± yapÄ±landÄ±rmanÄ±z gerekir.

Dosyadaki Zabbix sunucusunun IP adresini belirtmeniz gerekir. DiÄŸer bilgisayarlardan gelen baÄŸlantÄ±lar reddedilir.

-   Zabbix server yapÄ±landÄ±rma dosyasÄ± /usr/local/etc/zabbix\_server.conf dÃ¼zenlemek

VeritabanÄ± adÄ±, kullanÄ±cÄ± ve ÅŸifre belirtmelisiniz.

EÄŸer kÃ¼Ã§Ã¼k bir kurulum (en fazla on tane izlenilen host) varsa, parametrelerin kalanÄ± default size uygun olacaktÄ±r. EÄŸer Zabbix sunucusu (veya proxy) performansÄ±nÄ± en Ã¼st dÃ¼zeye Ã§Ä±karmak istiyorsanÄ±z varsayÄ±lan parametreleri deÄŸiÅŸtirmek gerekir. Daha fazla bilgi iÃ§in performans ayarlama bÃ¶lÃ¼mÃ¼ne bakÄ±n.

-   Bir Zabbix proxy yÃ¼klediyseniz, /usr/local/etc/zabbix\_proxy.conf proxy yapÄ±landÄ±rma dosyasÄ±nÄ± dÃ¼zenlemek

Sunucunun IP adresini ve proxy sunucu adÄ±nÄ±nÄ±n(sunucunun bilinmesi gerekir) yanÄ± sÄ±ra, veritabanÄ± adÄ±, kullanÄ±cÄ± ve ÅŸifre belirtmelisiniz.

1.7 Daemonds baÅŸlama

Sunucu tarafÄ±nda zabbix\_server Ã§alÄ±ÅŸtÄ±rÄ±n.

shell&gt; zabbix\_server

TÃ¼m izlenen makinelerde zabbix\_agentd Ã§alÄ±ÅŸtÄ±rÄ±n.

shell&gt; zabbix\_agentd

EÄŸer Zabbix vekil kurduysanÄ±z, Zabbix vekil Ã§alÄ±ÅŸtÄ±rÄ±n.

shell&gt; zabbix\_proxy

**2.Zabbix web arayÃ¼zÃ¼ yÃ¼kleme**

*PHP dosyalarÄ±nÄ± kopyalama*

PHP ile yazÄ±lmÄ±ÅŸ Zabbix Ã¶nyÃ¼zÃ¼ bir PHP desteklenen web sunucusunu Ã§alÄ±ÅŸtÄ±rmak iÃ§in gereklidir. Kurulum sadece web sunucusu HTML belgeleri dizinine frontends / php 'den PHP dosyalarÄ± kopyalayarak yapÄ±lÄ±r.

Apache web sunucularÄ± iÃ§in HTML belgeleri dizinleri ortak locationlarÄ± ÅŸunlardÄ±r:

-   /usr/local/apache2/htdocs

-   /usr/local/apache2/htdocs

-   /var/www/html (Fedora, RHEL, CentOS)

-   /var/www (Debian, Ubuntu)

HTML root yerine bir alt dizin kullanÄ±lmasÄ± tavsiye edilir. Bir alt dizin oluÅŸturmak ve iÃ§ine Zabbix Ã¶nyÃ¼z dosyalarÄ±nÄ± kopyalamak iÃ§in, gerÃ§ek dizin yerine, aÅŸaÄŸÄ±daki komutlarÄ± Ã§alÄ±ÅŸtÄ±rÄ±n:

mkdir &lt;htdocs&gt;/zabbix

cd frontends/php

cp -a . &lt;htdocs&gt;/zabbix

SVN yÃ¼kleme ve Ä°ngilizce dÄ±ÅŸÄ±nda baÅŸka bir dil kullanmayÄ± planlÄ±yorsanÄ±z, Ã§eviri dosyalarÄ± oluÅŸturmak gerekir. Bunu yapmak iÃ§in, Ã§alÄ±ÅŸtÄ±rÄ±n:

locale/make\_mo.sh

Msgfmt gereken gettext paketinden yararlanÄ±r.

*Frontend yÃ¼kleme*

TarayÄ±cÄ±nÄ±zda Zabbix URL: http: // &lt;server\_ip\_or\_name&gt; / Zabbix aÃ§Ä±n.

Ã–nyÃ¼z kurulum sihirbazÄ±nÄ±n ilk ekranÄ±nÄ± gÃ¶receksiniz.

![](https://www.zabbix.com/documentation/2.4/_media/manual/installation/install_1.png?cache=)
TÃ¼m yazÄ±lÄ±m Ã¶nkoÅŸullarÄ± yerine getirildiÄŸinden emin olun.

![](https://www.zabbix.com/documentation/2.4/_media/manual/installation/install_2.png?cache=)

VeritabanÄ±na baÄŸlanmak iÃ§in ayrÄ±ntÄ±larÄ± girin. Zabbix veritabanÄ± zaten oluÅŸturulmasÄ± gerekir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/installation/install_3.png?cache=)
Zabbix sunucu ayrÄ±ntÄ±larÄ±nÄ± girin.

![](https://www.zabbix.com/documentation/2.4/_media/manual/installation/install_4.png?cache=)
AyarlarÄ±nÄ±n bir Ã¶zetini gÃ¶zden geÃ§irin.

![](https://www.zabbix.com/documentation/2.4/_media/manual/installation/install_5.png?cache=)
YapÄ±landÄ±rma dosyasÄ±nÄ± indirin ve conf / dizini altÄ±ndaki yerleÅŸtirin.

![](https://www.zabbix.com/documentation/2.4/_media/manual/installation/install_6.png?cache=)

![](https://www.zabbix.com/documentation/2.4/_media/manual/installation/saving_zabbix.conf.png?cache=)

Kurulumu bitirme

![](https://www.zabbix.com/documentation/2.4/_media/manual/installation/install_7.png?cache=)
Zabbix Ã¶nyÃ¼z hazÄ±r! VarsayÄ±lan kullanÄ±cÄ± adÄ± admin, ÅŸifre zabbix .

**3.5 YÃ¼kseltme ProsedÃ¼rÃ¼**

Bu bÃ¶lÃ¼m Zabbix 2.2.x'den 2.4'e baÅŸarÄ±lÄ± bir yÃ¼kseltme iÃ§in gerekli adÄ±mlarÄ± saÄŸlar.

1.Zabbix sunucuyu durdurma

HiÃ§bir yeni verinin veritabanÄ±na ekli olmadÄ±ÄŸÄ±ndan emin olmak iÃ§in Zabbix sunucusunu durdurun.

2.Mevcut Zabbix veritabanÄ±nÄ± yedekleme

Bu Ã§ok Ã¶nemli bir adÄ±mdÄ±r. VeritabanÄ±nÄ±n yedeÄŸi olduÄŸundan emin olun. YÃ¼kseltme prosedÃ¼rÃ¼ (disk alanÄ±, gÃ¼Ã§ off eksikliÄŸi, beklenmedik bir sorun) baÅŸarÄ±sÄ±z olursa o yardÄ±mcÄ± olacaktÄ±r.

3.YapÄ±landÄ±rma dosyalarÄ±, PHP dosyalarÄ± ve Zabbix ikili yedekleme

Zabbix ikililer, yapÄ±landÄ±rma dosyalarÄ± ve PHP dosyalarÄ±nÄ±n bir yedek kopyasÄ±nÄ± yapÄ±n.

4\. Yeni sunucu ikililer yÃ¼kleme

Ã–nceden derlenmiÅŸ ikililer kullanabilir veya kendiniz derleyin.

5\. Sunucu yapÄ±landÄ±rma parametreleri deÄŸerlendirme

zabbix\_server.conf 'un bazÄ± parametreleri 2,2 sÃ¼rÃ¼mÃ¼ndekinden deÄŸiÅŸmiÅŸ olabilir, yeni parametreler eklendi. OnlarÄ± gÃ¶zden geÃ§irmek isteyebilirsiniz.

6.Yeni Zabbix binaries'e baÅŸlama

Yeni ikilileri baÅŸlatÄ±n. Ä°kililer baÅŸarÄ±yla baÅŸlatÄ±lÄ±p baÅŸlatÄ±lmadÄ±ÄŸÄ±nÄ± gÃ¶rmek iÃ§in gÃ¼nlÃ¼k dosyalarÄ± kontrol edin.

Zabbix sunucusu veritabanÄ±nÄ± otomatik olarak yÃ¼kseltir.

Sunucuyu baÅŸlamadan Ã¶nce:

-   veritabanÄ±nÄ±n kullanÄ±cÄ± yeterli izinleri (dizin damla, dizin oluÅŸturmak, Tablo bÄ±rakma, tablo oluÅŸturmak) olduÄŸundan emin olun.

-   Yeterli boÅŸ disk alanÄ± olduÄŸundan emin olun.

Zabbix sunucusu otomatik olarak sadece Zabbix 2.0.x den 2.4 veritabanÄ±nÄ± yÃ¼kseltmek olacaktÄ±r. Ã–nceki sÃ¼rÃ¼mlerden yÃ¼kseltmek iÃ§in 2.0 ve Ã¶nceki Zabbix belgelerine bakÄ±n.

7.Yeni Zabbix web arayÃ¼zÃ¼ yÃ¼kleme

YÃ¼kleme yÃ¶nergelerini izleyin.

**3.6 Bilinen Sorunlar**

YapÄ±landÄ±rma formlarÄ±nda Enter'a basma problemleri

Bir yapÄ±landÄ±rma formunun metin alanÄ±nda Enter'a basma Ã§eÅŸitli sorunlara neden olduÄŸu bilinmektedir.

Ã–rneÄŸin, baÄŸlÄ± ÅŸablonlar ile bir hostun yapÄ±landÄ±rma formu aÃ§arsanÄ±z, sonra formu herhangi bir metin alanÄ±na girin ve gÃ¼ncelleme tuÅŸuna basÄ±n, ÅŸablon baÄŸlantÄ±sÄ± kaldÄ±rÄ±lÄ±r.

IPMI Kontrolleri

IPMI kontrolleri Debian / Ubuntu paketinden standart OpenIPMI kÃ¼tÃ¼phanesi ile Ã§alÄ±ÅŸmaz.

SSH Kontrolleri

libssh2 kÃ¼tÃ¼phane paketleri yÃ¼klÃ¼yse Debian, Ubuntu gibi bazÄ± Linux daÄŸÄ±tÄ±mlarÄ± (parola ile) ÅŸifreli Ã¶zel anahtarlarÄ± desteklemez.

ODBC Kontrolleri

MySQL kullanan Zabbix sunucusu veya proxy kendi veritabanÄ± veya veritabanÄ±na baÄŸlÄ± yukardaki hatadan dolayÄ± MySQL ODBC kÃ¼tÃ¼phanesi ile dÃ¼zgÃ¼n Ã§alÄ±ÅŸmÄ±yor olabilir.

HTTPS Kontrolleri

Hedef sunucu aÅŸaÄŸÄ±daki TLSv1.0 protokolÃ¼ veya vermemek iÃ§in yapÄ±landÄ±rÄ±lmÄ±ÅŸ ise https protokolÃ¼ ve Zabbix ajan kontrolleri kullanarak Web senaryolarÄ± net.tcp.service \[https ...\] ve net.tcp.service.perf \[https ...\] baÅŸarÄ±sÄ±z olabilir.

Web Ä°zleme

"SSL doÄŸrulamak akran" web senaryolarda etkin olduÄŸunda, yukardaki hatadan dolayÄ± Zabbix sunucusu CentOS 6, CentOS 7 ve muhtemelen diÄŸer ilgili Linux daÄŸÄ±tÄ±mlarÄ±nda bellek sÄ±zdÄ±rÄ±yor.

YavaÅŸ MySQL SorgularÄ±

Zabbix sunucusu Ã¶ÄŸeler iÃ§in mevcut olmayan deÄŸerler sÃ¶z konusu olduÄŸunda yavaÅŸ SeÃ§me sorgularÄ± oluÅŸturur. Bu MySQL 5.6 / 5.7 sÃ¼rÃ¼mlerinde bilinen bir sorun nedeniyle oluÅŸur.

**3.7 Åablon DeÄŸiÅŸiklikleri**

Bu sayfa Zabbix ile birlikte gelen stok ÅŸablonlar tÃ¼m deÄŸiÅŸiklikleri listeler. Mevcut kurulumlarda bu ÅŸablonlarÄ± deÄŸiÅŸtirmek iÃ§in Ã¶nerilmektedir - deÄŸiÅŸikliklere baÄŸlÄ± olarak, en son sÃ¼rÃ¼mÃ¼nÃ¼ ekleyerek veya manuel deÄŸiÅŸiklik yaparak ya da yapÄ±labilir.

Åablon DeÄŸiÅŸiklikleri 2.4.0

DÃ¼ÄŸÃ¼m tabanlÄ± daÄŸÄ±tÄ±k izleme kaldÄ±rÄ±lmasÄ± nedeniyle, Ã§eÅŸitli deÄŸiÅŸiklikler Template App Zabbix Server tarafÄ±ndan yapÄ±lmÄ±ÅŸtÄ±r.

Åablon DeÄŸiÅŸiklikleri 2.4.5

DeÄŸer tÃ¼rÃ¼ Template OS AIX \[kthr, b\] 'de system.stat \[kthr, r\] system.stat\[kthr,b\] iÃ§in â€œNumeric (unsigned)â€ 'dan â€œNumeric (float)â€ olarak deÄŸiÅŸtirildi. Her iki Ã¼rÃ¼n de "Performans" uygulamasÄ± eklenmiÅŸtir.

Åablon DeÄŸiÅŸiklikleri 2.4.7

Template OS Windows 'deki vm.memory.size\[total\] â€œFilesystemsâ€ 'den â€œMemoryâ€ 'e taÅŸÄ±ndÄ±.

**4.HÄ±zlÄ± BaÅŸlangÄ±Ã§**

Bu bÃ¶lÃ¼mde nasÄ±l Zabbix'e giriÅŸ yapÄ±lacaÄŸÄ± ve sistem kullanÄ±cÄ±nÄ±n nasÄ±l kurulacaÄŸÄ±nÄ± Ã¶ÄŸreneceksiniz.

LOGIN

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/login.png?cache=)

Bu sayfa Zabbix "HoÅŸ Geldiniz" ekranÄ±dÄ±r. Bir Zabbix yetkili kullanÄ±cÄ±sÄ±nÄ±n oturum aÃ§mak iÃ§in ÅŸifre zabbix, kullanÄ±cÄ± adÄ± admin olarak giriÅŸ yapÄ±n.GiriÅŸ yaptÄ±ÄŸÄ±nÄ±zda, sayfanÄ±n saÄŸ alt kÃ¶ÅŸesindeki 'YÃ¶netici olarak baÄŸlandÄ±' yazÄ±sÄ±nÄ± gÃ¶receksiniz. YapÄ±landÄ±rma ve yÃ¶netim menÃ¼lerine eriÅŸim izni verilecektir.

*Kaba kuvvet saldÄ±rÄ±larÄ±na karÅŸÄ± koruma*

BeÅŸ ardÄ±ÅŸÄ±k baÅŸarÄ±sÄ±z oturum aÃ§ma giriÅŸimi durumunda, Zabbix arayÃ¼zÃ¼ kaba kuvvet ve sÃ¶zlÃ¼k saldÄ±rÄ±larÄ± Ã¶nlemek amacÄ±yla 30 saniye duraklar.

BaÅŸarÄ±sÄ±z bir giriÅŸ denemesinin IP adresi baÅŸarÄ±lÄ± bir giriÅŸten sonra gÃ¶sterilecektir.

**KullanÄ±cÄ± Ekleme**

KullanÄ±cÄ±lar hakkÄ±nda bilgi gÃ¶rÃ¼ntÃ¼lemek iÃ§in, Administration â†’ Users gidin ve aÃ§Ä±lÄ±r menÃ¼de Users seÃ§in.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/userlist.png?cache=)

-   BaÅŸlangÄ±Ã§ta Zabbixde tanÄ±mlanan sadece iki kullanÄ±cÄ± var.

-   'Admin' kullanÄ±cÄ± tam izinleri olan Zabbix superuser' dÄ±r. 'Guest' kullanÄ±cÄ± varsayÄ±lan kullanÄ±cÄ±dÄ±r. EÄŸer giriÅŸ yaptÄ±ysanÄ±z, 'guest' izinleriyle Zabbix'e eriÅŸebilirsiniz.

Yeni bir kullanÄ±cÄ± eklemek iÃ§in, 'Create user' Ã¼zerine tÄ±klayÄ±n.

Yeni kullanÄ±cÄ± formunda, mevcut kullanÄ±cÄ± gruplarÄ±ndan birine kullanÄ±cÄ± gruplarÄ± eklediÄŸinizden emin olun, Ã¶rneÄŸin 'Network Administrators' .

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/new_user.png?cache=)

VarsayÄ±lan olarak, yeni kullanÄ±cÄ±larÄ±n kendileri iÃ§in tanÄ±mlanmÄ±ÅŸ herhangi bir ortam var. Bir tane oluÅŸturmak iÃ§in, "Media" sekmesine gidin ve 'Add' 'e tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/add_media.png?cache=)

Pop-up olarak, kullanÄ±cÄ±nÄ±n e-posta adresini girin.

Medium aktif olduÄŸunda varsayÄ±lan olarak etkin olacak bir sÃ¼re belirtmelisiniz.AyrÄ±ca medium etkin olacaÄŸÄ± iÃ§in tetikleyici ÅŸiddet seviyeleri Ã¶zelleÅŸtirebilirsiniz, ama hepsini ÅŸimdilik etkin bÄ±rakabilirsiniz.

Daha sonra kullanÄ±cÄ± Ã¶zelliklerinde 'Add' Ã¼zerine tÄ±klayÄ±n. Yeni kullanÄ±cÄ± kullanÄ±cÄ± listesinde gÃ¶rÃ¼ntÃ¼lenir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/userlist2.png?cache=)

**Ä°zin Ekleme**

VarsayÄ±lan olarak, yeni bir kullanÄ±cÄ± hosta eriÅŸmek iÃ§in hiÃ§bir izinleri yoktur. KullanÄ±cÄ± haklarÄ± vermek iÃ§in, Gruplar sÃ¼tunundaki kullanÄ±cÄ± grubuna tÄ±klayÄ±n (bu durumda - 'Network administrators''). Grup Ã¶zellikleri formunda, *Permissions* sekmesine gidin.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/1.9.7_group_permissions.png?cache=)

Bu kullanÄ±cÄ± Linux sunucularÄ± grubuna eriÅŸimi sadece okuma izni vardÄ±r, bÃ¶ylece 'Read Only' liste kutusunda 'Add' e tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/add_permissions.png?cache=)

Bu pop-up olarak, 'Linux servers' seÃ§eneÄŸinin yanÄ±ndaki onay kutusunu iÅŸaretleyin, ardÄ±ndan 'Select''i tÄ±klatÄ±n. Linux sunucular ilgili kutuda gÃ¶rÃ¼ntÃ¼lenir. KullanÄ±cÄ± grubu Ã¶zellikleri formunda Update'i tÄ±klatÄ±n.

**4.2 Yeni Host**

Bu bÃ¶lÃ¼mde yeni bir host kullanmayÄ± Ã¶ÄŸreneceksiniz.

Zabbix'de bir host izlemek istediÄŸiniz bir aÄŸlÄ± bir varlÄ±ktÄ±r. Zabbix'de host olmanÄ±n ne olduÄŸunun tanÄ±mÄ± esnektir. Bu fiziksel bir sunucu, bir aÄŸ anahtarÄ±, bir sanal makine ya da bazÄ± uygulamalar olabilir.

**Host ekleme**

Zabbix'de yapÄ±landÄ±rÄ±lan bilgisayarlar hakkÄ±nda bilgi Configuration â†’ Hosts mevcuttur.Burada 'Zabbix sunucusu' olarak adlandÄ±rÄ±lan Ã¶nceden tanÄ±mlanmÄ±ÅŸ host vardÄ±r, ama biz baÅŸka ekleyerek Ã¶ÄŸrenmek istiyoruz.

Yeni bir host eklemek iÃ§in, 'Create' 'e tÄ±klayÄ±n. Bu host yapÄ±landÄ±rma formu ile bize sunacak.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/new_host.png?cache=)

**Host ismi**

Ana bilgisayar adÄ±nÄ± girin. Alphanumerics, boÅŸluk, nokta, tire ve alt Ã§izgi izin verilir.

**Gruplar**

SaÄŸ taraf seÃ§me kutusundan bir veya birkaÃ§ gruplarÄ± seÃ§mek ve bunlarÄ± taÅŸÄ±mak iÃ§in 'In groupons' selectbox 'a taÅŸÄ±ma seÃ§eneÄŸini tÄ±klayÄ±nÄ±z.

**IP Adresi**

Ana bilgisayarÄ±n IP adresini girin. Bu Zabbix sunucusu IP adresi ise, bu Zabbix agent yapÄ±landÄ±rma dosyasÄ± 'Server' yÃ¶nergesinde belirtilmesi gerektiÄŸini unutmayÄ±n.

DiÄŸer seÃ§enekler iÃ§in ÅŸimdilik varsayÄ±lan uygun olacaktÄ±r.

BittiÄŸinde, 'Add' i tÄ±klatÄ±n. Yeni host, host listesinde gÃ¶rÃ¼nÃ¼r olmalÄ±dÄ±r.

**4.3 New item**

*Ä°tem Ekleme*

TÃ¼m Ã¶ÄŸeler ana bilgisayarlar etrafÄ±nda toplanmÄ±ÅŸtÄ±r. Bu yÃ¼zden Ã¶geleri yapÄ±landÄ±rmak iÃ§in **Configuration â†’ Hosts** gideriz ve oluÅŸturduÄŸumuz Ã¶geyi buluruz.

Yeni hostun satÄ±rÄ±nda '0' sayÄ±sÄ±nÄ± gÃ¶stermesi gerekir. Linke tÄ±klayÄ±n ve ardÄ±ndan 'Cretae item' tÄ±klayÄ±n. Bu bir madde tanÄ±mlama formu ile bize sunacak.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/new_item.png?cache=)

Bizim Ã¶rnek Ã¶ÄŸesi iÃ§in, gerekli bilgiler:

Name:

DeÄŸer olarak CPU Load girin. Bu listelerde ve baÅŸka bir yerde gÃ¶rÃ¼ntÃ¼lenen Ã¶ÄŸe adÄ± olacaktÄ±r.

Key:

DeÄŸer olarak system.cpu.load girin. Bu toplanacak bilgi tÃ¼rÃ¼nÃ¼ tanÄ±mlayan bir Ã¶ÄŸenin bir teknik adÄ±dÄ±r. Anahtar sadece bir Zabbix agent ile gelen Ã¶nceden tanÄ±mlanmÄ±ÅŸ anahtardÄ±r.

Type of information:

Burada SayÄ±sal (float) seÃ§in. Bu Ã¶zellik beklenen verinin biÃ§imini tanÄ±mlar.

DiÄŸer seÃ§enekler ÅŸimdilik varsayÄ±lan uygun olacaktÄ±r.

BittiÄŸinde, Save 'i tÄ±klatÄ±n. Yeni item listesinde gÃ¶rÃ¼nmesi gerekir. Tam ne yapÄ±ldÄ±ÄŸÄ±nÄ± gÃ¶rmek iÃ§in listesinin Ã¼stÃ¼ndeki Details tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/1.9.7_item_created.png?cache=)

**4.4 New Trigger**

**Trigger ekleme**

Ã–ge iÃ§in tetikleyici yapÄ±landÄ±rmak amacÄ±yla Configuration-&gt;Host gidin, 'New host' bulun ve yanÄ±ndaki Trigger tÄ±klatÄ±n ve sonra tetiÄŸi oluÅŸturun. Bu tetikleyici tanÄ±m formu ile bize sunuyor.
![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/new_trigger.png?cache=)
Tetikleyici iÃ§in gerekli bilgiler:

Name:

DeÄŸer olarak 3 dakika boyunca 'New host' Ã§ok yÃ¼ksek CPU load girin. Bu listelerde gÃ¶rÃ¼ntÃ¼lenen tetik adÄ± olacaktÄ±r.

Expression:

Enter: {New host:system.cpu.load.avg(180)}&gt;2

**4.5 Sorun Bildirimi Alma**

E-mail ayarlarÄ±

BaÅŸlangÄ±Ã§ta Zabbix birkaÃ§ Ã¶nceden tanÄ±mlanmÄ±ÅŸ bildirim teslimat yÃ¶ntemleri vardÄ±r. E-mail bunlardan biridir.

E-mail ayarlarÄ±nÄ± yapÄ±landÄ±rmak iÃ§in Administration-&gt; Media types gidin ve Ã–nceden tanÄ±mlanmÄ±ÅŸ ortam tÃ¼rleri listesinde E-mail tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/media_types.png?cache=)

Bu e-posta ayarlarÄ± tanÄ±m formu ile bize sunacak.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/media_type_email.png?cache=)

OrtamÄ±nÄ±za uygun SMTP sunucusu, SMTP helo ve SMTP e-posta deÄŸerlerini ayarlayÄ±n.

HazÄ±rsanÄ±z Save tÄ±klayÄ±n.

Åimdi bir Ã§alÄ±ÅŸma ortam tÃ¼rÃ¼ olarak 'E-posta' yapÄ±landÄ±rÄ±n. Bir ortam tÃ¼rÃ¼ aksi halde kullanÄ±lmayacaktÄ±r, (yeni bir kullanÄ±cÄ± yapÄ±landÄ±rÄ±rken yaptÄ±ÄŸÄ±mÄ±z gibi) Belirli teslim adreslerini tanÄ±mlayarak kullanÄ±cÄ±larÄ±n baÄŸlantÄ±lÄ± olmasÄ± gerekir.

New Action

Bildirimleri iletmek Zabbix de en Ã¶nemli olaylardan biridir. Bu nedenle, kurulum iÃ§in bir bildirim, Configuration â†’ Actions gidin ve Create Action Ã¼zerine tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/new_action.png?cache=)

Bu formda, eylem iÃ§in bir ad girin.

Ã‡oÄŸu durumda, eÄŸer daha fazla Ã¶zel durum eklemezsek eylem 'Problem' iÃ§in 'OK' durumuna gelecektir.

Biz eylemin ne yapmasÄ± gerektiÄŸini tanÄ±mlamamÄ±z gerekir. Yeni bir Ã§alÄ±ÅŸma ÅŸeklini aÃ§Ä±n, orada New Ã¼zerine tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/new_operation.png?cache=)

Burada, kullanÄ±cÄ±larÄ± engellemek iÃ§in *Add* in the *Send* Ã¼zerine tÄ±klayÄ±n ve tanÄ±mladÄ±ÄŸÄ±nÄ±z kullanÄ±cÄ±yÄ± seÃ§in. *Send only* deÄŸeri olarak 'E-mail' seÃ§eneÄŸini seÃ§in. TamamladÄ±ÄŸÄ±nÄ±zda, Add Ã¼zerine tÄ±klayÄ±n.

Hepsi basit bir olay yapÄ±landÄ±rmasÄ± iÃ§in, yani olay formunda Save'i tÄ±klatÄ±n.

UyarÄ±larÄ± Alma

YapÄ±landÄ±rÄ±lmÄ±ÅŸ bildirimleri iletmek komik olabilirdi. YardÄ±mcÄ± olmak iÃ§in, bilerek hostumuz Ã¼zerindeki yÃ¼kÃ¼ni artÄ±rabilir.

Hostu aÃ§Ä±n ve Ã§alÄ±ÅŸtÄ±rÄ±n:

cat /dev/urandom | md5sum

Åimdi â†’ *Monitoring â†’ Latest data* gidin ve 'CPU Load' deÄŸerleri artmÄ±ÅŸtÄ±r gÃ¶rÃ¼yoruz. 'CPU Load' deÄŸeri 3 dakikadÄ±r Ã§alÄ±ÅŸan '2' e gideriz.

-   in *Monitoring â†’ Triggers* yanÄ±p sÃ¶nen 'Problem' durumu ile tetiÄŸi gÃ¶rmelisiniz.

-   E-posta da bir sorun bildirim alacaksÄ±nÄ±z.

**4.6 New Template**

Bu bÃ¶lÃ¼mde ÅŸablonun nasÄ±l kurulacaÄŸÄ±nÄ± Ã¶ÄŸreneceksiniz.

Template Ekleme

Åablonlarla Ã§alÄ±ÅŸmaya baÅŸlamak iÃ§in, Ã¶ncelikle bir hesap oluÅŸturmanÄ±z gerekir. Bunu yapmak iÃ§in, Configuration â†’ Templates Create Ã¼zerine tÄ±klayÄ±n. Bu ÅŸablon yapÄ±landÄ±rma formu ile bize sunacak.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/new_template.png?cache=)
Gerekli parametreler:

Template Name:\
Bir ÅŸablon adÄ±nÄ± girin. AlfanÃ¼merik, boÅŸluk ve alt Ã§izgi izin verilir.

Groups:

SaÄŸ taraf seÃ§me kutusundan bir veya birkaÃ§ gruplarÄ± seÃ§mek ve bunlarÄ± taÅŸÄ±mak iÃ§in selectbox 'gruplarÄ±n iÃ§inde' tÄ±klayÄ±n. Åablon bir gruba ait olmalÄ±dÄ±r.

BittiÄŸinde, Save 'i tÄ±klatÄ±n. Yeni ÅŸablon ÅŸablonlar listesinde gÃ¶rÃ¼nÃ¼r olmalÄ±dÄ±r.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/template_list.png?cache=)

GÃ¶rdÃ¼ÄŸÃ¼nÃ¼z gibi, ÅŸablon var, ama o hiÃ§bir ÅŸey tutmaz- hiÃ§bir Ã¼rÃ¼n, tetikler veya diÄŸer varlÄ±klar.

**Åablona item ekleme**

Åablona bir Ã¶ÄŸe eklemek iÃ§in, 'New host' iÃ§in Ã¶ÄŸe listesine gidin. Configuration â†’ Hosts da 'New Host' yanÄ±ndaki Item tÄ±klayÄ±n.

-   Listede 'CPU Load' Ã¶ÄŸenin onay kutusunu iÅŸaretleyin.

-   Kopya listesinin altÄ±ndaki aÃ§Ä±lÄ±r menÃ¼de ... Copy seÃ§in ve Go tÄ±klayÄ±n

-   Ã–ÄŸeyi kopyalamak iÃ§in ÅŸablonu seÃ§in.

![](https://www.zabbix.com/documentation/2.4/_media/manual/quickstart/copy_to_template.png?cache=)

-   Copy tÄ±klayÄ±n.
Åimdi Configuration â†’ Template gittiÄŸinizde, 'New Template' iÃ§inde yeni bir Ã¶ÄŸe olmalÄ±dÄ±r.

**5.Zabbix CihazÄ±**

BaÅŸlamak iÃ§in, cihazÄ± boot etmek ve DHCP Ã¼zerinden aldÄ±ÄŸÄ± IP adresinden tarayÄ±cÄ±nÄ±zÄ± iÅŸaretlemektedir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/zabbix_appliance_booting_2.4.png?cache=)
  Booting Zabbix appliance
  --------------------------

Zabbix cihaz sÃ¼rÃ¼mleri aÅŸaÄŸÄ±daki OpenSUSE sÃ¼rÃ¼mleri dayanmaktadÄ±r:

  -------------------------------------------------------------
    **Zabbix appliance version**       **OpenSUSE version**
    ------------------------------     ----------------------
                                     
                                     
  ---------------------------------- --------------------------
  **2.0.0**                          **12.1**

  **2.0.2**                          **12.1**

  **2.0.3**                          **12.1**

  **2.0.4**                          **12.4**

  **2.0.5**                          **12.4**
  -------------------------------------------------------------

AÅŸaÄŸÄ±daki formatlarda mevcuttur:

-   vmdk

-   OVF

-   VHD

-   CD iso

-   HDD/ flash image

-   Xen guest

Bu Zabbix yapÄ±landÄ±rÄ±lmÄ±ÅŸ ve MySQL Ã¼zerinde Ã§alÄ±ÅŸan sunucu yanÄ± sÄ±ra mevcut Ã¶nyÃ¼ze de sahiptir.

1.SUSE Konfigurasyonunda DeÄŸiÅŸiklikler

Baz OpenSUSE yapÄ±landÄ±rmasÄ± uygulanan bazÄ± deÄŸiÅŸiklikler vardÄ±r.

1.1 MySQL konfigurasyon deÄŸiÅŸiklikleri

-   Ä°kili loglar devre dÄ±ÅŸÄ±dÄ±r.

-   InnoDB ayrÄ± bir dosyada her tablo iÃ§in veri depolamak iÃ§in yapÄ±landÄ±rÄ±lmÄ±ÅŸtÄ±r.

1.2 Statik IP Adresi kullanma

VarsayÄ±lan olarak cihaz IP adresi almak iÃ§in DHCP kullanÄ±r. Statik IP adresi belirtmek iÃ§in:

-   Root kullanÄ±cÄ± olarak giriÅŸ yapÄ±n.

-   EditÃ¶rÃ¼nÃ¼zde */etc/sysconfig/network/ifcfg-eth0* dosyasÄ±nÄ± aÃ§Ä±n.

-   **BOOTPROTO** deÄŸiÅŸkeni statik olarak ayarlayÄ±n.

-   AÄŸÄ±nÄ±z iÃ§in gerekli olan **IPADDR, NETMASK** ve diÄŸer parametreleri ayarlayÄ±n.

-   */etc/sysconfig/network/routes* dosyasÄ±nÄ± oluÅŸturun. VarsayÄ±lan olarak, **default 192.168.1.1** kullanÄ±n.

-   **rcnetwork restart**. Komutunu Ã§alÄ±ÅŸtÄ±rÄ±n.

DNS yapÄ±landÄ±rmak iÃ§in nameserver 192.168.1.2 belirterek, /etc/resolv.conf dosyasÄ±nda nameserver girdileri eklenir.

1.3 Saat dilimini deÄŸiÅŸtirme

VarsayÄ±lan olarak cihaz sistem saati UTC kullanÄ±r. Zaman dilimini deÄŸiÅŸtirmek iÃ§in, / usr / share / zoneinfo dosyasÄ±nÄ± / etc / localtime kopyalayÄ±n, Ã¶rneÄŸin:

cp /usr/share/zoneinfo/Europe/Riga /etc/localtime

2.Zabbix Konfigurasyonu

Cihaz Zabbix kurulumu aÅŸaÄŸÄ±daki ÅŸifreleri ve diÄŸer yapÄ±landÄ±rma deÄŸiÅŸiklikleri vardÄ±r:

2.1 Åifre

System:

-   root:zabbix

-   zabbix:zabbix

Database:

-   root:zabbix

-   zabbix:zabbix

Zabbix frontend:

-   Admin:zabbix

VeritabanÄ± kullanÄ±cÄ± parolasÄ±nÄ± deÄŸiÅŸtirmek iÃ§in aÅŸaÄŸÄ±daki konumlarda deÄŸiÅŸtirilmelidir :

-   MySQL;

-   zabbix\_server.conf;

-   Zabbix.conf.php

2.2 Dosya KonumlarÄ±

-   Configuration files are placed in **/etc**.

-   Zabbix logfiles are placed in **/var/log/zabbix**.

-   Zabbix frontend is placed in **/usr/share/zabbix**.

-   Home directory for user **zabbix** is **/var/lib/zabbix**.

2.3 Zabbix Konfigurasyonunda DeÄŸiÅŸiklikler

-   Zabbix Ã¶nyÃ¼z iÃ§in Sunucu adÄ± â€œZabbix 2.0 Applianceâ€ olarak ayarlanmÄ±ÅŸ;

-   Frontend zaman dilimi Avrupa / Riga, Zabbix home olarak ayarlanmÄ±ÅŸtÄ±r;

-   Tetikleyicileri engellemek ve web senaryolarÄ± karÄ±ÅŸÄ±klÄ±ÄŸÄ± azaltmak iÃ§in varsayÄ±lan olarak gÃ¶sterilir.

2.4 YapÄ±landÄ±rmanÄ±n KorunmasÄ±

EÄŸer cihazÄ±n CD sÃ¼rÃ¼mÃ¼nÃ¼ Ã§alÄ±ÅŸtÄ±rÄ±yorsanÄ±z veya baÅŸka nedenlerle kalÄ±cÄ± depolama yapamÄ±yorsanÄ±z, tÃ¼m yapÄ±landÄ±rmaya dahil olmak Ã¼zere tÃ¼m veritabanÄ±nÄ±n yedeÄŸini oluÅŸturmuÅŸ ve veri toplamÄ±ÅŸ olabilir.

Yedekleme yapmak iÃ§in :

mysqldump zabbix | bzip2 -9 &gt; dbdump.bz2

CihazÄ±n aktarmak ve yÃ¼rÃ¼tmek, yedekten geri yÃ¼klemek iÃ§in:

bzcat dbdump.bz2 | mysql zabbix

3.Frontend EriÅŸimi

VarsayÄ±lan olarak Ã¶nyÃ¼z eriÅŸim dan izin verilir:

-   127.0.0.1

-   192.168.0.0/16

-   10.0.0.0/8

-   ::1

Root (/) sunucuda /zabbix yÃ¶nlendirilir. BÃ¶ylece Ã¶nyÃ¼z http hem // &lt;host&gt; hem de http: // &lt;host&gt; / Zabbix ulaÅŸabilir.

/etc/apache2/conf.d/zabbix.conf dosyasÄ± Ã¶zelleÅŸtirilebilir. Bu dosyayÄ± deÄŸiÅŸtirdikten sonra web sunucusunu yeniden baÅŸlatmanÄ±z gerekebilir. Bunu yapmak iÃ§in, root ve yÃ¼rÃ¼tme olarak SSH kullanarak giriÅŸ yapÄ±n:

service apache2 restart

4.Firewall

VarsayÄ±lan olarak, yalnÄ±zca iki port aÃ§Ä±k - 22 (SSH) ve 80 (HTTP). Ek baÄŸlantÄ± noktalarÄ±nÄ± aÃ§mak iÃ§in - Ã¶rneÄŸin, Zabbix sunucu ve agent portlarÄ± - SuSEfirewall2 programÄ± ile iptables kurallarÄ± deÄŸiÅŸtirin:

SuSEfirewall2 open EXT TCP zabbix-trapper zabbix-agent

Firewall kurallarÄ±nÄ± yenileme:

SuSEfirewall2 stop

SuSEfirewall2 start

5.Ä°zleme Kapasitesi

Zabbix sunucusu aÅŸaÄŸÄ±dakilerin desteÄŸi ile derlenmiÅŸ:

-   SNMP;

-   IPMI;

-   Web monitoring;

-   SSH2;

-   IPv6.

![](https://www.zabbix.com/documentation/2.4/_media/manual/appliance_webmon_2.4.png?cache=)

  Zabbix appliance monitoring own web frontend
  ----------------------------------------------

6\. Ä°simlendirme, BaÅŸlatma ve DiÄŸer Scriptler

Uygun baÅŸlatma scriptleri saÄŸlanmaktadÄ±r. Zabbix sunucusunu kontrol etmek iÃ§in, bunlardan herhangi birini kullanabilirsiniz:

service zabbix\_server status

rczabbix\_server status

/etc/init.d/zabbix\_server status

Zabbix agent arka plan programÄ± iÃ§in agent ile sunucuyu deÄŸiÅŸtirin.

6.1 PlanlanmÄ±ÅŸ Scriptler

/var/lib/zabbix/bin Ã§alÄ±ÅŸmÄ±yorsa, Zabbix sunucuyu her 10 dakikada bir crontab Ã§alÄ±ÅŸtÄ±rmak zamanlanmÄ±ÅŸ senaryo olarak yeniden baÅŸlatÄ±r. Bu timestamped sorunlarÄ±nÄ± ve /var/log/zabbix/server\_problems.log baÅŸlayan giriÅŸimleri kaydeder.

6.2 KullanÄ±labilir disk alanÄ±nÄ± artÄ±rma

CihazÄ±n mevcut disk alanÄ± yeterli olmayabilir. Bu durumda, diski geniÅŸletmek mÃ¼mkÃ¼ndÃ¼r. Bunu yapmak iÃ§in, Ã¶ncelikle, sonra sanallaÅŸtÄ±rma ortamÄ±nda blok aygÄ±tÄ± geniÅŸletmek iÃ§in aÅŸaÄŸÄ±daki adÄ±mlarÄ± izleyin.

BÃ¶lÃ¼m boyutunu deÄŸiÅŸtirmek iÃ§in fdisk'i baÅŸlatÄ±n. Root olarak yÃ¼rÃ¼tme:\
fdisk /dev/sda

Bu sda diskinde fdisk baÅŸlatacaktÄ±r.

U

Fdisk isteminde aÅŸaÄŸÄ±daki diziyi girin:

D

n

p

1

(accept default 63)

(accept default max)

EÄŸer ek bÃ¶lÃ¼mler iÃ§in biraz boÅŸluk bÄ±rakmak isterseniz, last sector iÃ§in baÅŸka bir deÄŸer girebilirsiniz. BittiÄŸinde, dÃ¼zenlenmek suretiyle deÄŸiÅŸiklikleri kaydetme:

w

Sanal makineyi yeniden baÅŸlatÄ±n. Yeniden baÅŸlattÄ±ktan sonra, dosya sistemi yeniden boyutlandÄ±rma gerÃ§ekleÅŸebilir.

resize2fs /dev/sda1

**6.YapÄ±landÄ±rma**

**6.1 Hosts ve Hosts GruplarÄ±**

6.1.1 Host Konfigurasyonu

Zabbix Ã¶nyÃ¼z olarak bir dizi yapÄ±landÄ±rmak iÃ§in aÅŸaÄŸÄ±dakileri yapÄ±n:

-   *Configuration â†’ Hosts* gidin.

-   Create tÄ±klatÄ±n.

-   Host parametrelerini girin.

Host sekmesi genel host Ã¶zelliklerini iÃ§erir:

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/host_a.png?cache=)

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Parameter**          **Description**
  ---------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  *Host name*            Enter a unique host name. Alphanumerics, spaces, dots, dashes and underscores are allowed.\
                         Note: With Zabbix agent running on the host you are configuring, the agent [configuration file] parameter *Hostname* must have the same value as the host name entered here. The name in the parameter is needed in the processing of [active checks].

  *Visible name*         If you set this name, it will be the one visible in lists, maps, etc. This attribute has UTF-8 support.

  *Groups*               Select host groups the host belongs to. A host must belong to at least one host group.

  *New host group*       A new group can be created and linked to the host. Ignored, if empty.

  *Interfaces*           Several host interface types are supported for a host: *Agent*, *SNMP*, *JMX* and *IPMI*.\
                         To add a new interface, click on *Add* in the *Interfaces* block and enter *IP/DNS*, *Connect to* and *Port* info.\
                         Note: Interfaces that are used in any items cannot be removed and link *Remove* is greyed out for them.

  *IP address*           Host IP address (optional).

  *DNSname*              Host DNS name (optional).

  *Connect to*           Clicking the respective button will tell Zabbix server what to use to retrieve data from agents:\
                         IP - Connect to the host IP address (recommended)\
                         DNS - Connect to the host DNS name

  *Port*                 TCP/UDP port number. Default values are: 10050 for Zabbix agent, 161 for SNMP agent, 12345 for JMX and 623 for IPMI.

  *Default*              Check the radio button to set the default interface.

  *Monitored by proxy*   The host can be monitored either by Zabbix server or one of Zabbix proxies:\
                         (no proxy) - host is monitored by Zabbix server\
                         Proxy name - host is monitored by Zabbix proxy â€œProxy nameâ€

  *Status*               Host status:\
                         Monitored - Host is active, ready to be monitored\
                         Not monitored - Host is not active, thus not monitored
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Host grubu yapÄ±landÄ±rmasÄ±

Zabbix Ã¶nyÃ¼zde host grubu yapÄ±landÄ±rmak iÃ§in aÅŸaÄŸÄ±dakileri yapÄ±n:

-   *Configuration â†’ Host Groups* gidin.

-   Create tÄ±klatÄ±n.

-   Grup parametrelerini girin.

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/host_group.png?cache=)

  **Parameter**   **Description**
  --------------- ------------------------------------------------------------------------------------
  *Group name*    Enter a unique host group name. The name must be unique within a Zabbix node.
  *Hosts*         Select hosts, members of the group. A host group may have zero, one or more hosts.

6.1.2 Toplu GÃ¼ncelleme

Toplu gÃ¼ncelleme kullanma

BazÄ± host kitle gÃ¼ncelleme iÃ§in aÅŸaÄŸÄ±dakileri yapÄ±n:

-   Listede gÃ¼ncellemek iÃ§in host onay kutularÄ±nÄ± iÅŸaretleyin.

-   AÅŸaÄŸÄ±daki aÃ§Ä±lÄ±r menÃ¼den Mass update seÃ§in ve Go tÄ±klayÄ±n.

-   GÃ¼ncellemek iÃ§in Ã¶zniteliklerin onay kutularÄ±nÄ± iÅŸaretleyin.

-   Nitelikler iÃ§in yeni deÄŸerleri girin ve Kaydet Ã¼zerine tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/item_mass_update.png?cache=)

6.2 Items

6.2.1 Item OluÅŸturma

Zabbix Ã¶nyÃ¼z bir Ã¶ÄŸeyi oluÅŸturmak iÃ§in aÅŸaÄŸÄ±dakileri yapÄ±n:

-   Configurationâ†’ Hosts git.

-   Host satÄ±rÄ±nda Ã–ÄŸelere tÄ±klayÄ±n.

-   EkranÄ±n saÄŸ Ã¼st kÃ¶ÅŸesinde bulunan Create Item tÄ±klayÄ±n.

-   Ã–genin parametreleri girin.

YapÄ±landÄ±rma

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/item.png?cache=)

> 6.2.2 Item Ã‡eÅŸitleri
>
> Item Ã§eÅŸitleri Zabbix - Zabbix agent, Simple checks, SNMP, Zabbix internal, IPMI, JMX monitoring etc tarafÄ±ndan saÄŸlanan kontrollerin bir tÃ¼rÃ¼dÃ¼r.
>
> DiÄŸerleri Zabbix agent ya da Zabbix Java aÄŸ geÃ§idine ihtiyaÃ§ duyarken bazÄ± kontroller (ajan-az izleme gibi) tek baÅŸÄ±na Zabbix sunucusu tarafÄ±ndan gerÃ§ekleÅŸtirilir.
>
> Her Ã¶ÄŸe tÃ¼rÃ¼ne gerekli parametreleri belirtmek ve madde anahtarlarÄ±nÄ± destekleyen seti kullanmanÄ±z gerekir.
>
> 6.2.3 Tarih ve Trendler
>
> Tarih ve trendlerin Zabbix toplanan verileri depolamak iki yolu vardÄ±r.
>
> GeÃ§miÅŸi Saklama
>
> KaÃ§ gÃ¼n geÃ§miÅŸin tutulacaÄŸÄ±nÄ± ayarlayabilirsiniz.

-   Ã–ge Ã¶zellikleri formunda

-   Toplu gÃ¼ncelleme Ã¶geleri

> Herhangi bir eski veri silinecektir.
>
> Trendleri Saklama
>
> Trendler her saat en az, maksimum ve ortalama deÄŸerlerin kaydedildiÄŸi yerden yerleÅŸik bir tarihsel veri azaltma mekanizmasÄ±dÄ±r.
>
> KaÃ§ gÃ¼n trendlerin tutulacaÄŸÄ±nÄ± ayarlayabilirsiniz.

-   Ã–ge Ã¶zellikleri formunda

-   Toplu gÃ¼ncelleme Ã¶geleri

> 6.2.4 KullanÄ±cÄ± Parametreleri
>
> Bir kullanÄ±cÄ± parametre sÃ¶zdizimi aÅŸaÄŸÄ±daki gibidir:
>
> UserParameter=&lt;key&gt;,&lt;command&gt;
>
> GÃ¶rdÃ¼ÄŸÃ¼nÃ¼z gibi, bir kullanÄ±cÄ± parametre aynÄ± zamanda bir anahtar iÃ§erir. Bir Ã¶ÄŸeyi yapÄ±landÄ±rÄ±rken anahtar gerekli olacaktÄ±r. referans kolay olacak sizin seÃ§tiÄŸiniz bir anahtarÄ± girin. Agent yeniden baÅŸlatÄ±n.
>
> Basit kullanÄ±cÄ± parametreleri Ã¶rnekleri
>
> UserParameter=ping,echo 1
>
> Daha karmaÅŸÄ±k bir Ã¶rnek:
>
> UserParameter=mysql.ping,mysqladmin -uroot ping|grep -c alive
>
> Esnek KullanÄ±cÄ± Parametreleri
>
> Esnek kullanÄ±cÄ± parametreleri tuÅŸu ile parametre kabul eder. Bu ÅŸekilde esnek bir kullanÄ±cÄ± parametre Ã§eÅŸitli Ã¶ÄŸeleri oluÅŸturmak iÃ§in temel olabilir.
>
> Esnek kullanÄ±cÄ± parametreleri aÅŸaÄŸÄ±daki gibidir:
>
> UserParameter=key\[\*\],command

  ---------------------------------------------------------------------------------------------------------------------------------------
  **Parameter**   **Description**
  --------------- -----------------------------------------------------------------------------------------------------------------------
  **Key**         Unique item key. The \[\*\] defines that this key accepts parameters within the brackets.\
                  Parameters are given when configuring the item.

  **Command**     Command to be executed to evaluate value of the key.\
                  Use positional references \$1â€¦\$9 to refer to the respective parameter in the item key.\
                  Zabbix parses the parameters enclosed in \[ \] of the item key and substitutes \$1,â€¦,\$9 in the command accordingly.\
                  \$0 will be substituted by the original command (prior to expansion of \$0,â€¦,\$9) to be run.
  ---------------------------------------------------------------------------------------------------------------------------------------

6.3 Tetikleyiciler

Tetikleyiciler mantÄ±ksal ifadeler olan Ã¶ÄŸeler tarafÄ±ndan toplanan verileri "deÄŸerlendirmek" ve temsil mevcut sistem durumu vardÄ±r.

Tetikleyici durumlarÄ± ÅŸu ÅŸekilde olabilir:

  **VALUE**   **DESCRIPTION**
  ----------- ----------------------------------------------------------------------------------------------------------------------------
  OK          This is a normal trigger state. Called FALSE in older Zabbix versions.
  PROBLEM     Normally means that something happened. For example, the processor load is too high. Called TRUE in older Zabbix versions.

Tetikleyici YapÄ±landÄ±rmasÄ±

Bir tetikleyici yapÄ±landÄ±rmak iÃ§in aÅŸaÄŸÄ±dakileri yapÄ±n:

-   Configurationâ†’ Hosts gidin

-   Host satÄ±rÄ±ndaki Tetikleyicileri tÄ±klayÄ±n

-   Create Trigger tÄ±klayÄ±n

-   Tetikleyici parametreleri girin

Tetik sekmesi tÃ¼m temel tetikleyici Ã¶zelliklerini iÃ§erir.

6.4 Events

Zabbix events Ã¼Ã§ kaynak tarafÄ±ndan oluÅŸturulur:

-   Triggers

-   Discovery

-   Auto registration

Trigger Events

Tetik durum deÄŸiÅŸtirme olaylarÄ±nÄ±n en sÄ±k ve en Ã¶nemli kaynaÄŸÄ±dÄ±r.

Discovery Events

Zabbix periyodik aÄŸ bulma kurallarÄ± tanÄ±mlanan IP aralÄ±klarÄ±nÄ± tarar. Kontrol sÄ±klÄ±ÄŸÄ± her kural iÃ§in yapÄ±landÄ±rÄ±labilir.

Zabbix aÅŸaÄŸÄ±daki olaylarÄ± oluÅŸturur:

  **Event**            **When generated**
  -------------------- -------------------------------------------------------------------------
  Service Up           Every time Zabbix detects active service.
  Service Down         Every time Zabbix cannot detect service.
  Host Up              If at least one of the services is UP for the IP.
  Host Down            If all services are not responding.
  Service Discovered   If the service is back after downtime or discovered for the first time.
  Service Lost         If the service is lost after being up.
  Host Discovered      If host is back after downtime or discovered for the first time.
  Host Lost            If host is lost after being up.

Auto Registration Events

Aktif madde otomatik kayÄ±t Zabbix olaylarÄ± oluÅŸturur.

6.5 Templates

Bir ÅŸablon elveriÅŸli birden Ã§ok host uygulanan varlÄ±klarÄ±n kÃ¼mesidir.

VarlÄ±klar:

-   items

-   triggers

-   graphs

-   applications

-   screens (*since Zabbix 2.0*)

-   low-level discovery rules (*since Zabbix 2.0*)

Template YapÄ±landÄ±rma

Bir ÅŸablon yapÄ±landÄ±rmasÄ± iÃ§in genel parametrelerini belirleyerek bir ÅŸablon oluÅŸturmak gerektirir ve daha sonra buna varlÄ±klar (Ã¶ÄŸeleri, tetikler, grafikler vb) ekleme gerekir.

Template OluÅŸturma

Template oluÅŸturmak iÃ§in bunlarÄ± yapÄ±n:

-   *Configuration â†’ Templates* gidin

-   Create Template tÄ±klayÄ±n

-   Åablon niteliklerini dÃ¼zenleyin.
![](https://www.zabbix.com/documentation/2.4/_media/manual/config/template.png?cache=)

Åablon Nitelikleri:

  -------------------------------------------------------------------------------------------
  **Parameter**       **Description**
  ------------------- -----------------------------------------------------------------------
  *Template name*     Unique template name.

  *Visible name*      If you set this name, it will be the one visible in lists, maps, etc.

  *Groups*            Host/template groups the template belongs to.

  *New group*         A new group can be created to hold the template.\
                      Ignored, if empty.

  *Hosts/Templates*   List of hosts/templates the template is applied to.
  -------------------------------------------------------------------------------------------

6.6 KullanÄ±cÄ±lar ve KullanÄ±cÄ± GruplarÄ±

Zabbix tÃ¼m kullanÄ±cÄ±lar web tabanlÄ± Ã¶nyÃ¼z yoluyla Zabbix uygulamasÄ±na eriÅŸir. Her kullanÄ±cÄ± benzersiz bir giriÅŸ adÄ± ve ÅŸifre atanÄ±r.

TÃ¼m kullanÄ±cÄ± ÅŸifreleri ÅŸifrelenir ve Zabbix veritabanÄ±nda saklanÄ±r. KullanÄ±cÄ±lar UNIX sunucusu doÄŸrudan oturum aÃ§mak iÃ§in kullanÄ±cÄ± kimliÄŸi ve ÅŸifre kullanamazsÄ±nÄ±z. Web sunucusu ve kullanÄ±cÄ± tarayÄ±cÄ±sÄ± arasÄ±ndaki iletiÅŸim SSL kullanÄ±larak korunabilir.

KullanÄ±cÄ± YapÄ±landÄ±rmasÄ±

KulanÄ±cÄ± yapÄ±landÄ±rmasÄ± iÃ§in:

-   Administration-&gt;Users gidin

-   Users seÃ§in

-   Create Users tÄ±klayÄ±n.

-   KullanÄ±cÄ± niteliklerini dÃ¼zenleyin.

Genel Ã–zellikler

KullanÄ±cÄ± sekmesi genel kullanÄ±cÄ± Ã¶zelliklerini iÃ§erir:

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/1.9.9_user.png?cache=)

  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Parameter**                    **Description**
  -------------------------------- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  *Alias*                          Unique username, used as the login name.

  *Name*                           User first name (required).

  *Surname*                        User second name (required).

  *Password*                       Two fields for entering the user password.\
                                   With an existing password, contains a *Password* button, clicking on which opens the password fields.

  *Groups*                         List of all [user groups] the user belongs to. Adherence to user groups determines what host groups and hosts the user will have[access to]. Click on *Add* to add groups.

  *Language*                       Language of Zabbix GUI.

  *Theme*                          Defines how the GUI looks like:\
                                   System Default - use default system settings\
                                   Original Blue - standard blue theme\
                                   Black & Blue - alternative theme\
                                   Dark orange - alternative theme

  *Auto-login*                     Enable if you want Zabbix to remember you and log you in automatically for 30 days. Browser cookies are used for this.

  *Auto-logout (min 90 seconds)*   Mark the checkbox to enable automatic user logout after the set seconds of inactivity (minimum value = 90 seconds).

  *Refresh (in seconds)*           Set the refresh rate used for graphs, screens, plain text data, etc. Can be set to 0 to disable.

  *Rows per page*                  You can determine how many rows per page will be displayed in lists.

  *URL (after login)*              You can make Zabbix to transfer you to a specific URL after successful login, for example, the status of triggers page.
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

KullanÄ±cÄ± MedyasÄ±

Medya sekmesi kullanÄ±cÄ± tanÄ±mlÄ± tÃ¼m medya bir listesini iÃ§erir. Medya bildirimleri gÃ¶ndermek iÃ§in kullanÄ±lÄ±r. KullanÄ±cÄ±ya medyayÄ± atamak iÃ§in Add tÄ±klayÄ±n.

Ä°zinler

Ä°zinler sekmesi bilgileri iÃ§ermektedir:

-   KullanÄ±cÄ± tÃ¼rÃ¼ (Zabbix KullanÄ±cÄ±, Zabbix YÃ¶netici, Zabbix SÃ¼per YÃ¶netici). KullanÄ±cÄ±lar kendi tÃ¼rÃ¼nÃ¼ deÄŸiÅŸtiremez.

-   Host gruplarÄ± ve ana bilgisayarlarÄ±nÄ±n kullanÄ±cÄ± eriÅŸimi vardÄ±r. 'Zabbix KullanÄ±m ve varsayÄ±lan olarak herhangi bir ana gruplarÄ± ve hosts' Zabbix YÃ¶netici 'kullanÄ±cÄ±larÄ±n eriÅŸimi yoktur. EriÅŸmek iÃ§in kendi ana makine gruplarÄ±na ve ana bilgisayarlara eriÅŸimi olan kullanÄ±cÄ± gruplarÄ±na dahil edilmesi gerekir.

6.7 Makrolar

Zabbix Ã§eÅŸitli durumlarda kullanÄ±labilir makrolarÄ± destekler. MakrolarÄ±n {MAKRO} sÃ¶zdizimi tarafÄ±ndan tanÄ±mlanan deÄŸiÅŸkenleri vardÄ±r ve baÄŸlama gÃ¶re belirli bir deÄŸeri Ã§Ã¶zerler.

MakrolarÄ±n etkin kullanÄ±mÄ± zamandan tasarruf ve Zabbix yapÄ±landÄ±rmasÄ±nÄ±n daha ÅŸeffaf olmasÄ±nÄ± saÄŸlar.

Daha fazla esneklik iÃ§in, Zabbix kÃ¼resel ÅŸablon ve host dÃ¼zeyinde tanÄ±mlanabilir kullanÄ±cÄ± makroyu destekler. Bu makrolar Ã¶zel bir sÃ¶zdizimi vardÄ±r.{\$ MAKRO}

Makrolar kullanÄ±labilir:

-   item isimleri

-   item anahtar parametreleri

-   trigger isimleri

-   trigger ifade parametreleri ve sabitler

-   DiÄŸer locationlar

**7.IT Hizmetleri**

IT hizmetleri izlenen altyapÄ±sÄ±nÄ±n Ã¼st dÃ¼zey (iÅŸ) bir gÃ¶rÃ¼nÃ¼m elde etmek isteyenler iÃ§in tasarlanmÄ±ÅŸtÄ±r. BirÃ§ok durumda, disk alanÄ±, yÃ¼ksek iÅŸlemci yÃ¼kÃ¼, vb eksikliÄŸi gibi, dÃ¼ÅŸÃ¼k seviyeli ayrÄ±ntÄ±larÄ± ilgilenmiyoruz.

Zabbix IT hizmetleri belirtilen tÃ¼m sorularÄ±nÄ±zÄ±n cevabÄ±nÄ± saÄŸlar.

IT hizmetleri izlenen verilerin hiyerarÅŸisi temsilidir.\
Ã‡ok basit bir IT servis yapÄ±sÄ± gibi gÃ¶rÃ¼nebilir:

IT Service

|

|-Workstations

| |

| |-Workstation1

| |

| |-Workstation2

|

|-Servers

YapÄ±nÄ±n her dÃ¼ÄŸÃ¼mÃ¼n nitelik durumu vardÄ±r. Durum hesaplanÄ±r ve seÃ§ilen algoritmaya gÃ¶re Ã¼st seviyelere yayÄ±lÄ±r. IT hizmetlerinin en dÃ¼ÅŸÃ¼k seviyede tetikler. Bireysel dÃ¼ÄŸÃ¼mlerin durumu kendi tetik durumuna gÃ¶re etkilenir.

YapÄ±landÄ±rma

IT hizmetlerini yapÄ±landÄ±rmak iÃ§in *Configuration â†’ IT services* gidin.

Bu ekranda size izlenen altyapÄ± bir hiyerarÅŸi inÅŸa edebilirsiniz. Ãœst dÃ¼zey ana hizmet 'root' dur. Onlara alt dÃ¼zey ana hizmet ve daha sonra tek tek dÃ¼ÄŸÃ¼mlerin ekleyerek aÅŸaÄŸÄ±ya doÄŸru hiyerarÅŸisi oluÅŸturabilirsiniz.

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/1.9.9_itservice_add.png?cache=)

Buna hizmet eklemek veya hizmeti dÃ¼zenlemek iÃ§in bir hizmete tÄ±klayÄ±n. Hizmet niteliklerini dÃ¼zenlendiÄŸi yerde bir form gÃ¶rÃ¼ntÃ¼lenir.

IT Hizmetlerini YapÄ±landÄ±rma

Servis sekmesi genel hizmet niteliklerini iÃ§erir:

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/1.9.9_itservice.png?cache=)

  --------------------------------------------------------------------------------------------------------------------------------------------------------
  **Parameter**                    **Description**
  -------------------------------- -----------------------------------------------------------------------------------------------------------------------
  *Name*                           Service name.

  *Parent service*                 Parent service the service belongs to.

  *Status calculation algorithm*   Method of calculating service status:\
                                   Do not calculate - do not calculate service status\
                                   Problem, if at least one child has a problem - problem status, if at least one child service has a problem\
                                   Problem, if all children have problems - problem status, if all child services are having problems

  *Calculate SLA*                  Enable SLA calculation and display.

  *Acceptable SLA (in %)*          SLA percentage that is acceptable for this service. Used for reporting.

  *Trigger*                        Linkage to trigger:\
                                   None - no linkage\
                                   trigger name - linked to the trigger, thus depends on the trigger status\
                                   Services of the lowest level must be linked to triggers. (Otherwise their state will not be represented accurately.)\
                                   When triggers are linked, their state prior to linking is not counted.

  *Sort order*                     Sort order for display, lowest comes first.
  --------------------------------------------------------------------------------------------------------------------------------------------------------

BaÄŸÄ±mlÄ±lÄ±klar sekmesi hizmetleri iÃ§eren hizmete baÄŸlÄ±dÄ±r. YapÄ±landÄ±rÄ±lmÄ±ÅŸ olanlardan bir hizmet eklemek iÃ§in Ekle Ã¼zerine tÄ±klayÄ±n.

**8.Web Ä°zleme**

Zabbix ile web sitelerinin Ã§eÅŸitli kullanÄ±labilirlik yÃ¶nlerini kontrol edebilirsiniz.

Web izlemeyi etkinleÅŸtirmek iÃ§in web senaryolarÄ± tanÄ±mlamak gerekir. Bir web senaryosu birkaÃ§ HTTP istekleri ya da "adÄ±mlarÄ±" oluÅŸturur. AdÄ±mlar periyodik olarak Ã¶nceden tanÄ±mlanmÄ±ÅŸ sÄ±rayla Zabbix sunucusu tarafÄ±ndan yÃ¼rÃ¼tÃ¼lÃ¼r.

AÅŸaÄŸÄ±daki bilgiler herhangi bir web senaryoda toplanÄ±r:

-   BÃ¼tÃ¼n senaryonun tÃ¼m adÄ±mlar iÃ§in saniyede ortalama indirme hÄ±zÄ±

-   BaÅŸarÄ±sÄ±z adÄ±m numarasÄ±

-   Son hata iletisi

AÅŸaÄŸÄ±daki bilgiler herhangi bir web senaryo aÅŸamasÄ±nda toplanÄ±r:

-   Saniyede indirme hÄ±zÄ±

-   Tepki SÃ¼resi

-   YanÄ±t kodu

Senaryo YapÄ±landÄ±rma

Bir web senaryo oluÅŸturmanÄ±n ilk adÄ±mÄ± uygun bir uygulama yaratÄ±yor. Web senaryolarÄ± gruplama uygulamalarÄ± ile baÄŸlantÄ±lÄ±dÄ±r.

Sonra, bir web senaryo yapÄ±landÄ±rmak iÃ§in:

-   *Configuration â†’ Web* gidin.

-   Create scenario tÄ±klayÄ±n.

-   Formda senaryo parametreleri girin.

Senaryo sekmesi bir web senaryosunun genel parametrelerini yapÄ±landÄ±rmak iÃ§in izin verir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/scenario.png?cache=)

AdÄ±mlar sekmesi web senaryo adÄ±mlarÄ±nÄ± yapÄ±landÄ±rmak iÃ§in izin verir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/scenario2.png?cache=)

AdÄ±mlarÄ± YapÄ±landÄ±rma

Bir web senaryo adÄ±m eklemek iÃ§in, *Add* in the *Steps* tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/config/scenario_step.png?cache=)

8.1 Web Ä°zleme Ã–geleri

Web senaryolarÄ± oluÅŸturulduÄŸu zaman bazÄ± yeni Ã¶ÄŸeler otomatik olarak izlenmesi iÃ§in eklenir.

Senaryo Ã–geleri

En kÄ±sa sÃ¼rede bir senaryo oluÅŸturulur oluÅŸturulmaz, Zabbix otomatik olarak seÃ§ilen uygulamaya baÄŸlayarak, izleme iÃ§in aÅŸaÄŸÄ±daki Ã¶ÄŸeler ekler.

  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Item**                                            **Description**
  --------------------------------------------------- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  *Download speed for scenario &lt;Scenario&gt;*      This item will collect information about the download speed (bytes per second) of the whole scenario, i.e. average for all steps.\
                                                      Item key: web.test.in\[Scenario,,bps\]\
                                                      Type: *Numeric(float)*

  *Failed step of scenario &lt;Scenario&gt;*          This item will display the number of the step that failed on the scenario. If all steps are executed successfully, 0 is returned.\
                                                      Item key: web.test.fail\[Scenario\]\
                                                      Type: *Numeric(unsigned)*

  *Last error message of scenario &lt;Scenario&gt;*   This item returns the last error message text of the scenario. A new value is stored only if the scenario has a failed step. If all steps are ok, no new value is collected.\
                                                      Item key: web.test.error\[Scenario\]\
                                                      Type: *Character*
  -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

GerÃ§ek senaryo yerine "Senaryo" nin adÄ± kullanÄ±lacaktÄ±r.

Bu Ã¼rÃ¼n tetik oluÅŸturmak ve bildirim koÅŸullarÄ± tanÄ±mlamak iÃ§in kullanÄ±labilir.

Ã–rnek 1

Tetikleyici bir "baÅŸarÄ±sÄ±z Web senaryosu" oluÅŸturmak iÃ§in, tetikleyici ifade tanÄ±mlayabilirsiniz:

{host:web.test.fail\[Scenario\].last(0)}\#0

Senaryonuz gerÃ§ek adÄ±yla 'Senaryo' yerine geÃ§tiÄŸinden emin olun.

Ã–rnek 2

Bir "yavaÅŸ Web uygulamasÄ±" tetikleyici oluÅŸturmak iÃ§in, tetikleyici ifadesi tanÄ±mlayabilirsiniz:

{host:web.test.in\[Scenario,,bps\].last(0)}&lt;10000

Senaryo AdÄ±m Ã–geleri

En kÄ±sa sÃ¼rede bir adÄ±m oluÅŸturulur oluÅŸturulmaz, Zabbix otomatik olarak seÃ§ilen uygulamaya baÄŸlayarak, izleme iÃ§in aÅŸaÄŸÄ±daki Ã¶ÄŸeler ekler.

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  **Item**                                                              **Description**
  --------------------------------------------------------------------- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  *Download speed for step &lt;Step&gt; of scenario &lt;Scenario&gt;*   This item will collect information about the download speed (bytes per second) of the step.\
                                                                        Item key: web.test.in\[Scenario,Step,bps\]\
                                                                        Type: *Numeric(float)*

  *Response time for step &lt;Step&gt; of scenario &lt;Scenario&gt;*    This item will collect information about the response time of the step in seconds. Response time is counted from the beginning of the request until all information has been transferred.\
                                                                        Item key: web.test.time\[Scenario,Step,resp\]\
                                                                        Type: *Numeric(float)*

  *Response code for step &lt;Step&gt; of scenario &lt;Scenario&gt;*    This item will collect response codes of the step.\
                                                                        Item key: web.test.rspcode\[Scenario,Step\]\
                                                                        Type: *Numeric(unsigned)*
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

8.2 GerÃ§ek Hayat Senaryosu

Senaryo

AdÄ±m 1

Yeni host uygulamasÄ± ekle.

Configuratonâ†’ Hosts gidin , Web izleme iÃ§in kullanmak istediÄŸiniz hostun yanÄ±ndaki Applications tÄ±klayÄ±n . Uygulama bÃ¶lÃ¼mÃ¼nde Create Application tÄ±klayÄ±n.

Zaten uygun bir uygulama varsa, bu adÄ±m gerekli deÄŸildir. AyrÄ±ca bir yoksa bir ana bilgisayar oluÅŸturmak isteyebilirsiniz.

AdÄ±m 2

Yeni bir web senaryosunu ekleyin.

Zabbix web arayÃ¼zÃ¼ izlemek iÃ§in bir senaryo katacak. Ve senaryo bir dizi adÄ±m Ã§alÄ±ÅŸtÄ±racak.

Configuration-&gt;Web gidin, Create Scenario tÄ±klayÄ±n.

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_monitoring/new_scenario.png?cache=)

AdÄ±m 3

Senaryo iÃ§in adÄ±mlarÄ± tanÄ±mlayÄ±n.

Bireysel adÄ±mlar eklemek iÃ§in AdÄ±mlar sekmesinde Add dÃ¼ÄŸmesini tÄ±klayÄ±n.

AdÄ±m 4

BitmiÅŸ web izleme senaryosunu kaydedin.

Uygulamalar ve baÄŸlantÄ±lÄ± senaryolar listesi Monitoring â†’ Web gÃ¶rÃ¼necektir:

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_monitoring/web_checks.png?cache=)

Daha ayrÄ±ntÄ±lÄ± istatistikleri gÃ¶rmek iÃ§in senaryo adÄ±nÄ± tÄ±klayÄ±n:

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_monitoring/scenario_details.png?cache=)

**9.BakÄ±m**

Zabbix ana bilgisayarlar ve ana makine gruplarÄ± iÃ§in bakÄ±m sÃ¼relerini tanÄ±mlayabilirsiniz. Ä°ki bakÄ±m tÃ¼rÃ¼ vardÄ±r - veri toplama ve hiÃ§bir veri toplama.

Host bakÄ±m sÄ±rasÄ±nda bildirim almayÄ± atlamak iÃ§in eylemler varsayÄ±lan eylem koÅŸulu tarafÄ±ndan yapÄ±landÄ±rÄ±lmalÄ±dÄ±r 'Maintenance status = not in â€œmaintenanceâ€' - o zaman bakÄ±m sÄ±rasÄ±nda sorun bildirimi almak gerekir. Sorun bakÄ±m sÄ±rasÄ±nda olur ve Ã§Ã¶zÃ¼lmediÄŸi takdirde bakÄ±m dÃ¶nemi sona erdikten sonra, bir uyarÄ± oluÅŸturulur.

Zabbix sunucu bakÄ±mÄ± sÄ±rasÄ±nda Ã§alÄ±ÅŸtÄ±rÄ±yor olmanÄ±z gerekir. ZamanlayÄ±cÄ± iÅŸlemleri her dakikanÄ±n 0 saniyesinde bakÄ±m iÃ§in host durumuna geÃ§iÅŸ iÃ§in sorumludur. Proxy her zaman ne olursa olsun , veri toplayacaktÄ±r. 'HiÃ§bir veri toplama' ayarlanÄ±rsa verileri daha sonra sunucu tarafÄ±ndan gÃ¶z ardÄ± edilir.

YapÄ±landÄ±rma

Bir bakÄ±m sÃ¼resini yapÄ±landÄ±rmak iÃ§in:

-   Confguration-&gt;Maintaneance gidin.

-   Create Maintaneance tÄ±klayÄ±n.

BakÄ±m sekmesi genel bakÄ±m periyodu Ã¶zelliklerini iÃ§erir:

  ------------------------------------------------------------------------------------------------------------------------------
  **Parameter**        **Description**
  -------------------- ---------------------------------------------------------------------------------------------------------
  *Name*               Name of the maintenance period.

  *Maintenance type*   Two types of maintenance can be set:\
                       With data collection - data will be collected by the server during maintenance\
                       No data collection - data will not be collected by the server during maintenance

  *Active since*       The date and time when executing maintenance periods becomes active.\
                       Note: Setting this time alone does not activate a maintenance period; for that go to the *Periods* tab.

  *Active till*        The date and time when executing maintenance periods stops being active.

  *Description*        Description of maintenance period.
  ------------------------------------------------------------------------------------------------------------------------------

**10.DÃ¼zenli Ä°fadeler**

Zabbix dÃ¼zenli ifadeler kullanmanÄ±n iki yolu vardÄ±r:

-   Manuel ÅŸekilde dÃ¼zenli ifadeler girerek

-   Zabbix oluÅŸturulan global bir dÃ¼zenli ifade kullanarak

Global regular expressions

Zabbix Ã¶nyÃ¼z karmaÅŸÄ±k dÃ¼zenli ifadeler testleri iÃ§in geliÅŸmiÅŸ bir editÃ¶r vardÄ±r.

Global regular expression oluÅŸturmak iÃ§in:

-   *Administration â†’ General gidin*

-   *Regular expressions seÃ§in*

-   *New regular expression tÄ±klayÄ±n.*

![](https://www.zabbix.com/documentation/2.4/_media/manual/regular_expressions/regexp_expr.png?cache=)

DÃ¼zenli ifade adÄ±nÄ± ayarlayÄ±n. Herhangi bir Unicode karakter adÄ± verilir.

**11.Event Acknownlegment**

Acknowledgment ekranÄ±

Problemlerin onay durumu *Monitoring â†’ Events gÃ¶rÃ¼ntÃ¼lenir.*

Ack sÃ¼tunu iÃ§eren ya 'evet' ya da 'HayÄ±r', sÄ±rasÄ±yla bir kabul ya da onaylanmayan sorunu gÃ¶steren olarak gÃ¶rÃ¼ntÃ¼lenir. Bir 'evet' de bugÃ¼ne kadar sorunun yorumlarÄ±n sayÄ±sÄ±nÄ± gÃ¶steren, parantez iÃ§inde onunla bir sayÄ± olarak gÃ¶sterilebilir.

Her ikisi de 'Evet' ve 'HayÄ±r' baÄŸlantÄ±larÄ± vardÄ±r. TÄ±klanÄ±nca onay ekranÄ±na gÃ¶tÃ¼recektir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/acknowledges/ack.png?cache=)

**12.Configuration export/import**

Zabbix export/import iÅŸlevselliÄŸi sayesinde bir Zabbix sistemi ve diÄŸeri arasÄ±ndaki Ã§eÅŸitli yapÄ±landÄ±rma varlÄ±klarÄ± arasÄ±ndaki alÄ±ÅŸveriÅŸi yapar.

Bu iÅŸlevsellik iÃ§in tipik kullanÄ±m durumlarÄ±:

-   AÄŸ haritalarÄ± iÃ§in ÅŸablon paylaÅŸÄ±mÄ± - Zabbix kullanÄ±cÄ±larÄ±n yapÄ±landÄ±rma parametrelerini paylaÅŸabilir

-   ÃœÃ§Ã¼ncÃ¼ taraf araÃ§larÄ± ile entegrasyon

Import/Export olan nesneler:

-   host groups (*through Zabbix API only*)

-   templates (including all directly attached items, triggers, graphs, screens, discovery rules and template linkage)

-   hosts (including all directly attached items, triggers, graphs, discovery rules and template linkage)

-   network maps (including all related images; map export/import is supported since *Zabbix 1.8.2*)

-   images

-   screens

12.1 Gruplar

Frontend sadece bilgisayarlar veya ÅŸablonlar ile gruplarÄ± export edebilirsiniz. Host veya ÅŸablon tÃ¼m gruplarÄ± ihraÃ§ edildiÄŸinde otomatik olarak ihraÃ§ edilmektedir.

API host veya ÅŸablonlar baÄŸÄ±msÄ±z gruplardan ihracat saÄŸlar.

&lt;groups&gt;

&lt;group&gt;

&lt;name&gt;Zabbix servers&lt;/name&gt;

&lt;/group&gt;

&lt;/groups&gt;

Hosts

Sunucular birÃ§ok ilgili nesneler ve nesne iliÅŸkileri ile ihraÃ§ edilmektedir.

Host export iÃ§erir:

-   hosts data

-   host inventory data

-   groups relations

-   templates relations

-   interfaces

-   macros

-   applications

-   items

-   discovery rules with all prototypes

Host ithal ve gÃ¼ncel olduÄŸunda, sadece ek ÅŸablonlarÄ± ile baÄŸlantÄ±lÄ± olabilir ve herhangi baÄŸlantÄ±sÄ±nÄ± iptal olmaz.

**13.Discovery**

13.1 Network Discovery

Zabbix etkili ve Ã§ok esnek otomatik aÄŸ bulma iÅŸlevselliÄŸi sunuyor.

AÄŸ bulma ile ÅŸunlarÄ± yapabilirsiniz:

-   Zabbix daÄŸÄ±tÄ±mÄ±nÄ± hÄ±zlandÄ±rmak

-   YÃ¶netimini basitleÅŸtirmek

-   AÅŸÄ±rÄ± yÃ¶netim olmadan hÄ±zla deÄŸiÅŸen ortamlarda Zabbix kullanÄ±n.

Zabbix de aÄŸ bulma aÅŸaÄŸÄ±daki bilgilere dayanmaktadÄ±r:

-   IP sahasÄ±

-   DÄ±ÅŸ hizmetlerin kullanÄ±labilirliÄŸi (FTP, SSH, WEB, POP3, IMAP, TCP, vb)

-   Zabbix agent dan bilgi alma

-   SNMP agent dan bilgi alma

Bu saÄŸlamaz:

-AÄŸ topolojisni keÅŸfetme

Network discovery yapÄ±landÄ±rma

Host ve hizmetlerini keÅŸfetmek iÃ§in Zabbix tarafÄ±ndan kullanÄ±lan bir aÄŸ bulma kuralÄ± yapÄ±landÄ±rmak iÃ§in:

-   Configuration-&gt;Discovery gidin.

-   Create Rule tÄ±klayÄ±n

-   Disvovery kural nitelikleri dÃ¼zenleme

Kural Nitelikleri

![](https://www.zabbix.com/documentation/2.4/_media/manual/discovery/network_discovery/d_rule.png?cache=)

13.2 Aktif agent auto-registration

Sunucu izlemeye baÅŸladÄ±ÄŸÄ±nda, aktif Zabbix agent auto registration izin vermek mÃ¼mkÃ¼ndÃ¼r. Bu ÅŸekilde yeni ana sunucu Ã¼zerinde manuel ÅŸekilde yapÄ±landÄ±rmadan izlenmesi iÃ§in eklenebilir.

YapÄ±landÄ±rma

Configuration-&gt;Actions gidin, *Auto registration* seÃ§in.

-   Eylem sekmesinde, bir eylem adÄ± vermek

-   KoÅŸullar sekmesinde, hiÃ§bir koÅŸul gerekmez.

-   Ä°ÅŸlemler sekmesinde, ilgili iÅŸlemleri ekleyin.

13.3 Low level Discovery

DÃ¼ÅŸÃ¼k seviyeli keÅŸif otomatik olarak bilgisayarÄ±nÄ±zda farklÄ± kiÅŸiler iÃ§in Ã¶ÄŸeleri, tetikleyicileri ve grafikler oluÅŸturmak iÃ§in bir yol saÄŸlar. Ã–rneÄŸin, Zabbix otomatik olarak el ile her dosya sistemi veya aÄŸ arabirimi iÃ§in Ã¶ÄŸeleri oluÅŸturmak iÃ§in gerek kalmadan, makinenizde dosya sistemleri veya aÄŸ arayÃ¼zleri izlemeye baÅŸlayabilirsiniz.AyrÄ±ca otomatik periyodik olarak keÅŸif fiili sonuÃ§larÄ±na gÃ¶re gereksiz varlÄ±klarÄ± kaldÄ±rmak iÃ§in Zabbix yapÄ±landÄ±rmak mÃ¼mkÃ¼ndÃ¼r.

**14.Distributed Monitoring**

Zabbix daÄŸÄ±tÄ±lan IT altyapÄ±sÄ±nÄ±n izlenmesi etkin ve gÃ¼venilir yollar saÄŸlar. Zabbix tarafÄ±ndan saÄŸlanan geniÅŸ ortamlar iÃ§in iki ana Ã§Ã¶zÃ¼mler ÅŸunlardÄ±r:

-   Use of proxies

-   Use of node

Proxies merkezi Zabbix sunucusu adÄ±na yerel veri toplamak ve daha sonra sunucuya veri rapor iÃ§in kullanÄ±labilir. DÃ¼ÄŸÃ¼mler daÄŸÄ±tÄ±lan izlemenin bir hiyerarÅŸi iÃ§inde kurulan Zabbix sunucularÄ±dÄ±r.

bir proxy veya dÃ¼ÄŸÃ¼mÃ¼nÃ¼ kullanarak arasÄ±nda bir seÃ§im yaparken, bazÄ± noktalar dikkate alÄ±nmalÄ±dÄ±r.

  **Proxy**                       **Node**   
  ------------------------------- ---------- ---------
  *Lightweight*                   **Yes**    No
  *GUI*                           No         **Yes**
  *Works independently*           **Yes**    **Yes**
  *Easy maintenance*              **Yes**    No
  *Automatic DB creation*^1^      **Yes**    No
  *Local administration*          No         **Yes**
  *Ready for embedded hardware*   **Yes**    No
  *One way TCP connections*       **Yes**    **Yes**
  *Centralised configuration*     **Yes**    No
  *Generates notifications*       No         **Yes**

14.1 Proxies

Bir Zabbix proxy Zabbix sunucusu adÄ±na performans ve kullanÄ±labilirlik veri toplayabilir. Bu ÅŸekilde, proxy veri toplama yÃ¼kÃ¼n bir kÄ±smÄ±nÄ± alacak ve Zabbix sunucu yÃ¼kÃ¼nÃ¼ hafifletebilecek.\
Zabbix Proxy iÃ§in kullanÄ±labilir:

-   Uzak Yerleri Ä°zlemek

-   GÃ¼venilmez iletiÅŸim yerleri izlemek

-   Zabbix sunucusunu boÅŸaltmak

-   DaÄŸÄ±tÄ±lmÄ±ÅŸ izleme bakÄ±mÄ±nÄ± kolaylaÅŸtÄ±rmak

![](https://www.zabbix.com/documentation/2.4/_media/manual/proxies/proxy.png?cache=)

Proxy Zabbix sunucuya TCP baÄŸlantÄ±sÄ± gerektirir. YalnÄ±zca bir gÃ¼venlik duvarÄ± kuralÄ± yapÄ±landÄ±rmak iÃ§in ihtiyaÃ§ olarak bu ÅŸekilde bir gÃ¼venlik duvarÄ± etrafÄ±nda almak daha kolaydÄ±r.

Zabbix proxy bir veri toplayÄ±cÄ±dÄ±r. Zabbix proxy tetikleyicileri, sÃ¼reÃ§ olaylarÄ± hesaplamaz veya uyarÄ±larÄ± gÃ¶ndermez. Proxy iÅŸlevselliÄŸine genel bir bakÄ±ÅŸ iÃ§in, aÅŸaÄŸÄ±daki tabloya gÃ¶zden geÃ§irin:

  **Function**                                               **Supported by proxy**
  ------------------------- -------------------------------- ------------------------
  Items                                                      
  Items                     *Zabbix agent checks*            **Yes**
  Items                     *Zabbix agent checks (active)*   **Yes** ^1^
  Items                     *Simple checks*                  **Yes**
  Items                     *Trapper items*                  **Yes**
  Items                     *SNMP checks*                    **Yes**
  Items                     *SNMP traps*                     **Yes**
  Items                     *IPMI checks*                    **Yes**
  Items                     *JMX checks*                     **Yes**
  Items                     *Log file monitoring*            **Yes**
  Items                     *Internal checks*                *No*
  Items                     *SSH checks*                     **Yes**
  Items                     *Telnet checks*                  **Yes**
  Items                     *External checks*                **Yes**
  Built-in web monitoring                                    **Yes**
  Network discovery                                          **Yes**
  Low-level discovery                                        **Yes**
  Calculating triggers                                       *No*
  Processing events                                          *No*
  Sending alerts                                             *No*
  Remote commands                                            *No*

YapÄ±landÄ±rma

Proxy ekleme

-   *Administration â†’ DM gidin*

-   *Create proxy tÄ±klayÄ±n.*
![](https://www.zabbix.com/documentation/2.4/_media/manual/distributed_monitoring/proxy.png?cache=)
  --------------------------------------------------------------------------------------------------------------------------------
  **Parameter**   **Description**
  --------------- ----------------------------------------------------------------------------------------------------------------
  *Proxy name*    Enter the proxy name. It must be the same name as in the *Hostname* parameter in the proxy configuration file.

  *Proxy mode*    Select the proxy mode.\
                  Active - the proxy will connect to the Zabbix server and request configuration data\
                  Passive - Zabbix server connects to the proxy

  *Hosts*         Add hosts to be monitored by the proxy.
  --------------------------------------------------------------------------------------------------------------------------------

Host YapÄ±landÄ±rmasÄ±

Host proxy alanÄ±nÄ±n izleyerek, ana bilgisayar yapÄ±landÄ±rma ÅŸeklinde bir proxy tarafÄ±ndan takip edilmesi gerektiÄŸini belirtebilirsiniz.

![](https://www.zabbix.com/documentation/2.4/_media/manual/proxies/proxy_set.png?cache=)

14.2 Nodes

Her bir dÃ¼ÄŸÃ¼m Zabbix sunucu ve kendi konumunu izlenmesinden sorumludur. Zabbix daÄŸÄ±tÄ±lmÄ±ÅŸ kurulum bin dÃ¼ÄŸÃ¼m destekler.

*Node kullanmanÄ±n yararlarÄ±:*

-BirkaÃ§ coÄŸrafi konumlarÄ± kapsayan geniÅŸ bir aÄŸda bir izleme Ã§oklu hiyerarÅŸi yapÄ±sÄ±.Bir dÃ¼ÄŸÃ¼m sadece ana dÃ¼ÄŸÃ¼mÃ¼ bildirir.

- Zabbix sunucusu Ã§alÄ±ÅŸmalarÄ±nÄ± bÃ¶lebilirsiniz.

-Yeni dÃ¼ÄŸÃ¼mleri baÄŸlama ve ayÄ±rma mevcut kurulum iÅŸlevselliÄŸini etkilemez. Herhangi bir dÃ¼ÄŸÃ¼mÃ¼n yeniden baÅŸlatma gerekli.

Node YapÄ±landÄ±rmasÄ±

-Sunucu yapÄ±landÄ±rma dosyasÄ± (zabbix\_server.conf) benzersiz bir dÃ¼ÄŸÃ¼m kimliÄŸi belirtin. Mevcut deÄŸerler: 1-999

-zabbix\_server durduysa Ã§alÄ±ÅŸmadÄ±ÄŸÄ±ndan emin olun

-DaÄŸÄ±tÄ±lmÄ±ÅŸ bir kurulum iÃ§in veritabanÄ± verileri dÃ¶nÃ¼ÅŸtÃ¼rÃ¼n ve Ã§alÄ±ÅŸtÄ±rÄ±n:

zabbix\_server -n &lt;node id&gt;

(DÃ¼ÄŸÃ¼m kimliÄŸi '1' ise) Ã–rneÄŸin, Ã§alÄ±ÅŸtÄ±rabilirsiniz:

cd bin

./zabbix\_server -n 1 -c /usr/local/etc/zabbix\_server.conf

**15.Web interface**

15.1 TanÄ±mlar

ZBX\_LOGIN\_ATTEMPTS

UygulamalÄ± bir giriÅŸ bloÄŸundan Ã¶nce varolan sistemin kullanÄ±cÄ±ya izin verdiÄŸi baÅŸarÄ±sÄ±z oturum aÃ§ma denemelerinin sayÄ±sÄ±

ZBX\_LOGIN\_BLOCK

KullanÄ±cÄ±nÄ±n baÅŸarÄ±sÄ±z oturum aÃ§ma giriÅŸimlerine eriÅŸmesini engelleyecek saniye sayÄ±sÄ±

ZBX\_PERIOD\_DEFAULT

VarsayÄ±lan grafik periyodu(saniye cinsinden).

ZBX\_MIN\_PERIOD

Minimum grafik periyodu(saniye cinsinden).

ZBX\_MAX\_PERIOD

Maximum grafik periyodu(saniye cinsinden).

15.2 Frontend maintenance mode

YapÄ±landÄ±rma

BakÄ±m modunu etkinleÅŸtirmek iÃ§in, maintenance.inc.php dosyasÄ±na aÅŸaÄŸÄ±daki satÄ±rlarÄ± yorumsuz olarak deÄŸiÅŸtirilmesi gerekir:

// Maintenance mode

define('ZBX\_DENY\_GUI\_ACCESS',1);

// IP range, who allowed to connect to FrontEnd\$ZBX\_GUI\_ACCESS\_IP\_RANGE = array('127.0.0.1');

// MSG showed on Warning screen!

\$\_REQUEST\['warning\_msg'\] = 'We are upgrading MySQL database till 15:00. Stay tuned...';

  ---------------------------------------------------------------------------------------------------------------------
  **Parameter**                     **Details**
  --------------------------------- -----------------------------------------------------------------------------------
  **ZBX\_DENY\_GUI\_ACCESS**        Enable maintenance mode:\
                                    1 â€“ maintenance mode is enabled, disabled otherwise

  **ZBX\_GUI\_ACCESS\_IP\_RANGE**   Connections from these IP addresses will be allowed during the maintenance mode.\
                                    For example:\
                                    192.168.1.1-255

  **warning\_msg**                  A message you can enter to inform users about the maintenance.
  ---------------------------------------------------------------------------------------------------------------------

BakÄ±m modunda iken Zabbix Ã¶nyÃ¼z eriÅŸmeye Ã§alÄ±ÅŸÄ±rken aÅŸaÄŸÄ±daki ekran gÃ¶rÃ¼ntÃ¼lenecektir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/frontend_maintenance.png?cache=)

15.3 User Profile

KullanÄ±cÄ± profilinde bu tÃ¼r arayÃ¼z dili, renk temasÄ±, burada yapÄ±lan deÄŸiÅŸiklikler yalnÄ±zca kullanÄ±cÄ± iÃ§in geÃ§erli olacak. Listelerde vb gÃ¶rÃ¼ntÃ¼lenen satÄ±r sayÄ±sÄ± gibi bazÄ± Zabbix Ã¶nyÃ¼z Ã¶zelliklerini Ã¶zelleÅŸtirebilirsiniz.

YapÄ±landÄ±rma

KullanÄ±cÄ± sekmesi Ã§eÅŸitli kullanÄ±cÄ± tercihlerini ayarlamanÄ±zÄ± saÄŸlar.
https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/1.9.7_profile3.png?cache=
15.4 Frontend sections

15.4.1 Ä°zleme

Monitoring â†’ Overview bÃ¶lÃ¼mÃ¼ tetikleyici durumlarÄ±nÄ± gÃ¶zden geÃ§irmek ve tek seferde Ã§eÅŸitli bilgisayarlar iÃ§in verileri karÅŸÄ±laÅŸtÄ±rmak iÃ§in izin verir.

AÅŸaÄŸÄ±daki ekran gÃ¶rÃ¼ntÃ¼sÃ¼nde bilgi yatay gÃ¶rÃ¼ntÃ¼lenir ve tetik durumlar renkli bloklar olarak gÃ¶rÃ¼ntÃ¼lenir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/overview2.png?cache=)

Bir sonraki ekran gÃ¶rÃ¼ntÃ¼sÃ¼nde bilgi dikey olarak gÃ¶rÃ¼ntÃ¼lenir ve veriler gÃ¶rÃ¼ntÃ¼lenir:

https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/overview1.png?cache=
Hem tetik bloklarÄ± hem de veri Ã¶ÄŸeleri baÄŸlantÄ±lar olarak gÃ¶sterilir. Bir tetikleyici blok Ã¼zerine tÄ±klarsanÄ±z tetikleyici olay ve son deÄŸerler listesine eriÅŸebilirsiniz. Veri parÃ§asÄ± Ã¼zerinde tÄ±klarsanÄ±z Ã¶nceden tanÄ±mlanmÄ±ÅŸ sÃ¼re veya 500 son deÄŸer iÃ§in bazÄ± grafikler eriÅŸebilirsiniz:

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/overview_links1.png?cache=)

15.4.2 Inventory

*Inventory â†’ Overview bÃ¶lÃ¼mÃ¼* host envanter verilerinin genel bakÄ±ÅŸ yollarÄ±nÄ± saÄŸlar.

GÃ¶rÃ¼ntÃ¼lenme iÃ§in, bir ana makine grubunu (veya tÃ¼m gruplar) ve verileri gÃ¶rÃ¼ntÃ¼lemek iÃ§in envanter alanÄ± seÃ§in. SeÃ§ilen alanÄ±n her giriÅŸ tekabÃ¼l host sayÄ±sÄ± gÃ¶rÃ¼ntÃ¼lenir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/inventory_overview.png?cache=)

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/inventory_hosts.png?cache=)


15.4.3 Reports

*Reports â†’ Status* anahtar sistemi verilerinin Ã¶zeti gÃ¶rÃ¼ntÃ¼lenir.

![](https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/report_status.png?cache=)

15.6 Global Search

Zabbix Ã¶nyÃ¼zÃ¼ Ã§eÅŸitli kuruluÅŸlarda aramak mÃ¼mkÃ¼ndÃ¼r. Arama giriÅŸ kutusu saÄŸ Ã¼st kÃ¶ÅŸede yer alÄ±r. Arama enter tuÅŸuna basarak veya arama butonuna basarak baÅŸlatÄ±labilir.

Girilen string ile baÅŸlayan bir dizi varsa, aÅŸaÄŸÄ±daki tÃ¼m listele belirecektir:

![Global Search](https://www.zabbix.com/documentation/2.4/_media/manual/web_interface/global_search_dropdown.png?cache=)

Entities Search

KiÅŸiler ve Ã¶zellikleri aramak mÃ¼mkÃ¼ndÃ¼r:

-   Hosts

    -   Visible name (or host name if visible name is not defined)

    -   IP address

    -   DNS name

-   Templates

    -   Name

-   Host groups

    -   Name

  [configuration file]: https://www.zabbix.com/documentation/2.0/manual/appendix/config/zabbix_agentd
  [active checks]: https://www.zabbix.com/documentation/2.0/manual/appendix/items/activepassive
  [user groups]: https://www.zabbix.com/documentation/2.0/manual/config/users_and_usergroups/usergroup
  [access to]: https://www.zabbix.com/documentation/2.0/manual/config/users_and_usergroups/permissions




