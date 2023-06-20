clone:
	git clone https://github.com/NorbertBaran/ardigen-github-search.git
	git clone https://github.com/NorbertBaran/hex-ocean-dishes.git
	git clone https://github.com/NorbertBaran/speaker.git
test:
	$(MAKE) -C ../ardigen-github-search test
	$(MAKE) -C ../hex-ocean-dishes test
	$(MAKE) -C ../speaker test
	docker compose up -d --build
prod:
	$(MAKE) -C ../ardigen-github-search prod
	$(MAKE) -C ../hex-ocean-dishes prod
	$(MAKE) -C ../speaker prod
	docker compose up -d --build
clean:
	$(MAKE) -C ../ardigen-github-search clean
	$(MAKE) -C ../hex-ocean-dishes clean
	$(MAKE) -C ../speaker clean
	docker compose down --rmi all
