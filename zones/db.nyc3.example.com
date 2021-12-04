;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.thilanka.dilhan. admin.thilanka.dilhan. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns1.thilanka.dilhan.
@       IN      NS      ns2.thilanka.dilhan.

ns1.thilanka.dilhan.          IN      A       10.166.0.2
ns2.thilanka.dilhan.          IN      A       10.166.0.2

host1.thilanka.dilhan.        IN      A      35.198.207.200
host2.thilanka.dilhan.        IN      A      35.225.94.12

