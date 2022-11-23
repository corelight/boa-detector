# boa-detector

This package detects the Boa web server string in HTTP headers.  All
Boa versions are considered vulnerable:

https://www.microsoft.com/en-us/security/blog/2022/11/22/vulnerable-sdk-components-lead-to-supply-chain-risks-in-iot-and-ot-environments/

When the `/^Boa\/.*/` server string is observed, this package will raise a notice `BoaDetector::Vulnerable_Boa_Web_Server` for the connection
ID `c$id`.

## notice.log

```
#separator \x09
#set_separator	,
#empty_field	(empty)
#unset_field	-
#path	notice
#open	2022-11-23-11-50-29
#fields	ts	uid	id.orig_h	id.orig_p	id.resp_h	id.resp_p	fuid	file_mime_type	file_desc	proto	note	msg	sub	src	dst	pn	peer_descr	actions	email_dest	suppress_for	remote_location.country_code	remote_location.region	remote_location.city	remote_location.latitude	remote_location.longitude
#types	time	string	addr	port	addr	port	string	string	string	enum	enum	string	string	addr	addr	port	count	string	set[enum]	set[string]	interval	string	string	string	double	double
1669216431.624776	Cgkst131IUdHJOpuu7	127.0.0.1	59213	127.0.0.1	80	-	-	-	tcp	BoaDetector::Vulnerable_Boa_Web_Server	Vulnerable Boa web server header observed: Boa/0.94.14rc21	See https://www.microsoft.com/en-us/security/blog/2022/11/22/vulnerable-sdk-components-lead-to-supply-chain-risks-in-iot-and-ot-environments/ for more info.	127.0.0.1	127.0.0.1	80	-	-	Notice::ACTION_LOG	(empty)	3600.000000	-	-	-	-	-
1669216442.169350	CKqefADq4TH9Slw56	::1	60096	::1	80	-	-	-	tcp	BoaDetector::Vulnerable_Boa_Web_Server	Vulnerable Boa web server header observed: Boa/0.94.14rc21	See https://www.microsoft.com/en-us/security/blog/2022/11/22/vulnerable-sdk-components-lead-to-supply-chain-risks-in-iot-and-ot-environments/ for more info.	::1	::1	80	-	-	Notice::ACTION_LOG	(empty)	3600.000000	-	-	-	-	-
1669216442.565214	CITmNa2Greck5TShAh	::1	60097	::1	80	-	-	-	tcp	BoaDetector::Vulnerable_Boa_Web_Server	Vulnerable Boa web server header observed: Boa/0.94.14rc21	See https://www.microsoft.com/en-us/security/blog/2022/11/22/vulnerable-sdk-components-lead-to-supply-chain-risks-in-iot-and-ot-environments/ for more info.	::1	::1	80	-	-	Notice::ACTION_LOG	(empty)	3600.000000	-	-	-	-	-
#close	2022-11-23-11-50-29
```