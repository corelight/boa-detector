# @TEST-DOC: Example of a test that runs Zeek on a pcap and verifies log content
# @TEST-EXEC: zeek -Cr $TRACES/boa.pcap $PACKAGE %INPUT >output
# @TEST-EXEC: btest-diff notice.log
