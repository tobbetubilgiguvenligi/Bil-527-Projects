# Joomla Kurulum, Kullanım ve Sıkıştırma Kılavuzu

#Giriş

Joomla içerisinde çok büyük esnekliklere sahip, kullanım kolaylığı sağlayan arayüzü ile içerisinde çok sayıda opsiyonları ve konfigürasyonları bulunan büyük bir içerik yönetim sistemidir. Bu manuel, Joomla'nın temel özelliklerini, kurulum aşamalarını ve ilk Joomla websitenizin başlangıcı için hazırlanmış bir rehber işlevi görmektedir. 

![alt text](http://www.webdoor.com.au/images/joomla.png "Joomla Logo")

##İçerik Yönetim Sistemi Nedir?

İçerik Yönetim Sistemi(CMS); bir veritabanının bir içeriğin formundaki bilgilerini düzenlemeye erişim sağladığı bir dizi yazılım dizgeleridir. Kulağa karmaşık gelmiş olabilir ama bunu düşündüğünüzden fazla kullandınız. Örneğin; hiç Facebook sayfanızı güncellemediniz mi? Yada bir blog oluşturmadınız mı? Amazon.com'dan bir kitap veya eBay'den teklif usulü birşeyler almadınız mı? New York Times Online okumuş olmanız yada Wikipedia üzerinden birşeyleri gözden geçirmeniz de bu bir çok örneğe dahil edilebilir. Örneklerde geçen bütün web siteleri belli tiplerdeki İçerik Yönetim Sistemleri ile çalışmaktadır. 
Bizim odaklanacağımız tipler; basit bir arayüzden kendi web sitenizi yönetebilmenize imkan tanıyan, kendi sayfalarınızı ve menülerinizi programlama bilgisine ihtiyaç duymadan oluşturmanızı sağlayan İçerik Yönetim Sistemleri'dir.

##Joomla Hakkında

Joomla 2005 yılında PHP ve MySQL baz alınarak bir açık kaynak geliştirici takımı tarafından oluşturulmuş bir platformdur.Güncel olarak toplamda 200.000 kişilik, kullanıcılar ve bağışçılardan oluşan bir topluluktur.Joomla indirmek isteyn ve bir site oluşturmak için kullanmak isteyen herkes için ücretsizdir. Ayrıca şablon ve uzantı oluşturmak isteyen herkese açıktır. En güncel versiyonunu indirmek için;
http://www.joomla.org/download.html

##Neden Joomla?

Günümüzde üç ana ve ücretsiz İçerik Yönetim Sistemi ve çok fazla sayıda popüler olmayan İçerik Yönetim Sistemleri bulunmaktadır. En popüler olanları: Joomla, Drupal ve Wordpress'tir.
Temel olarak bakıldığında hepsi web sitenizi oluşturmanizda ve yönetmenizde yardımcı olsalar da aralarında büyük farklılıklar bulunmaktadır. Joomla ve Drupal kullanıcıları arasında hangisinin diğerinden üstün olduğuna dair büyük bir tartışma bulunmakla birlikte, iki sistemin de birbiriyle karşılaştırıldıklarında avantajları ve dezavantajları bulunmaktadır.  

###Joomla

**Avantajları**:

* Joomla genelde çalışması ve düzenlenmesinin öğrenilmesi daha kolay olan bir sistemdir.
* Joomla, başlangıç düzeyindeki kullanıcılar da dahil olmak üzere daha iyi görünümlü şablonlara sahip ve daha insancıl bir topluluktur.

**Dezavantajları**:

* Joomla'nın kodları bazen dağınık bir yapıya sahip olabilmektedir ve bu sebepten dolayı çalışma süresi uzamaktadır.
* Mimari sınırları, oluşturulan alt kategorilerin seviyeleridir.

###Drupal

**Pros**:

* Drupal daha esnek bir yapıya sahip olup, çoklu alt kategori oluşturulmasına izin veren ve daha fazla gelişmiş kullanıcı özelliklerine sahip olan bir yapıdır. 
* Hızlı bir yükleme zamanı ve temiz bir cod yapısı bulunmaktadır.

**Cons**:

* Genelde, kurulum ve yükleme aşamalarının öğrenimi daha zor ve uzun sürmektedir. 
* Topluluk destekleyici bir yapıya sahip olsa da, yeni kullanıcılar ve sorulan basit sorulara karşı çok düşük toleransa sahip bir yapı sergilemektedir.

Temel olarak, ikiside işlevsel ve başarılı iki İçerik Yönetim Sistemi olup kullanıcının ihtiyaç ve istekleri doğrultusunda kullanılmaktadır. 

![alt text](http://i.hizliresim.com/kvyyyW.jpg "Joomla Logo")

#Joomla Kurulumu

##Temel İhtiyaçlar

Joomla'nın kurulumu için iki farklı yol bulunmaktadır. Manuel olarak ve Fantastico ya da C-panel gibi sunucu serverı üzerinde kurulum yapan kurulum yazılımları gerekir. İki yazılım da site yönetimi için kullanıcı dostu arayüze sahip olan kurulum yazılımları olup, gereksinimleri de oldukça benzerdir. 

Joomla bir veritabanı üzerinde çalışır bir sistem olmasından dolayı, çalışması için bir SQL veritabanı gerekir.Kurulumu yapılan tablolar ve eklediğiniz bilgilerin saklandığı yer SQL veritabanıdır. Joomla göreceli olarak daha hızlı serverlarda daha iyi bir çalışma performansı sergilemektedir. Sunucu ile iletişime geçip daha hızlı bir server bulduğu zaman sistemini onun üzerine taşımakta ve çalışmasını daha verimli bir hale getirmektedir.

Joomla çok fazla sayıda kaynak kullanır ve eğer server bir çok süreçi aynı anda çözümleyebilirse, web sitenizde yaptığınız değişiklikler vs. daha hızlı bir şekilde yüklenir. Eski serverlar üzerinde bulunan teknoloji Joomla'nın en yeni versiyonunu destekleyemeyecektir. http://help.joomla.org/content/view/1938/302/ web sitesinden en güncel gereksinimlerin listesine göz atabilirsiniz.

Eğer Fantastico ya da C-Panel kullanıyorsanız, kurulum versiyonunu kontrol edin. Eğer mümkünse, Joomla'nın en güncel versiyonunu, en kötü bir önceki versiyonunu kullanmayı isteyin. Yeni versiyonlar genelde bugları çözümleyen güvenlik düzenlemeleri içermektedir. Dinamik bir web site ile uğraştığınızda, bu düzenlemeler büyük bir fark yaratmaktadır. Joomla'nın en güncel versiyonunu görmek için, Joomla'nın web sitesini ziyaret ediniz.

##C-Panel ile Kurulum

Bütün gereksinimleri kontrol ettiniz ve tamamladınız, sırada şimdi ne var?  Serverınız üzerinde C-Panel kurulumu varsa, doğru yoldasınız demektir. C-Panel'den İçerik Yönetimi Sistemi bölümünden Fantastico'ya bakın. Joomla'nın versiyonunu kontrol edin. En az 1.5 versiyon kullanmalısınız. Eğer daha güncel bir versiyon varsa, Yeni Kurulum'a tıklayın ve kullanmakta olduğunuz versiyonu güncelleyin.

![alt text](http://i.hizliresim.com/r9obmz.png "Joomla Logo")

Sizden aşağıda verilen alanları doldurmanız istenecek:
* Kullanmak istediğiniz domain nedir?
* Kurulum rehberi(Eğer kök klasörü içinde olmasını istiyorsanız boş bırakın ya da web sitenizin içinde olmasını istiyorsanız o zaman bir directory oluşturun.
* Admin kullanıcı adı, şifresi, e-mail adresi ve tam adı.
* Site adı
* Kurulum kullanıcı bilgileri. (Bu opsiyon sayfaları, menüleri ve directoryleri Joomla bilgileri ile birlikte kurulumunu yapacaktır. Eğer web sitenin nasıl kullanılacağını öğrenirken bunları görmek ve değiştirmek istiyorsanız boş bırakabilirsiniz. Daha sonra "Joomla'yı Kur" 'a tıklayın. 

![alt text](http://i.hizliresim.com/pPpL40.jpg "Joomla Logo")

Sadece bir kaç dakika beklemeniz gerekecek ve sonrasında C-Panel veritabanını oluşturacak ve Joomla'nın kurulumunu sizin için tamamlayacaktır. Size kurulum ve yönetim için bir link verecektir. Bu link aynı zamanda yazılarınızı oluşturduğunuz ve web sitenizi konfigüre ettiğiniz linktir. 

##Manuel Kurulum

Eğer serverınız C-Panel'i sağlamıyorsa ne yapacaksınız? Endişelenmeyin, bir kaç adım daha uzun ama kesinlikle uzun bir süreç değildir. Bir veritabanı, bir FTP programı ve Joomla Kurulum dosyalarına ihtiyacınız olacaktır.  

###Step 1 – Veritabanı

Günümüzde bütün sunuculular, kendi yönetimleri altında veritabanlarını kullanmamıza izin vermektedir. Sizin daha önceden oluşturulmuş bir veritabanıyla ilgili detaylı bir bilgiye sahip olmanıza gerek yoktur. Gereksinimler:
* Database Adı
* Database ID
* Database Şifresi
* Database Path (yada adresi)
Veritabanını oluşturduktan sonra bütün bu bilgilere ulaşmanız gerekir. Joomla kurulum boyunca size bunları sormaktadır, bu sayede güvenilir bir yapıya dönüşmektedir.

###Step 2 – Joomla Dosyalarını İndirmek

Önce veritabanını oluşturduktan sonra, Joomla kurulum dosyalarına ihtiyacınız olacaktır. En son güncellenmiş dosyaları http://www.joomla.org/download.html adresinden indirebilirsiniz. 

Bu dosyaları bir zip uzantısı ile bilgisayarınıza indirin ve daha sonra web sitenizin klasörüne çıkartın. Şuandan itibaren iki seçeneğiniz bulunmaktadır. Eğer Joomla'nın sitenizin bütününde yada ana kısmında olmasını istiyorsanız, dosyaları kök klasörüne koymanız gereklidir(Siteniz için bulunan ana klasör).

Diğer seçenek ise, bir siteniz var ve Joomla'nın sitenizin belirli bir kısmında olmasını istiyorsanız örneğin; http://mysite.com/joomla , kendiniz bir klasör oluşturup dosyaları buraya çıkartmanız gerekir.

###Step 3 – Joomla Dosyalarını Yüklemek

Bir sonraki adım, bütün Joomla dosyalarını sunucunuzun kullandığı FTP programına yüklemeniz gerekmektedir ya da serverınızın dosya yöneticine zip dosyalarını doğrudan çıkartın. 

THE COMPLETE BEGINNERS GUIDE TO
JOOMLA
http://simplytatydesigns.com | Taty Sena
MakeUseOf.com

###Step 4 – Kurulumu Çalıştırmak
Bu adıma kadar gerekenler bittikten sonra, aşağıdaki linke gidiniz (eğer Joomla'yı kök klasörüne yüklediyseniz) :
http://yoursite.com/index.php

Eğer Joomla'yı bir alt klasöre yüklediyseniz aşağıdaki linke gidiniz:
http://yoursite.com/JoomlaFolder/index.php
Bu noktadan itibaren, kurulum sihirbazını takip edin. 

![alt text](http://i.hizliresim.com/PMZgQ7.png "Joomla Logo")

Kurulum sihirbazı size dil ile ilgili soru sorduğunda, serverınızın Joomla'yı herhangi bir problem olmaksızın çalıştırıp çalıştırmadığına bakacaktır.
Joomla'nın klasörleri, bazı özel sunucular üzerinde doğruluk izin ayarları default olarak bulunmamaktadır. Böyle bir durumda karşınıza 
"Access is not allowed" hatası çıkacaktır. Bu durumda, sizin bu dosyalara erişim sağlamanız ve izinlerini değiştirmeniz gerekir.
Bazı sunucular size kendi yönetimlerine erişim veren bir arayüz sağlarken, sağlamayan sunucularda kullandığınız FTP programı üzerinden izin komutlarını kontrol etmeniz gerekir. İzinleri değiştirdiğinizde, eğer yanlış bir klasör için bir izin değişikliği yaptıysanız siteniz hackerlar için açık bir konuma gelir ve sizin için bir tehdit oluşturur, bu sebepten dolayı bu işlemi yaparken çok dikkatli olunması gerekir

Joomla ile birlikte kullanılan güvenlik ayarları ile ilgili bir çok tartışma bulunmaktadır.
En temel izin ayarları:
![alt text](http://i.hizliresim.com/o7R1pb.png "Joomla Logo")

Public olmayan bütün dosyalar için mümkün oldukça ve kurulum ile Joomla kullanımını etkilemediği sürece en güvenilir ayar kullanılmalıdır.

##Step 5 – Lisans 

Bir sonraki adım, Joomla'nın lisansını okumaktır. Bu metin oldukça açık bir yazıma sahiptir.

![alt text](http://i.hizliresim.com/2ZVbzE.png "Joomla Logo")

##Step 6 – Veritabanı Bilgisi

Devam eden sayfada, veritabanı bilgisine ihtiyacınız olacaktır.

![alt text](http://i.hizliresim.com/L3WLjV.png "Joomla Logo")

Seç:
* Veritabanının Türü (En yaygını MySQL)
* Sunucu Adı (Veritabanının adı ya da yolu)
* Kullanıcı Adı ve Şifre (veritabanı için)
* Veritabanı Adı (Muhtemelen oluşturduğunuz veritabanının adını seçeceksiniz)
Not: Bulunduğunuz sunucuya bağlı olarak, veritabanı oluşturulması için size seçeneklerinizi seçmek için bir hak verilmeyebilir. Böyle bir durumla karşılaşıldığında sunucu adı olarak "localhost" , kullanıcı adı ve şifre içinde sunucu şirketiniz tarafından verilen kullanıcı adı ve şifre kullanılmalıdır.

WAMP yada XAMPP kullanarak localhostun kurulumunu yaptıysanız, kullanıcı adı genelde "root" , şifrede nothing/blank olmaktadır.
Ne yaptığınızı bilmediğiniz ya da kurulum boyunca bir hata almadıysanız, gelişmiş ayarlara bakmanıza gerek yoktur.
Konfigürasyona devam edin. Sizden e-mail ve site adı gibi basit bilgileri eklemeniz istenecektir ve "Sample Data" kurulumu için bir seçenek sunulacaktır. C-Panel kurulumu üzerinde açıklandığı gibi, bu seçenek sayfaların, menülerin, ve directorylerin Joomla bilgileri ile birlikte kurulumunu gerçekleştirecektir.
Eğer bunları sitenin kullanımını öğrendiğiniz sırada görmek ve üzerlerinde değişiklikler yapmak istiyorsanız, bu seçeneği seçmeyiniz.
Devam ettikten sonra, "Congratulations" sayfasına yönlendirileceksiniz.

![alt text](http://i.hizliresim.com/R3lq2Z.png "Joomla Logo")

Joomla sitenizi kullanmaya başlamak için yapmanız gereken şey, FTP'ye dönmek ve "Installation" directroysini silmektir. Bu directroynin site üzerinde kalması büyük bir güvenlik sorunudur.

Şu andan itibaren, Joomla arayüzü aracılığıyla içeriklerinizi web sitenize ekleme işlemlerinize başlamaya hazırsınız.


![alt text](http://i.hizliresim.com/R3lq2Z.png "Joomla Logo")

##Konfigürasyon Ayarları
Joomla kurulumu tamamlandıktan sonra, sitenize içerik eklemeye ve sitenizi yönetmeye başlayabilirsiniz.
Site yönetimine(admin) giriş yapmanız gerekecektir. Default administration aşağıdaki linkteki gibidir: 

http://(your site and folder where Joomla is installed)/administrator. 
Sitenizin arka ucuna bağlanabilmek ve erişebilmek için kurulum sırasında şifre ve kullanıcı adı oluşturmanız gereklidir. 

![alt text](http://i.hizliresim.com/bbdz6b.png "Joomla Logo")

##Kullanıcı Yöneticisi

Kullanıcı yöneticisi, "new" butonuna tıklayarak yeni kullanıcılar oluşturmaya ve varolan kullanıcılar üzerinde değişiklik yapabilmenize izin verir. Bu arayüzü aynı zamanda sitenizin üzerindeki kullanıcıların erişimlerini gruplandırmak ve düzenleme yapmak için de kullanabilirsiniz. 
Örneğin; "super administrator" sitenin tamamı üzerinde kontrole sahiptir; kayıtlı kullanıcılar ise, siteye giriş yaparak sitenin ön ucunda etkinliğe sahiptirler.

##Global Konfigürasyon

Global Konfigürasyon başlığı altında 3 etiket bulunmaktadır ve burdaki tercihler bütün siteyi etkilemektedir.
###Site
Sitede çevrimdişi olarak işlem yapabilirsiniz, bu işlem sırasında kimse sizin site üzerinde çalıştığınızı göremez.Kullanıcılar bu sırada sitenin bakımda olduğunu görecektir.

![alt text](http://i.hizliresim.com/kvyNMq.png "Joomla Logo")

Sitenin adını değiştirmek ve size yazılarınızı oluşturmak için, fontlarınızı ayarlamak için, tablolarınızı oluşturmak gibi işlemler için default bir WYSIWYG editör seçme opsiyonunu bulunmaktadır. Default olan TinyMCE'dir.  

Liste uzunlukları sitenizin arka ucundaki default olarak olan yazıların listelerini Joomla bir sonraki sayfaya geçmeden önce belirler. 
Global Site Meta Tanımı ve anahtar kelimeler Google ve diğer arama motorlarının genel site tanımları ve anahtar kelimeleri için alacağı tanımlardır. 

##SEO ayarları
Arama Motoru kullanıcı dostu URL'leri aşağıdaki gibi görünen sayfalarınızın adresini değiştirecektir.

http://yoursite.com/index.php?option=com_mtree&task=listcats&cat_id=1922&Itemi
d=35


http://yoursite.com/about-us/contact
yada
http://yoursite.com/index.php/about-us/contact.html
Eğer URL'ye bir ön ek eklemeyi seçerseniz (.html part) ve eğer bir Apache mod_rewrite kullanırsanız sadece bazı sunular içinde çalışacaktır. Eğer problemleriniz olursa, opsiyonu "yes" olarak değiştiriniz. 

![alt text](http://i.hizliresim.com/o7RDpR.png "Joomla Logo")

##Sistem
Kullanıcı ayarları altında, sitenize kayıt olmak isteyen kullanıcıları ve sahip olacakları öncelikleri kontrol etmenize yarayan ayarları göreceksiniz. En önemli olanları:

![alt text](http://i.hizliresim.com/goJ3DN.png "Joomla Logo")

##Kullanıcı ayarları:
Kullanıcı kaydına izin verme (yes,no) Siteye kayıt olmak isteyen kullanıcılara verilecek izini belirler. Bu opsiyonu "yes" seçerseniz, siteye kayıt olan yeni kullanıcıların site üzerinde ne seviyede erişime izni olduğunu belirleyebilirsiniz. Bu opsiyonlar:

Yeni kullanıcı kayıt tipi:
* Kayıtlı - Herhangi bir yazı düzenleyemez veya yayınlayamaz. Bu tipteki kullanıcı basitçe siteye kayıtlı ve bir ayrıcalığı olmayan konumdadır. 
* Yazar - İçerik oluşturabilir, bu içeriklerin nerede konumlanacağını belirleyebilir ve kendi yazılarıyla ilgili belirli ayarlamalar yapabilir.
* Editör – Kayıtlı ve Yazar tipindeki özelliklere sahip olup extra olarak, başka kullanıcılar tarafından yayınlanmış yazılar üzerinde değişiklik yapabilir.
* Yayıncı - Yukarıdaki 3 tipin özelliklerine ek olarak, hangi yazının yayınlanıp yayınlanmayacağı seçimini yapabilir.
(Detaylı bilgilendirme için at: http://docs.joomla.org/)

Yeni kullanıcı hesap aktivasyonu (yes, no) - Kullanıcıların aktivasyon mailine cevap verme gerekliliğidir. 
Medya Klasörüne Yol - Medya yönetim dosyalarının depolandığı yeri değiştirmeye karar verirseniz,  onları başka bir URL'de saklayabilirsiniz. 

Resim Klasörüne Yol - Fotoğraflarınızın saklandığı yeri değiştirmeye karar verirseniz, onları yeni bir URl'de saklayabilirseniz.
Medya Yönetimi İçin Minimum Kullanıcı Seviyesi (yazar) Hangi tipteki kullanıcıların medya yönetimine erişim sağlayabileceğini, resim yükleyebilme, silebilme ve başka bir yere taşıyabilme yetkilerine sahip olacağını belirler. Yazar default bir seçimdir, resim yüklemek ve yazı oluşturmak için bu erişime ihtiyaç duyar.

###Server
Bütün opsiyonlar kurulum sırasında sizin için yapılmıştır. Değiştirmek istediğiniz opsiyonlar:
Mail ayarlarından:
Mail from - Size ait olan Joomla sitesinden mesaj gönderirken kullanmak istediğiniz mail.

From name:
Joomla sitenizi kullanırken alıcılara mail gönderdiğinizde onların görmelerini istediğiniz gönderen adı.

![alt text](http://i.hizliresim.com/PMZLbb.png "Joomla Logo")

##Araçlar
Bu butonun altındaki bütün araçlar, sitenin bakımının genel yönetimi ve kullanıcılar arasındaki iletişim içindir. Kullanıcılara özel mesaj veya toplu mesaj gönderebilirsiniz.

Başka bir kullanıcı bir dosyayı değiştirdiği sırada, bir kilit aracılığı ile aynı zaman zarfı içerisinde başka bir kullanıcının aynı dosyayı değiştirmesi engellenir. Global kontrol temel olarak yapılan değişiklikler için herşeyi kontrol eder.

Bazı modlar bazı bilgileri hızdan ödün vermemek adına saklar. "Clean Cache Admin" ve "Purge Cache Admin" kullanarak bu durumu değiştirebilirsiniz.


#İçerik Nasıl Yayınlanır?
Joomla mimarisi bir bölge ve kategoriye ait olan bütün yazılara ihtiyaç duyar. Bu sebepten dolayı, bölümleri ve kategorileri yaratmadan önce, ihtiyacınız olan isimleri düşünmeniz gerekir. Bölgeyi, dolu bir dolaptaki çekmece olarak düşünebilirsiniz. Kategori ise klasörün içindeki ve klasör içindeki dökümanlar gibidir. 

Başka bir kural da, bölümler ve kategoriler, menüler ve pull down menüler gibidir. Örneğin, sitenizde "About my company" butonu olmasını istiyorsunuz. Birisi mouse ile bu butona tıkladığında, bir pull down menu ile "Staff" ve "Locations" çıkması, bölüm ve kategori durumuna örnektir.

Bölüm ve kategori oluşturmak iyi bir prensiptir. "About my company" bir bölüm, "Staff" ve "Locations" ise bu bölümün kategorileridir. "Staff" kategorisi altında, her bir çalışan için bir sayfa oluşturmak ve "Locations" altında ise,  bütün farklı lokasyonlar için harita, iletişim ve bilgilendirmeye sahip birer sayfa oluşturmak sitenizin daha organize bir yapıda olmasını sağlar. Menüleri oluşturmaya hazır olduğunuzda, sitenizi bu yolla detaylandırabilirsiniz.

##Bölümler
Bir bölüm oluşturmak için, basitçe "Content" menü butonuna gidip, "Sections" ı seçiniz. Daha sonra sayfa üzerindeki "New" butonuna tıklayınız. Birkaç opsiyonla birlikte bir sayfa alacaksınız. Gerçekten ihtiyacınız olan şeyler, eğer bir menü butonu ile bir bölümü birbirine bağlamak istiyorsanız Başlık ve Tanım olacaktır. Aksi takdirde, sadece tanım yeterlidir.

##Kategoriler
"Content" menüsünden, kategorilere de erişebilirsiniz. Kategoriler, bölümlerin alt kategorisi olarak benzer bir yol ile çalışır; kategoriniz için bir başlık eklemeniz gerekir. Bu sırada kategorinizin içinde bulunacağı bölümü de belirlemeniz gerekmektedir. Sitenizin fonksiyonelliğine göre, diğer bütün alanlar opsiyonel veya gerekli değildir.

##Makaleler

Şuandan itibaren bölümlerinizi ve kategorilerinizi yarattıktan sonra, site için gerçek içerikler eklemeye başlayabiliriz. Makale oluşturmak için, "Content" e giderek, "Articles" ı seçip "New" butonuna tıklamamız gereklidir.

Karşınıza Microsof Word'e benzeyen ama bir çok özelliğine sahip olmayan bir sayfa çıkacaktır. Bu arayüze WYSIWYG (What You See Is What You Get) denilmektedir. Yani, bu sayfa üzerinde yaptığınız herşey, yazılım tarafından HTML formunda dönüştürülecek ve web tarayıcıları tarafından bir web sayfası gibi okunabilecektir. 

Bir başlık ekleyerek başlayın. Daha sonra bir bölüm ve kategori seçmelisiniz. Sonrasında, metin yada görüntüler, WYSIWYG arayüzü aracılığı ile HTML formatına çevrilerek eklenir. Ayrıca, Meta Tags opsiyonuna tıklayarak SEO (Search Engine Optimization) bilgileri de ekleyebilirsiniz. 

Bir başka buton ise "Read More" butonudur.  Kullanıcıların makale hakkında genel bir önizleme okumasını istiyorsanız bu butonu da ekleyebilirsiniz. Temel olarak, önizlemenin nerede bitmesi gerektiğini seçip, üstüne tıklayıp sonrasında da "Read More" butonuna tıklamaktır.


![alt text](http://i.hizliresim.com/y4r7Qa.png "Joomla Logo")

Makaleler için "Read More" butonu oluştururken bir kod parçası da eklenecektir. Eğer blog görünümünde kullanıyorsanız ve tamamlanmış makalelerin listesinin aynı sayfada gösterilmesini istemiyorsanız sizin için çok kullanışlı olacaktır. 

Yazarın adını ya da default PDF'i görüntülemek istiyorsanız, bu tarz değişiklikleri yapabileceğiniz bir çok gelişmiş parametre bulunmaktadır. 

##Medya Yöneticisi

Medya yöneticisi resimlerinizi düzenlemek, organize etmek için kullandığınız aracınızdır. Medya yöneticisi ile ilgili bilmeniz gereken önemli bir bilgi, dosyaların nereye koyulacağıdır. Default olarak, birkaç görüntü gelir (örneğin, meyve ve yemek). Bu görüntüler eklendikleri makale arayüzünden erişilebilir. Yalnızca "Stories" klasörünün içinde bulundan klasör ve resimler bu yol kullanılarak erişilebilir. 

Diğer resimlere de link verebilirsiniz ama öncelikle bu resimlrin adreslerini ve tiplerini bulmanız gerekir. Bu konuda verilen en akılcı öneri, bütün resimlerin "Stories" klasörü altında toplanmasıdır.  

Medya Yöneticisi ile ilgili bilmeniz gereken bir diğer bilgi; Medya Yöneticisi resimleri yeniden boyutlandırmaz, bu sebepten dolayı, çok büyük resimler yüklerseniz, bu resimler sitenizi bozacaktır. Daha sonrasında bu durumu kodlar üzerinden yapacağınız değişiklikler ile çözümlemeye çalışsanız bile, resimlerin yüklenmesinin uzunluğundan dolayı siteniz yavaşlayacaktır.  Yeniden boyutlandırmak ve sıkıştırmak itediğiniz resimleri Medya Yöneticisi'ne yüklemeden önce bilgisayarınızdaki resim yazılımı ile hazırlayın.

##Ön Sayfa Yöneticisi

Ön Sayfa Yöneticisi, sitenizin anasayfasında görünmesi için seçtiğiniz makalelerin belirli özelliklerini ve düzenini sağlayan yöneticidir. Bu yöneticiye "Content" menüsünden ulaşılabilir. Sitenin ana sayfasında görünecek makaleler ile ilgili opsiyonları yöneteceğiniz yer burasıdır.

En kullanışlı özelliklerden birisi, makalelerin tekrardan düzenlenebilme imkanıdır (Bu özellik ayrıca, bölümler, kategoriler ve makaleler için uygulanabilir). Bunu yapabilmek için, ön sayfa yöneticisine gidip, listelenmiş makalelerin listesine bakılır."Order" isimli bir sütun göreceksiniz.Buradan ön sayfada görünmesini istediğiniz makaleler, kategori ve bölümlerin numaraları üzerinde değişiklik yaparak onların ön sayfada görünmesini veya sıralamasında değişiklikler yapabilirsiniz. 

![alt text](http://i.hizliresim.com/o7MYDo.png "Joomla Logo")

Menüler

Sitenizde olması gereken, bölümler, kategoriler ve makaleleri oluşturduktan sonra sıra sitenizde kullanacağınız menüleri oluşturmaya geldi.Birçok farkı menü ve alt menüleri "Menu Manager" kullanarak oluşturabilirsiniz. 

En yaygın kullanıma sahip "Main Menu", default olarak oluşturulur ve "Menu" butonu altından bulunabilir. Sonsuz sayıda menü seçimleri olduğundan, oluşturulabilecek menülerin sayısı da aynı orandadır.Bu menüleri, bölümlere, kategorilere, tekli makalelere, bileşenlere, sarıcılara ve bir çok şeye bağlantılanabilir. 

Yaygın olarak kullanılan ve sizin de işinize yarayabilecek başka bir seçenekte "Articles" menüsüdür. Bu seçenek size, makalelerin, kategorileri veya bölümleri linklendirmenizi ve görüntülemek istediğiniz bileşenleri konfigüre etmenize yardımcı olur.  

![alt text](http://i.hizliresim.com/l1g0Jk.png "Joomla Logo")

Örneğin, web sitemdeki "Sports" kategorisine ilişkilendirmek istediğim bir menü oluşturmak istiyorum. Aynı zamanda bütün makalelerimin blog formatında görünmesini, makalelerin başlangıçlarını, sonrasında her biri için "Read More" butonu ve 2 sütunda görüntülemek istiyorum. Yeni menü opsiyonundan "Articles>Category Blog Layout" seçilir. Daha sonrasında, Joomla kullanılarak istenilen formatta tasarım elde edilmiş olunur ve bileşenler kullanılarak sitenin içeriği genişletilmeye başlanır.


##Siteniz Nasıl Tasarlanır ve Özelleştirilir?

Bookmark, mail listelerine bağlı modüller, takvimler, fotoğraf albümleri ve sonsuz miktarda başka özellikler Joomla sitenize eklenebilmektedir.

Bu durumun en büyük avantajlarından biri, dinamik bir web sitesine sahip olunmasıdır. Sitenizde bir çok değişiklik yapabilir, özellikler ekleyebilir ancak Joomla için nasıl script yazılır öğrenmek istemiyorsanız, 5000'in üzerinde eklenti, modül, şablon ve bileşenleri http://extensions.joomla.org/ sitesinden indirebilirsiniz.Bu sitedeki bileşenlerin çok yüksek bir yüzdesi ücretsizdir.Bu bileşenleri indirdikten sonra, olağan olmayan komutların kontrolü için belirli komutlar check edilmelidir. 
There are many features such as social bookmarks, modules connecting to mailing
lists, calendars, photo albums, and an endless amount of other features that can be
added to your Joomla site.


Aşağıdaki özelliklerden herhangi birini kurmak için, yapmanız gereken "Extensions" butonuna gitmek ve "Install/Uninstall" 'u seçmek olacaktır. Bilgisayarınıza bir URL'den dosya yüklenecek ve bu dosyayla ilgili bilgisayarınız üzerinde arama işlemlerinin izninin verildiği bir sayfaya yönlendirileceksiniz.

Dosyayı bulduktan sonra, "Upload and Install" 'a tıklayın. Kısa bir süre sonra, kurulumun başarılı bir şekilde tamamlandığına dair mesaj alacaksınız. Bu andan itibaren, modüllere, eklentilere,  bileşenlere ve şablon yöneticisine erişebileceksiniz.

![alt text](http://i.hizliresim.com/z4zgv6.png "Joomla Logo")

(Aşağıda verilen linkten ücretsiz eklentiler bulabilirsiniz:
http://www.makeuseof.com/tag/10-free-joomla-extensions-live/ )

###Eklenti

Eklentiler, Joomla'ya eklenebilen, makalelerin içinde görünen yada makalelerle arayüz bağlantısı kurmaya yarayan özelliktir. Örneğin, Joomla sitenize, insanların makaleleri ,yazıları paylaşmaları için bir opsiyon tanımladınız. Her bir yazı için, elinizle eklemeyi, birbirinden ayırmayı istemiyorsunuz, durumu daha efektif bir şekilde çözümlemek istiyorsunuz. Bu durumda, eklentiler devreye girer. Bir yazıyla ilgili istediğiniz bilgilerin başka bir sayfalarda bulunmasını, hızlı ve efektif olarak eklentiler üzerinden yapabilirsiniz. Internet üzerinden çok sayıda ücretsiz eklentiye ulaşmak mümkündür.


###Modüller

Modüller, dinamik web sitelerindeki side box'lar olarak tanınmaktadır. Eklentiler ve modüller arasındaki fark, modüller çoğunlukla yazıların çevresinde shortcut yada yan menü olarak görünmektedir. 
Örneğin, insanların haber bülteninize doğrudan sizin sayfanız üzerinden üye olabilmesini sağlayan bir modüle sahip olmak istiyorsanız, bir modül indirin yada insanlara üye olmasını sağlayacak izni veren bir modül oluşturun. Daha sonra modülünüzün nerede durması gerektiğine karar vererek işinizi tamamlayın.

Her şablon modülleri tutan belirli slotlar tarafından oluşturulmuştur. En bilinenleri: Left bar, Right bar, Footer ve Header'dır. Birçoğunun ana bölgeleri, küçük bölgelere bölebilmenize yarayan alt slotları vardır. Örneğin, sayfanın altında, user1, user2 ve user3 adlı bazı şablonlar tarafından kullanılan modüller var. Diğer bir deyişle top'tan footer'a 3 küçük sütun olup, belirli modülleri sitenin altına ekleyebilirsiniz.

Yukarıda daha önce belirtildiği gibi, modülleri indirebilir yada oluşturabilirsiniz. Bu durumda bir modül nasıl oluşturulur?

"Extensions" butonunun altında, "Modules" seçin. Daha sonra "New" tıklayın. Kullanabileceğiniz opsiyonların büyük bir listesi sunulacaktır. Bazı modül bileşenleri, daha önceden kurulmuş, bazıları ise default Joomla bileşenleridir. Birkaçı çok esnek modüllerdir(Örneğin, HTML opsiyonu).

Basit bir şekilde başka herhangi bir HTML sayfası gibi çalışır. Buradan, istediğiniz text, link yada herhangi bir şeyi HTML'e ekleyebilirsiniz. Modülü oluşturduktan sonra, nerede konumlanacağına karar vermelisiniz. Duracağı pozisyonu seçtikten sonra, modülün kurulduğundan ve kaydedildiğinden emin olun. Eğer istediğiniz şekilde modülünüzü göremediyseniz veya beğenmediyseniz, tekrar modül yöneticisine dönüp farklı bir pozisyon seçebilirsiniz.


![alt text](http://i.hizliresim.com/J2gpLE.png "Joomla Logo")

##Bileşenler

Bileşenler, Joomla sitenize eklenmiş özellikler olarak çalışır. Eklenti ve modüllerden çok daha kompleks eklemelere sahiptir. Bazı ünlü bileşenler JomSocial; siteniz içindeki bütün bir sosyal networkü oluşturabilen, yada güçlü bir e-mail listesi bileşeni olan Acajoom.

![alt text](http://i.hizliresim.com/AJlAZ7.png "Joomla Logo")

Diğer eklentiler gibi benzer bir kurulum sürecini takip ediyor olsa da, diğerlerinden daha kompleks bir yapıya sahip olduğundan bileşenleri konfigüre etmek gerekir bu yüzden de yaratıcının komutları takip edilmelidir.


##Şablonlar

Joomla sitesinin ilk sayfasını yayınlamak isteyen birisi, şablonların ne kadar önemli olduğunu anlayacaktır. Joomla, sitenin HTML ve CSS'ine tam erişim veriyor olsa da, çoğu kullanıcı bu dilleri etkin bir biçimde kullanamaz.Bu yüzden de şablonlar yardıma yetişir. 


![alt text](http://i.hizliresim.com/qBX43W.png "Joomla Logo")

Başka siteler ve yazılımcılar, modüllerin yerleştirilmesi için profesyonel görünümlü, çok sayıda opsiyona sahip şablonlar tasarlarlar. Google üzerinden "Joomla templates" şeklinde hızlı bir arama yapıldığında, ücretsiz ve paralı şablonlara ulaşabileceğiniz yüzlerce site bulabilirsiniz.
Bu şablonları yüklemek genelde daha basit olduğundan, şablonların bu yolla kullanılması ve kurulumunun yapılması tercih edilmektedir.
Yükledikten sonra; "Extensions >Template Manager" yeni bir şablonun olduğunu görebilirsiniz. Şablonu seçerek "Default" a tıklarsanız, bu şablonun sitede default olarak tasarlanmış yerinde duracak şekilde konumlanan yeni bir şablonu sitenizde görmüş olursunuz.
Şablonlarla ile ilgili bir problem de, insanlar internet siteleri üzerinde gördükleri şablonların resimleri üzerinden yola çıkarak onları indirip, sitelerinde denemekte ve gördükleri resimle aynı sonucu alamamaktadır.Bunun sebebi o şablon üzerinde bir çok düzenleme yapılması gereklidir.

##Joomla Sıkılaştırma

Joomla, açık kaynaklı bir içerik yönetim sistemidir ve bir MVC framework üzerine tasarlanmıştır.Güncel olarak en çok kullanılan içerik yönetim sistemleri arasında internet üzerinde %2.6'lık bir kullanımla, 2. sırayı almıştır.Bu rakam çok fazla bir büyüklüğü işaret etmiyor gibi görünse de, günümüzde milyonlarca işletme ve blog sitesinin dizaynını ve oluşturulmasını Joomla ile gerçekleştirmektedir.Yoğun olarak kullanılan sistemlerde, sürekli saldırı yada hacklenme halinde bulunma riskinden dolayı  extra koruma önlemleri alınmaktadır.Brute-force saldırılara karşı Joomla'nızı sıkılaştırmak için sıkılaştırma adımlarını uygulamanız gerekmektedir.
  
##Joomla Güvenliği

###1.Joomla ve Eklentilerini Güncel Tutun

Joomla'nız ve eklentilerini her zaman güncel versiyonlarıyla tutmalısınız. Yazılımcılar, eski versiyonlarda oluşabilecek yada oluşmuş olan zaafiyetleri gözlemleyip bunların çözümlendiği ve diskarte edildiği yeni versiyonları sunmaktadır. Hackerlar, genelde eski versiyonlara saldırı düzenlemektedirler.Örneğin 2015 Ekimde "SQL Injection Vulnerability" bulundu.Ve bu zaafiyet milyonlarca insanı etkiledi.joomla.org adresinden her zaman Joomla'nın en güncel versiyonlarını indirebilirsiniz.

Eğer Joomla için yeni bir güncelleme mevcutsa, yönetim panosu tarafından gösterilmektedir.Ayrıca Akeeba CMS Update gibi ücretsiz ve Joomla güncellemeleri ve backuplarını yapmanızı sağlayan eklentiler de kullanabilirsiniz.

![alt text](http://i.hizliresim.com/4lXg5A.png "Joomla Logo")

Güncellemeleri kontrol etmek yada yüklemek için, "Components" -> "Joomla! Update" e tıklamanız yeterli olacaktır.
Eğer bir güncelleme varsa, "Install the Update" e tıkladıktan sonra, bir kaç dakika içerisinde güncellemenin kurulumu yapılacaktır.

![alt text](http://i.hizliresim.com/B23MpL.png "Joomla Logo")

Not:Joomla güncelleme kurulduktan sonra sizi log out yapacaktır, sisteme tekrar giriş yapmanız gerekecektir.

Başka bir öneri de, güvenilir Joomla şablonları ve eklentileri kullanmaktır.Bunun için Joomla extensions directory'den yada bilinen şirketler tarafından piyasaya sürülmüş ürünler kullanılabilir.Bu sayede ileriye dönük karşılaşılacak problemler daha aza indirgenebilir.
Her zaman Joomla web sitenizi yedekleyin.Düzenli olarak sitenizi yedeklerseniz, bir saldırı durumunda çok hızlı bir şekilde sitenizi geri döndürmenizi ve kurtarmanızı sağlar.Joomla versiyonları ve eklentileri güncellenmeden önce, yedekleme yapılması önerilmektedir.XAMPP ve MAMP serverlar üzerinde yaptığınız güncellemelerin testini yapabilir ve bu güncellemeler hakkında bilgi edinebilir bu sayede siteniz üzerinde değişiklikler yapmanıza gerek kalmaz.

###2.Akıllı Kullanıcı İsimleri ve Şifreler

Joomla'da kullanacağınız kullanıcı adı ve şifreyi seçerken akıllı olmalısınız. Kullanıcı adı "admin" seçmemeli ve şifrelerinizi kompleks olarak tasarlamanızda fayda vardır.Bu yöntem Joomla'nızı sıkılaştırmanın en kolay ve muhtemelen de en iyi yoludur.İnsanlar kolay hatırlayabilmek için basit şifreler tercih etmekte ve hacklendikten sonra çok pişman olmaktadır.

Joomla administrator kullanıcı adını değiştirmenize izin vermektedir.

![alt text](http://i.hizliresim.com/AJWqgX.png "Joomla Logo")

Daha sonra basit bir şekilde, "Login Name" alanından değişikliği yapıp, "Save" e tıklayın.

![alt text](http://i.hizliresim.com/WYmZ12.png "Joomla Logo")

Ayrıca KeePass veya KeePassX gibi güvenli şifreler üreten, bunları bilgisayarınızda veri tabanında lokal olarak güvenilir bir şekilde saklayan programlar da kullabilirsiniz.

###3.Joomla Güvenlik Eklentileri

Günümüzde birçok sayıda, sitenizin ataklara karşı savunmasında yardımcı olan güvenlik eklentileri bulunmaktadır.Bu eklentiler; güvenlik tehditlerini sınırlandırmanıza yada bloklamanıza, şeytanı tehditleri bloklamanıza, zaafiyetlerin taranmasında, güçlü şifrelerin kabul zorunluluğu haline getirilmesine ve birçok işlemi yapmanıza olanak sağlar.En yaygın olarak kullanılanları:

* ACL Manager: Joomla izin tablonuzdaki sorunları kolayca çözümlemenizi sağlar.
* AdminExile: Brute-force tespiti, blacklist ve whitelist IP'ler.
* QuickLogout: İnsanların logout olduktan sonra, bu işlemin gerçekleştiğine dair verilen yanıttan kurtulunması.
* Securitycheck Pro: Serverınızın çalışma hızı etkilenmeden sitenizi korumanızı sağlayan global bir koruma programı.
* jomDefender: CSRF engelleme, Joomla PHP Header'ı kaldırma, Admin password prompt.

Bu tarz eklentiler ek olarak:
* Gizli bir URL ile, adminin kısıtlanmasını, 
* Web Application Firewallyaygın saldırıları bloklar(SQL injection, XSS, DFI, RFI, malicious user agent, CSRF/spam-bot protection, uploads scanner).
* IP Whitelisting ve Blacklisting
* Coğrafik bloklama(spesifik bölgelerden erişimin reddedilmesi)
* Tekrarlı saldırganlara karşı IP Blocking işlemlerinin yapılmasını sağlar

###4.Bad Bots Bloklama

Joomla sitenizin bant genişliğini çalmak isteyen birçok bad bots, scrappers ve crawlers bulunmaktadır.En kapsamlı listeye botreports.com sitesinden ulaşabilirsiniz.Çok sayıda güvenlik eklentisi bad bots bloklamada çok iyi iş çıkartırken, bazen server seviyesinde müdahalelere ihtiyacınız olmaktadır.Çoklu User-Agent bloklamak istiyorsanız, .htaccess file'a bunu eklemeniz gerekmektedir.

![alt text](http://i.hizliresim.com/mLm512.png "Joomla Logo")

BrowserMatchNoCase direktifleri de kullanabilirsiniz.

![alt text](http://i.hizliresim.com/6nd8qk.png "Joomla Logo")

###5.Bağlantıları Güvenceye Almak

Joomla web sitenize bağlandığınız sırada, kullandığız bağlantıların güvenilirliğini garantiye almanız gerekmektedir.Eğer web sunucunuz destekliyorsa, SFTP encryption'ı kullanabilirsiniz.Eğer desteklemiyorsa SSH kullanmanız tavsiye edilmektedir.Bir FTP client'ı kullanıyorsanız, SFTP için olan default port genellikle 22'dir.

![alt text](http://i.hizliresim.com/VYm63n.png "Joomla Logo")

Not: Bazı FTP client'ları şifreleri bilgisayar üzerinde şifrelenmiş bir şekilde depolar.Şifrelenmiş şifreler, kullanılacağı zamanlarda tekrar orijinal haline çevrilebilmektedir.Ancak FTP client'ları içinde şifre saklanması yöntemi önerilmemektedir.

Başka önemli bir konu da, firewall kurallarının home router üzerinde düzgün bir şekilde çalıştığından emin olun.Dışarıda internete bağlandığınız public yerler, internet kafe veya Starbucks gibi, güvenilir networkler değildir.

Web sitenizin oturduğu yerdeki web sunucunuz de aynı zamanda güvenilir hostinglerle çalışmalıdır.Joomla her zaman güncel ve desteklenmiş PHP, MySQL, account isolation, Web Application Firewall vb. versiyonları ile çalışmalıdır.Aşırı kalabalık ve kaynak paylaşımlı serverlarda dikkatli olunmalıdır.

###6.Dosya İzinleri

Joomla web sitenizi korumak istiyorsanız, doğru dosya izinlerinin verildiğinden emin olmanız gerekmektedir.Her directory ve dosya, kullanıcılara okuma, yazma ve değişiklik yapma ile ilgili farklı izinler sağlamaktadır.Eğer izinleriniz yeterince sıkı değilse, davetsiz misafirler için bir kapı açabilir, fazla sıkıysa da, kurulumunuzu bozabilir ve belirli directorylere yazmanız gerekmektedir.

Joomla'nın güvenlik izinleri ile ilgili güzel bir dökümantasyonu bulunmaktadır:

* How do UNIX file permissions work?
* How do Windows file permissions work?
* How do phpSuExec file permissions work?

Joomla kurulum sırasında, aşağıdaki konfigürasyonları önermektedir:

* PHP files: 644
* Config files: 644
* Other folders: 755

Bu önerilere rağmen, kurulum sırasında daha kısıtlayıcı izinler tanımlamanız daha önerilen ve güvenilir bir yol olacaktır.



##Joomla Community and Support
One of Joomla’s major strengths is its community. Being such a large group of
people, all levels of users are constantly asking questions, and most major ones have
already been answered by someone somewhere, so checking out the forums
(http://forum.joomla.org/) and the Wiki pages (http://docs.joomla.org/) can answer
most questions you might have.

#Conclusion
Like most interfaces with a lot of features, Joomla can seem to have a long learning
curve, due to all of its features and all its possible configurations. The task is much less
time consuming that it seems, especially if you set yourself to master one feature at
a time. In no time you can have an easy to update dynamic site that can also grow
with you.
Changing looks and adding features can be done in minutes and major
configuration changes can be done by changing a few files. If you’ve ever
considered using Joomla, I hope this guide inspires you to give it a try, and I hope it
helps to make your new CMS experience a much easier one.
If you ever run into any problems using Joomla, please ask for help at MakeUseOf
Answers and someone will be able to assist you with your matter, or view other
Joomla questions.

