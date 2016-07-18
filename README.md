# Joomla-Kullan-m-K-lavuzu

#Introduction
Joomla is a great Content Management System with a lot of flexibility and with an
easy-to-use user interface that a lot of people get intimidated about when they
realize how many options and configurations are available. This manual is meant to
serve as a guide to Joomla’s basic features and help you install and start your first
Joomla website.

![alt text](http://www.webdoor.com.au/images/joomla.png "Joomla Logo")

We have all been beginner
users at some point, so I
hope this guide helps
answer some of the questions you might have.


##What is a CMS (Content Management System)?
A Content Management System is a series of programming pages connected to a
database that allows one to retrieve information from that database in the form of
content. Sounds complicated? You’ve used one more often that you think.
Have you ever updated your Facebook page or created a blog? Have you ever
bought a book from Amazon.com or bid on something on eBay? Have you ever
read The New York Times Online or checked something out on Wikipedia? All of
these sites work with a type of Content Management System.
The ones we will be focusing on are ones that allow you to manage your own
website from a simple interface, to creating your own pages and menus without the
need for knowing how to program yourself.

##About Joomla
Joomla is a platform based on PHP and MySQL which was created in 2005 by a
team of open source developers. It currently has 200,000 community users and
contributors. Joomla is free to anyone who wants to download it and use it to create
a website. It is also open to anyone who wants to create extensions and templates.
The most current version of Joomla can be downloaded from
http://www.joomla.org/download.html

Why Joomla?
There are three main free CMSs available today, and endless other less popular
ones. The most popular Content Management Systems available are: Joomla,
Drupal and Wordpress.
The differences among them are quite significant, although they are basically
meant to do the same thing – to help you create and manage your website. There
have been many heated arguments between the Joomla and the Drupal users over
which one is best. As someone who has used them both, my take is that they each
have their good and bad points.

###Joomla

**Pros**:

* Joomla is usually easier to get up and running and tends to have a
quicker learning curve.
* Joomla tends to have better looking templates and a friendlier
community, even towards beginner users.

**Cons**:

* Joomla’s code can be messy at times and loading time tends to be
longer because of that.
* Its architecture limits how many levels of sub categories can be created.
* 
###Drupal

**Pros**:

* Drupal has a more flexible infrastructure, allowing you to create multiple
sub-categories and with more advanced user features.
* Fast loading time and reasonably clean code.
* 
**Cons**:

* Longer learning curve and usually a longer install to launch time.
* Although the community is supportive, there is less tolerance to new users
and people asking very basic questions.
Basically, they are both excellent CMSs and which one you choose should depend
on your particular needs and willingness to work through each CMS’s individual
problems.

![alt text](http://i.hizliresim.com/kvyyyW.jpg "Joomla Logo")

Also pay attention to what modules and themes each CMS has as you may require
one that is not on both platforms. It is best to weigh up the pros and cons of each
CMS before you go ahead and create your website.
Wordpress is different in many ways. Wordpress truly is built to serve primarily as a
blogging platform. It also has a large community and flexibility to evolve beyond a
simple blog, but it works best as a delivery medium for always changing material
exactly the way blogs are supposed to be. That being said, you can create nice
websites using Wordpress that are not blogs.

#Installing Joomla

##Basic Requirements

There are two ways to install Joomla. Manually and using an installation software
such as Fantastico or C-panel, which are installed in the host’s server and offer an
user friendly interface for the management of the site and the installation of
software, but the requirements for both are very similar.
Since Joomla is a database driven system, it requires a SQL database to run. That’s
where it will install its tables and store information you add to it. Joomla also does
better on a relatively fast server, so if you have been on the same server for longer
than you can remember, contact your host and check if it’s been upgraded and if
that’s not the case, ask to be moved to a newer server.
Joomla uses a lot of resources and your site will load faster if the server can handle
many processes at once. There is also a chance that the technology on older
servers won’t support Joomla’s newest versions. You can view a list of the most
current requirements at: http://help.joomla.org/content/view/1938/302/
If you are using Fantastico or C-Panel, check the version of the installer. You want
the newest version of Joomla if possible, and at the very least one version behind.
New versions usually carry security upgrades as well as bug fixes, and when dealing
with a dynamic site, those fixes can make a big difference.
To determine Joomla’s latest version, visit the Joomla website.

Installation with C-Panel

So you have checked all the requirements, what now? Well, if you have C-Panel
installed on your server, you have your work cut out for you.
Go to C-Panel, look for Fantastico and look under the Content Management
section. Check the version of Joomla they have available. You want the 1.5 version
at least. If it is a recent version, click “New Installation” (some versions of Fantastico
also give you an option to upgrade your installation if you already have one).

![alt text](http://i.hizliresim.com/r9obmz.png "Joomla Logo")

You will be asked to fill in the following fields:
* What domain you want to use.
* Install directory (leave it empty if you want it to be in the root folder of your
site or create the name of a directory if you want it to be inside a folder within
your site).
* Admin username and password, email and full name.
* Site name
* Install user data (check box). This option will install pages, menus and
directories with Joomla information. If you’d like to see them and change
them around as a way of learning how to use the site, leave this option.
Personally, I find this option cumbersome, since you have to go ahead and
delete all the Joomla pages from your site, so I always uncheck this. Then click
“Install Joomla”.

![alt text](http://i.hizliresim.com/pPpL40.jpg "Joomla Logo")

Just give it a few minutes and C-Panel will create the database and install Joomla
for you. It will then give you a link to your installation and to your administration,
which is where you go to create articles and configure your site.

##Manual Installation
Now what do you do if your server does not provide you with C-Panel? Don’t worry,
there are a few more steps, but it’s still not a long process.
You will need a database, an FTP program and Joomla Installation files.
###Step 1 – The Database
Most hosts nowadays, allow you to create databases using their administration. You
won’t have to know how to deal with the database once it’s created. All you need
is the:
* Database Name
* Database ID
* Database Password
* Database Path (or address)
Once you create the database, you should have access to all that information.
Keep it safe, since Joomla will ask you for it during the installation.

###Step 2 – Downloading Joomla Files
Once you have the database set up, you need the Joomla Installation files. You can
get the most updated files from: http://www.joomla.org/download.html
Download them to your computer as a zip file and extract them to your website
folder. Now, you have two options here. If you want Joomla to be your whole site, or
the main part of your site, you should put it on the root folder, which is the main
folder for your site.
If instead, you already have a site and you only want Joomla to be part of that site,
in a subfolder such as: http://mysite.com/joomla, then you should create that folder
and extract all of the files to that folder instead.

###Step 3 – Uploading Joomla Files
Next, you should upload all of the Joomla files to your host using an FTP program, or
extract the zip file directly to your server through the server’s file manager.
THE COMPLETE BEGINNERS GUIDE TO
JOOMLA
http://simplytatydesigns.com | Taty Sena
MakeUseOf.com

###Step 4 – Running the Installation
Once that is done, go to (if you uploaded Joomla to the root folder):
http://yoursite.com/index.php
Or if you uploaded it to a sub-folder, go to:
http://yoursite.com/JoomlaFolder/index.php
From that point on, follow the install wizard. 

