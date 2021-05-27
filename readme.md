This is a reproduction for https://github.com/jruby/jruby/issues/6689.

Under Ubuntu 20 LTS, with OpenJDK 8, and the latest stable version of RVM (1.29.12), jruby-9.2.13.0 and jruby-9.2.17.0 cannot be installed.

## Logs for JRuby 9.2.13.0

Here are the logs, which show `Unrecognized option: --module-path`, meaning that a JDK > 8 is somehow expected (but not present):

```
$ vagrant up
Bringing machine 'jruby_rvm_repro' up with 'virtualbox' provider...
==> jruby_rvm_repro: Importing base box 'bento/ubuntu-20.04'...
==> jruby_rvm_repro: Matching MAC address for NAT networking...
==> jruby_rvm_repro: Checking if box 'bento/ubuntu-20.04' version '202105.25.0' is up to date...
==> jruby_rvm_repro: Setting the name of the VM: docker_jruby_rvm_repro_1622151187164_44676
==> jruby_rvm_repro: Clearing any previously set network interfaces...
==> jruby_rvm_repro: Preparing network interfaces based on configuration...
    jruby_rvm_repro: Adapter 1: nat
    jruby_rvm_repro: Adapter 2: hostonly
==> jruby_rvm_repro: Forwarding ports...
    jruby_rvm_repro: 22 (guest) => 2222 (host) (adapter 1)
==> jruby_rvm_repro: Booting VM...
==> jruby_rvm_repro: Waiting for machine to boot. This may take a few minutes...
    jruby_rvm_repro: SSH address: 127.0.0.1:2222
    jruby_rvm_repro: SSH username: vagrant
    jruby_rvm_repro: SSH auth method: private key
    jruby_rvm_repro: Warning: Remote connection disconnect. Retrying...
    jruby_rvm_repro: Warning: Connection reset. Retrying...
    jruby_rvm_repro: 
    jruby_rvm_repro: Vagrant insecure key detected. Vagrant will automatically replace
    jruby_rvm_repro: this with a newly generated keypair for better security.
    jruby_rvm_repro: 
    jruby_rvm_repro: Inserting generated public key within guest...
    jruby_rvm_repro: Removing insecure key from the guest if it's present...
    jruby_rvm_repro: Key inserted! Disconnecting and reconnecting using new SSH key...
==> jruby_rvm_repro: Machine booted and ready!
==> jruby_rvm_repro: Checking for guest additions in VM...
==> jruby_rvm_repro: Configuring and enabling network interfaces...
==> jruby_rvm_repro: Mounting shared folders...
    jruby_rvm_repro: /vagrant => /Volumes/REDACTED/docker
==> jruby_rvm_repro: Running provisioner: shell...
    jruby_rvm_repro: Running: /var/folders/tl/1p_8qmn13cbgh_539g1yxyyc0000gn/T/vagrant-shell20210527-54951-1jwh4kn.sh
    jruby_rvm_repro: gpg: directory '/home/vagrant/.gnupg' created
    jruby_rvm_repro: gpg: keybox '/home/vagrant/.gnupg/pubring.kbx' created
    jruby_rvm_repro: gpg: /home/vagrant/.gnupg/trustdb.gpg: trustdb created
    jruby_rvm_repro: gpg: key 105BD0E739499BDB: public key "Piotr Kuczynski <piotr.kuczynski@gmail.com>" imported
    jruby_rvm_repro: gpg: key 3804BB82D39DC0E3: public key "Michal Papis (RVM signing) <mpapis@gmail.com>" imported
    jruby_rvm_repro: gpg: Total number processed: 2
    jruby_rvm_repro: gpg:               imported: 2
    jruby_rvm_repro: Downloading https://github.com/rvm/rvm/archive/1.29.12.tar.gz
    jruby_rvm_repro: Downloading https://github.com/rvm/rvm/releases/download/1.29.12/1.29.12.tar.gz.asc
    jruby_rvm_repro: gpg: Signature made Fri 15 Jan 2021 06:46:22 PM UTC
    jruby_rvm_repro: gpg:                using RSA key 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    jruby_rvm_repro: gpg: Good signature from "Piotr Kuczynski <piotr.kuczynski@gmail.com>" [unknown]
    jruby_rvm_repro: gpg: WARNING: This key is not certified with a trusted signature!
    jruby_rvm_repro: gpg:          There is no indication that the signature belongs to the owner.
    jruby_rvm_repro: Primary key fingerprint: 7D2B AF1C F37B 13E2 069D  6956 105B D0E7 3949 9BDB
    jruby_rvm_repro: GPG verified '/home/vagrant/.rvm/archives/rvm-1.29.12.tgz'
    jruby_rvm_repro: Installing RVM to /home/vagrant/.rvm/
    jruby_rvm_repro:     Adding rvm PATH line to /home/vagrant/.profile /home/vagrant/.mkshrc /home/vagrant/.bashrc /home/vagrant/.zshrc.
    jruby_rvm_repro:     Adding rvm loading line to /home/vagrant/.profile /home/vagrant/.bash_profile /home/vagrant/.zlogin.
    jruby_rvm_repro: Installation of RVM in /home/vagrant/.rvm/ is almost complete:
    jruby_rvm_repro:   * To start using RVM you need to run `source /home/vagrant/.rvm/scripts/rvm`
    jruby_rvm_repro:     in all your open shell windows, in rare cases you need to reopen all shell windows.
    jruby_rvm_repro: <warn>Thanks for installing RVM 🙏</warn>
    jruby_rvm_repro: Please consider donating to our open collective to help us maintain RVM.
    jruby_rvm_repro: 
    jruby_rvm_repro: 👉  Donate: <code>https://opencollective.com/rvm/donate</code>
    jruby_rvm_repro: 
==> jruby_rvm_repro: Running provisioner: shell...
    jruby_rvm_repro: Running: /var/folders/tl/1p_8qmn13cbgh_539g1yxyyc0000gn/T/vagrant-shell20210527-54951-f9ie5m.sh
    jruby_rvm_repro: Required jruby-9.2.13.0 is not installed - installing.
    jruby_rvm_repro: Searching for binary rubies, this might take some time.
    jruby_rvm_repro: Found remote file https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.2.13.0/jruby-dist-9.2.13.0-bin.tar.gz
    jruby_rvm_repro: Checking requirements for ubuntu.
    jruby_rvm_repro: Installing requirements for ubuntu.
    jruby_rvm_repro: Updating system
    jruby_rvm_repro: .....
    jruby_rvm_repro: Installing required packages: g++, make, openjdk-8-jre-headless
    jruby_rvm_repro: ............................................
    jruby_rvm_repro: Requirements installation successful.
    jruby_rvm_repro: jruby-9.2.13.0 - #configure
    jruby_rvm_repro: jruby-9.2.13.0 - #download
[SNIP download traces]
    jruby_rvm_repro: No checksum for downloaded archive, recording checksum in user configuration.
    jruby_rvm_repro: jruby-9.2.13.0 - #validate archive
    jruby_rvm_repro: jruby-9.2.13.0 - #extract
    jruby_rvm_repro: jruby-9.2.13.0 - #validate binary
    jruby_rvm_repro: jruby-9.2.13.0 - #setup
    jruby_rvm_repro: jruby-9.2.13.0 - #gemset created /home/vagrant/.rvm/gems/jruby-9.2.13.0@global
    jruby_rvm_repro: jruby-9.2.13.0 - #importing gemset /home/vagrant/.rvm/gemsets/jruby/global.gems
    jruby_rvm_repro: ....
    jruby_rvm_repro: Error running 'gemset_import_list jruby-openssl jruby-launcher gem-wrappers rubygems-bundler rake rvm bundler',
    jruby_rvm_repro: please read /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemsets.import.global.log
    jruby_rvm_repro: jruby-9.2.13.0 - #generating global wrappers
    jruby_rvm_repro: .........
    jruby_rvm_repro: Error running 'run_gem_wrappers regenerate',
    jruby_rvm_repro: please read /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemset.wrappers.global.log
    jruby_rvm_repro: jruby-9.2.13.0 - #gemset created /home/vagrant/.rvm/gems/jruby-9.2.13.0
    jruby_rvm_repro: jruby-9.2.13.0 - #importing gemsetfile /home/vagrant/.rvm/gemsets/default.gems evaluated to empty gem list
    jruby_rvm_repro: jruby-9.2.13.0 - #generating default wrappers
    jruby_rvm_repro: .................
    jruby_rvm_repro: Error running 'run_gem_wrappers regenerate',
    jruby_rvm_repro: please read /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemset.wrappers.default.log
    jruby_rvm_repro: Using /home/vagrant/.rvm/gems/jruby-9.2.13.0
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemsets.import.global.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.13.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemsets.import.global.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.13.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemset.wrappers.default.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.13.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemset.wrappers.default.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.13.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemset.wrappers.global.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.13.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151224_jruby-9.2.13.0/gemset.wrappers.global.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.13.0/lib/jruby.jar
```

### Logs for JRuby 9.2.17.0

JRuby 9.2.17.0 was fixed to handle this, but it appears it doesn't work still (despite https://github.com/jruby/jruby/commit/ebf92b39391f04f06ebd6e3c54878f5a4bba4632):

```
$ vagrant up
Bringing machine 'jruby_rvm_repro' up with 'virtualbox' provider...
==> jruby_rvm_repro: Importing base box 'bento/ubuntu-20.04'...
==> jruby_rvm_repro: Matching MAC address for NAT networking...
==> jruby_rvm_repro: Checking if box 'bento/ubuntu-20.04' version '202105.25.0' is up to date...
==> jruby_rvm_repro: Setting the name of the VM: jruby-rvm-ubuntu-focal-repro_jruby_rvm_repro_1622151847094_15498
==> jruby_rvm_repro: Fixed port collision for 22 => 2222. Now on port 2200.
==> jruby_rvm_repro: Clearing any previously set network interfaces...
==> jruby_rvm_repro: Preparing network interfaces based on configuration...
    jruby_rvm_repro: Adapter 1: nat
    jruby_rvm_repro: Adapter 2: hostonly
==> jruby_rvm_repro: Forwarding ports...
    jruby_rvm_repro: 22 (guest) => 2200 (host) (adapter 1)
==> jruby_rvm_repro: Booting VM...
==> jruby_rvm_repro: Waiting for machine to boot. This may take a few minutes...
    jruby_rvm_repro: SSH address: 127.0.0.1:2200
    jruby_rvm_repro: SSH username: vagrant
    jruby_rvm_repro: SSH auth method: private key
    jruby_rvm_repro: 
    jruby_rvm_repro: Vagrant insecure key detected. Vagrant will automatically replace
    jruby_rvm_repro: this with a newly generated keypair for better security.
    jruby_rvm_repro: 
    jruby_rvm_repro: Inserting generated public key within guest...
    jruby_rvm_repro: Removing insecure key from the guest if it's present...
    jruby_rvm_repro: Key inserted! Disconnecting and reconnecting using new SSH key...
==> jruby_rvm_repro: Machine booted and ready!
==> jruby_rvm_repro: Checking for guest additions in VM...
==> jruby_rvm_repro: Configuring and enabling network interfaces...
==> jruby_rvm_repro: Mounting shared folders...
    jruby_rvm_repro: /vagrant => /Volumes/REDACTED/jruby-rvm-ubuntu-focal-repro
==> jruby_rvm_repro: Running provisioner: shell...
    jruby_rvm_repro: Running: /var/folders/tl/1p_8qmn13cbgh_539g1yxyyc0000gn/T/vagrant-shell20210527-57613-10f6eg.sh
    jruby_rvm_repro: gpg: directory '/home/vagrant/.gnupg' created
    jruby_rvm_repro: gpg: keybox '/home/vagrant/.gnupg/pubring.kbx' created
    jruby_rvm_repro: gpg: /home/vagrant/.gnupg/trustdb.gpg: trustdb created
    jruby_rvm_repro: gpg: key 105BD0E739499BDB: public key "Piotr Kuczynski <piotr.kuczynski@gmail.com>" imported
    jruby_rvm_repro: gpg: key 3804BB82D39DC0E3: public key "Michal Papis (RVM signing) <mpapis@gmail.com>
    jruby_rvm_repro: " imported
    jruby_rvm_repro: gpg: Total number processed: 2
    jruby_rvm_repro: gpg:               imported: 2
    jruby_rvm_repro: Downloading https://github.com/rvm/rvm/archive/1.29.12.tar.gz
    jruby_rvm_repro: Downloading https://github.com/rvm/rvm/releases/download/1.29.12/1.29.12.tar.gz.asc
    jruby_rvm_repro: gpg: Signature made Fri 15 Jan 2021 06:46:22 PM UTC
    jruby_rvm_repro: gpg:                using RSA key 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    jruby_rvm_repro: gpg: Good signature from "Piotr Kuczynski <piotr.kuczynski@gmail.com>" [unknown]
    jruby_rvm_repro: gpg: WARNING: This key is not certified with a trusted signature!
    jruby_rvm_repro: gpg:          There is no indication that the signature belongs to the owner.
    jruby_rvm_repro: Primary key fingerprint: 7D2B AF1C F37B 13E2 069D  6956 105B D0E7 3949 9BDB
    jruby_rvm_repro: GPG verified '/home/vagrant/.rvm/archives/rvm-1.29.12.tgz'
    jruby_rvm_repro: Installing RVM to /home/vagrant/.rvm/
    jruby_rvm_repro:     Adding rvm PATH line to /home/vagrant/.profile /home/vagrant/.mkshrc /home/vagrant/.bashrc /home/vagrant/.zshrc.
    jruby_rvm_repro:     Adding rvm loading line to /home/vagrant/.profile /home/vagrant/.bash_profile /home/vagrant/.zlogin.
    jruby_rvm_repro: Installation of RVM in /home/vagrant/.rvm/ is almost complete:
    jruby_rvm_repro:   * To start using RVM you need to run `source /home/vagrant/.rvm/scripts/rvm`
    jruby_rvm_repro:     in all your open shell windows, in rare cases you need to reopen all shell windows.
    jruby_rvm_repro: <warn>Thanks for installing RVM 🙏</warn>
    jruby_rvm_repro: Please consider donating to our open collective to help us maintain RVM.
    jruby_rvm_repro: 
    jruby_rvm_repro: 👉  Donate: <code>https://opencollective.com/rvm/donate</code>
    jruby_rvm_repro: 
==> jruby_rvm_repro: Running provisioner: shell...
    jruby_rvm_repro: Running: /var/folders/tl/1p_8qmn13cbgh_539g1yxyyc0000gn/T/vagrant-shell20210527-57613-1m55ux7.sh
    jruby_rvm_repro: Unknown ruby string (do not know how to handle): jruby-9.2.17.0.
    jruby_rvm_repro: Required jruby-9.2.17.0 is not installed - installing.
    jruby_rvm_repro: Unknown ruby string (do not know how to handle): jruby-9.2.17.0.
    jruby_rvm_repro: Searching for binary rubies, this might take some time.
    jruby_rvm_repro: Unknown ruby string (do not know how to handle): jruby-9.2.17.0.
    jruby_rvm_repro: Unknown ruby string (do not know how to handle): jruby-9.2.17.0.
    jruby_rvm_repro: Found remote file https://repo1.maven.org/maven2/org/jruby/jruby-dist/9.2.17.0/jruby-dist-9.2.17.0-bin.tar.gz
    jruby_rvm_repro: Checking requirements for ubuntu.
    jruby_rvm_repro: Installing requirements for ubuntu.
    jruby_rvm_repro: Updating system
    jruby_rvm_repro: .....
    jruby_rvm_repro: Installing required packages: g++, make, openjdk-8-jre-headless
    jruby_rvm_repro: ............................................
    jruby_rvm_repro: Requirements installation successful.
    jruby_rvm_repro: jruby-9.2.17.0 - #configure
    jruby_rvm_repro: Unknown ruby string (do not know how to handle): jruby-9.2.17.0.
    jruby_rvm_repro: jruby-9.2.17.0 - #download

[SNIP download traces]

    jruby_rvm_repro: No checksum for downloaded archive, recording checksum in user configuration.
    jruby_rvm_repro: jruby-9.2.17.0 - #validate archive
    jruby_rvm_repro: jruby-9.2.17.0 - #extract
    jruby_rvm_repro: jruby-9.2.17.0 - #validate binary
    jruby_rvm_repro: jruby-9.2.17.0 - #setup
    jruby_rvm_repro: jruby-9.2.17.0 - #gemset created /home/vagrant/.rvm/gems/jruby-9.2.17.0@global
    jruby_rvm_repro: jruby-9.2.17.0 - #importing gemset /home/vagrant/.rvm/gemsets/jruby/global.gems
    jruby_rvm_repro: ....
    jruby_rvm_repro: Error running 'gemset_import_list jruby-openssl jruby-launcher gem-wrappers rubygems-bundler rake rvm bundler',
    jruby_rvm_repro: please read /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemsets.import.global.log
    jruby_rvm_repro: jruby-9.2.17.0 - #generating global wrappers
    jruby_rvm_repro: .........
    jruby_rvm_repro: Error running 'run_gem_wrappers regenerate',
    jruby_rvm_repro: please read /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemset.wrappers.global.log
    jruby_rvm_repro: jruby-9.2.17.0 - #gemset created /home/vagrant/.rvm/gems/jruby-9.2.17.0
    jruby_rvm_repro: jruby-9.2.17.0 - #importing gemsetfile /home/vagrant/.rvm/gemsets/default.gems evaluated to empty gem list
    jruby_rvm_repro: jruby-9.2.17.0 - #generating default wrappers
    jruby_rvm_repro: .................
    jruby_rvm_repro: Error running 'run_gem_wrappers regenerate',
    jruby_rvm_repro: please read /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemset.wrappers.default.log
    jruby_rvm_repro: Using /home/vagrant/.rvm/gems/jruby-9.2.17.0
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemsets.import.global.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.17.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemsets.import.global.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.17.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemset.wrappers.default.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.17.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemset.wrappers.default.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.17.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemset.wrappers.global.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.17.0/lib/jruby.jar
    jruby_rvm_repro: /home/vagrant/.rvm/log/1622151891_jruby-9.2.17.0/gemset.wrappers.global.log:Unrecognized option: --module-path=/home/vagrant/.rvm/rubies/jruby-9.2.17.0/lib/jruby.jar
```
