Install and setup Certbot
=========

Installs and setups Certbot to be able to generate Lets Enrcypt certificates and renew them automatically

Role Tasks
--------------
- Install certbot: ./tasks/main.yml
- Add certificate: ./tasks/add_certificate.yml


Role Variables for installing certbot
--------------

The variables for this tasks are:
```
cron_minute: 0
cron_hour: 0
cron_day: 1
```

Role Variables for adding a certificate
--------------

The variables for this tasks are:
```
certificate_email: acme@hoprnet.org
certificate_domain_name: certbot1.molecule.hoprtech.net
```

License
-------

MIT


