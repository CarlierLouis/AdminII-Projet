$ ORIGIN l1-1.ephec-ti.be.
$ $TTL 604800
@       IN      SOA     ns.l1-1.ephec-ti.be. root.l1-1.ephec-ti.be. (
                        1           ; Serial
                        604800      ; Refresh
                        86400       ; Retry
                        2419200     ; Expire
                        604800 )    ; Negative Cache TTL

;Attribution du "name server" (NS)
l1-1.ephec-ti.be.   IN      NS      ns.l1-1.ephec-ti.be.
ns.l1-1.ephec-ti.be.   		IN      A       135.125.101.197			; VPS de Nicolas

;Attribution des nom de domaine pour les sites web publiques
b2b					IN 		A		51.210.7.20		; Web serveur pour revendeur, VPS de Lucas
www					IN		A		51.210.7.20		; Web serveur pour client de tous les jours, VPS de Lucas

;Attribution du nom de domaine pour le mail
mail				IN		A		135.125.101.187	; Serveur mail, VPS de Nicolas
@					IN		MX		10	mail.l1-3.ephec-ti.be.

voip				IN		A		51.210.7.20		; Serveur de la VoIP, VPS de Lucas

_sip._tcp		86400		IN	SRV		10		100		5060		voip.l1-1.ephec-ti.be.
_sip._udp		86400		IN	SRV		10		100		5060		voip.l1-1.ephec-ti.be.