all:
	echo nope:

distclean dist-clean:
	./eotk shutdown
	rm -rf projects.d onionbalance.d configure*.log *~ */*~ */*/*~

test-ob-tor:
	@echo this should print: onion
	curl -x socks5h://127.0.0.1:9050/ https://www.facebookcorewwwi.onion/si/proxy ; echo ""
