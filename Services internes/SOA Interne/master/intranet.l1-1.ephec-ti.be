$ORIGIN intranet.l1-1.ephec-ti.be.
$TTL 604800
@     IN     SOA    ns.intranet.l1-1.ephec-ti.be.     l.carlier.intranet.l1-1.ephec-ti.be. (
                    2001062501 ; serial
                    604800 ; Refresh
                    86400 ; Retry
                    2419200 ; Expire
                    604800 ) ; Negative Cache TTL
;

          IN      NS      ns.intranet.l1-1.ephec-ti.be.

ns          IN      A       172.16.0.1
resolv      IN      A       172.16.0.2
erp         IN      A       172.16.0.3
db          IN      A       172.16.0.4
