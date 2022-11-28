module BoaDetector;

export {
	redef enum Notice::Type += { Vulnerable_Boa_Web_Server };
}

event http_header(c: connection, is_orig: bool, original_name: string, name: string, value: string)
	{
	if (is_orig)
		return;
	if (name != "SERVER")
		return;
	if (/^Boa\/.*/i == value)
		NOTICE([$note=BoaDetector::Vulnerable_Boa_Web_Server,
				$msg=fmt("Vulnerable Boa web server header observed: %s", value),
				$sub="See https://www.microsoft.com/en-us/security/blog/2022/11/22/vulnerable-sdk-components-lead-to-supply-chain-risks-in-iot-and-ot-environments/ for more info.",
				$conn=c,
				$identifier=cat(c$id$resp_h)]);
	}
