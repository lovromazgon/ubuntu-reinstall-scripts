# ubuntu-reinstall-scripts
This project contains scripts, which install all apps which I need on my computer. It makes a fresh OS install much easier. Feel free to fork and tailor the scripts to your needs.

List of applications, that are installed by the scripts:

### essentials
- [Sony Vaio VPCF11 suspend fix] (https://bugs.launchpad.net/ubuntu/+source/ubuntu-docs/+bug/926234)
- [Deluge] (http://deluge-torrent.org/)
- Git
- [Zsh](http://www.zsh.org/), [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- Rar, unrar, 7zip
- [Sublime Text 3](http://www.sublimetext.com/3)
- [VLC](http://www.videolan.org/vlc/)

### apps
- [Calibre](http://calibre-ebook.com/)
- [Copy](https://www.copy.com)
- [Skype](http://www.skype.com/)
- [Virtualbox](https://www.virtualbox.org/)

### development
- [GVM](http://gvmtool.net/)
  - [Gradle](https://gradle.org/)
  - [Groovy](http://www.groovy-lang.org/)
- [Intellij IDEA 14](https://www.jetbrains.com/idea/)
- [Java 8](http://www.oracle.com/technetwork/java/index.html)
- [Apache Tomcat 8](http://tomcat.apache.org/)
- [Vim](http://www.vim.org/)

# installation
If you want to install everything, just go to the root folder and execute `./main_install.sh`

If you want to install one of the bundles, you must provide the output log filename, e.g. `./install_apps.sh output.log`
