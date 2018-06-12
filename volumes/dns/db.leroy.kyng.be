$TTL 10800
$ORIGIN leroy.kyng.be.

@ IN SOA ns.leroy.kyng.be. admin.leroy.kyng.be (
		1
		10800
		3600
		604800
		3600 )

@ IN NS ns.leroy.kyng.be.

	ns		IN	A	54.37.65.131
	intranet	IN	A	54.37.65.131
	b2b		IN	A	54.37.65.131
	www		IN	A	54.37.65.131
	_sip.udp  SRV	0	560	leroy.kyng.be.
