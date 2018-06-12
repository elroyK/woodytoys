$TTL 10800
$ORIGIN leroy.ephec-ti.be.

@ IN SOA ns.leroy.ephec-ti.be. admin.leroy.ephec-ti.be (
		1
		10800
		3600
		604800
		3600 )

@ IN NS ns.leroy.ephec-ti.be.

	ns		IN	A	54.37.65.131
	intranet	IN	A	54.37.65.131
	b2b		IN	A	54.37.65.131
	www		IN	A	54.37.65.131
	_sip.udp  SRV	0	560	leroy.ephec-ti.be.
