$TTL 10800
$ORIGIN leroy.kyng.be.

@ IN SOA ns.leroy.kyng.be. admin.leroy.kyng.be (
		1
		10800
		3600
		604800
		3600 )

@ IN NS ns.leroy.kyng.be.

	ns		        IN	   A	         149.202.60.72
    intranet	    IN	   A	         149.202.60.72
    b2b		        IN	   A	         149.202.60.72
    www	            IN	   A	         149.202.60.72
	_sip.udp       SRV	   0	 560   	 leroy.kyng.be.
