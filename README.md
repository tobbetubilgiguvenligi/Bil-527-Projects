# Joomla Kullanım Kılavuzu

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

It will add some code to the article to create the “Read more” button. It is
particularly useful if you are using a blog display (more on that later) and don’t want
a list of complete articles to display on the same page.
You will also notice that there are several advanced parameters you can modify
such whether you want to display the name of the author or whether you want to
display the default PDF, print and email icons that usually appear on the upper right
hand side of Joomla articles.
##Media Manager
The media manager is your tool to organizing your images. One important thing to
know about the media manager is where to put your files. By default, it comes with a
few images (such as fruit and food). Those images can be accessed from the
articles interface to be added to the articles, but only the folders and images
placed inside the “Stories” folder can be accessed that way.
You can still link to the other images, but you must find their address by hand and
type it in, so for ease of use, I suggest you place all of the images you will be placing
on the pages of your site in organized folders inside the “Stories” folder.
Another thing to know is that the Media Manager does not re-size images, so if you
are uploading huge images, they will distort your website once you place them on
the website, and even if you change the image size by hand on the code within
Joomla, those images will still take a long time to load and significantly slow your site
down. So re-size and compress them with image software in your computer before
uploading them to the Media Manager.
##Front Page Manager
The Front Page Manager is the manager that let’ you choose the order and
particular features of the articles you have selected to appear on the home page
(Front page) of your site. It can be reached from the “Content” menu. It’s the place
where you can manage the options for the articles you chose to have on the front
page of your site.
One of the most useful features is the possibility of re-ordering them (which is a
feature also available in sections, categories and articles). To do that, go to the front
page manager, and look at the list of articles listed there. You will see a column
called “order”. Change the numbers around to the order in which you would like
them to appear on the page, then click the little save icon on that column, right
next to the “order” title. 

![alt text](http://i.hizliresim.com/o7MYDo.png "Joomla Logo")

Menus
Now that you have created the
sections, categories and articles, it is
time to create the menus for your site.
You can create several different
menus and submenus using the “Menu
>Menu Manager”.
The most common one is the basic
“Main Menu”, which is created by
default and can also be found under
the “Menu” button. There are endless
choices with the menus. You can link
them to sections, categories, single
articles, external sites, components,
wrappers, and many more.
The one you will probably be using the
most is the “Articles” menu. It allows
you to link to Articles, Categories or
Sections, and also to configure how
you want them displayed. 

![alt text](http://i.hizliresim.com/l1g0Jk.png "Joomla Logo")

For example, I want to create a menu link that will point to a category in my site
called “Sports”. I also want all my articles to appear in a blog format, with the
beginning of the articles, followed by a “read more” button and displayed in 2
columns. From the new menu options I select “Articles>Category Blog Layout”.
Once you get comfortable with using Joomla and start expanding your site with
components, you will get more menu types to choose from.

##How to Design and Customize Your Site

There are many features such as social bookmarks, modules connecting to mailing
lists, calendars, photo albums, and an endless amount of other features that can be
added to your Joomla site.
They are actually one of the main advantages of having a dynamic site. You can
script in many changes and features into your site, but if you have no intentions of
learning how to script for Joomla, there are already over 5000 plugins, modules,
templates and components available for download from
http://extensions.joomla.org/, a huge percentage of which will be absolutely free.
After you have downloaded them, check the particular instructions to see if there
are any instructions out of the ordinary. If there aren’t you can get them to your site
by following the instructions below.
To install any of the features described below, all you do is go to the “Extensions”
button and select “Install/Uninstall”. You will be taken to a page that allows you to
search for the file on your computer or upload the file from a URL. That file is usually a
zipped file, and it should not have been extracted.
Once you found the file, click on “Upload and Install”. After a few moments you
should get a message saying it has installed successfully. From that point, you can
go to the Modules, plugins, components or template manager to enable them.

![alt text](http://i.hizliresim.com/z4zgv6.png "Joomla Logo")

ople tend to get a bit confused about the differences between plugins and
modules, and about what components actually do. So let me try to clear up some
of the misunderstandings.
(You can find some of the free extensions I describe below at:
http://www.makeuseof.com/tag/10-free-joomla-extensions-live/ )

###Plugins
Plugins are features that can be added to Joomla, which will appear within the
articles themselves, or that relate to interfacing with the articles. For example, I love
having options for people to share the articles on my Joomla sites and to bookmark
them. This is something that should be added to each individual article so that it
works properly, but I don’t want to have to add it to each page by hand.
That’s where the plugins come into play. I searched the Joomla extensions site for
social bookmarks and found several plugins that added that feature to my site. After
installing one, and enabling it, now, when I write an article, the links to the social
networks automatically appear on each page.

###Modules
Modules can be recognized as being those side boxes on dynamic websites. The
difference between plugins and modules is that modules appear almost as side
menus and shortcuts around the articles.
For example, if you want to have a module that people can use to sign up for your
newsletter directly from your page, you can download a module, or create one that
allows people to do that. Then it’s a matter of deciding where you want that
module to go.
Each template has its particular slots that are created to hold modules. The most
common ones are: Left bar, Right bar, Footer and Header. Most have many sub slots
you can use, where they divide those main areas into smaller parts. For example,
some templates have a user 1, user2, and user 3 on the bottom of the page. That
means you have 3 small columns on top of the footer so you can add several
modules on the bottom of your site.
Now, I mentioned you could download modules and also create modules, so how
do you create one?
Under the “Extensions” button, select Modules. Then click “New”. You will be given a
large list of options to use. Some of them are modules of components you might
have installed already, and some are default Joomla components. A few of those
are very flexible modules, such as the HTML option.
Basically it works like any other HMTL page. Whatever you want to add to it as far as
text, links, or anything else that can be added to HTML, you can add it there.
Once you have created the module, you must decide where you want it to go. You
will find a pull down of positions on the upper left hand side of your screen.
Select the position, make sure the module is enabled and save. You should now see
it on your pages. If it is in a position you don’t like or you don’t see it, just return to
your modules manager and select a different position.

![alt text](http://i.hizliresim.com/J2gpLE.png "Joomla Logo")

##Components
Components work as added features to your Joomla site. They are more complex
additions than plugins or modules because they usually bring various features with
them. Some famous components include JomSocial (not free), which creates a full
social network within your Joomla site, or Acajoom, which is a powerful email list
component.

![alt text](http://i.hizliresim.com/AJlAZ7.png "Joomla Logo")

Even though the installation follows the same process as the other extensions,
because they are more complex, they usually require that several modules are
enabled or that you configure the component, so follow the creator’s instructions.

##Templates
Anyone who opens the first page of their Joomla site will understand why the
templates are so necessary. Though Joomla gives you full access to the site’s HTML
and CSS, so you can make all the changes you want yourself, most people aren’t
fluent in those languages. That’s where the pre-made templates can be an
incredible help. 
Joomla comes with a few templates already installed, but honestly, they are no
help. One is called Beez, and it literally has bees (the insect) all over it. Not the most
charming of templates…funny, but not an eye pleaser…

![alt text](http://i.hizliresim.com/qBX43W.png "Joomla Logo")

Other sites and developers have much more professional looking templates with
several options for modules placement.
A quick search for “Joomla templates” on Google will result in hundreds of sites
where you can get free and paid templates.
Installing them is usually very simple, consisting of going to the same interface you
use to install most extensions.
Once the template is installed, you can go to the “Extensions >Template Manager”
and you should see the new template as one of the options. Check the bullet for
that template and click on the star that says “Default” on the upper right hand side
of the screen. Now if you go and look at your site you will see the new template.

One thing that causes a lot
of confusion is when
someone uploads a
template they saw a
screenshot for, and once
making it the default for
their site, realize that their
site looks very different from
the picture of the template.
The main reason that
happens is because a lot of
times, the templates comes

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
Further Reading
If you would to read more about Joomla, make sure you read the following Make
Use Of articles:
 10 Best Free Joomla Extensions You Can't Live Without
 Building an Intranet For Dummies – A Step by Step Guide
 How To Build a Free Website That Makes Money Without Any Coding
with several modules and
plugins that have to be
made active and placed
on particular parts of the
site. Read the instructions
carefully if they are
provided and don’t assume
your site will look identical to
the picture in the template.
Some extensions I suggest:
For some suggestions for
extensions I would suggest
checking out my MUO
article:
“10 Best Free Joomla
Extensions You Can’t Live
Without”
Some sites for free
templates:
Joomla24
Joomlaxe
SiteGround

Did you like this PDF Guide? Then why not visit MakeUseOf.com for daily posts on
cool websites, free software and internet tips.
If you want more great guides like this, why not subscribe to MakeUseOf and receive
instant access to 20+ PDF Guides like this one covering wide range of topics.
Moreover, you will be able to download free Cheat Sheets, Free Giveaways and
other cool things.
Subscribe to MakeUseOf : http://www.makeuseof.com/join
MakeUseOf Links:
Home: http://www.makeuseof.com
MakeUseOf Directory: http://www.makeuseof.com/dir
MakeUseOf Answers: http://www.makeuseof.com/answers
Geeky Fun: http://www.makeuseof.com/tech-fun
PDF Guides: http://www.makeuseof.com/pages/
Tech Deals: http://www.makeuseof.com/pages/hot-tech-deals
Follow MakeUseOf:
RSS Feed: http://feedproxy.google.com/Makeuseof
Newsletter: http://www.makeuseof.com/join
Facebook: http://www.facebook.com/makeuseof
Twitter: http://www.twitter.com/Makeuseof
