$ ORIGIN l1-1.ephec-ti.be
$ $TTL 604800
@       IN      SOA     ns.l1-1.ephec-ti.be. n.martou.students.ephec.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL
						
            IN      NS      ns.l1-1.ephec-ti.be.
ns          IN      A       135.125.101.197	

b2b			IN 		A								; Web serveur pour revendeur
www			IN		A								; Web serveur pour client de tous les jours