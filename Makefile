clone-all:
	git clone https://github.com/NorbertBaran/ardigen-github-search.git ../ardigen-github-search
	git clone https://github.com/NorbertBaran/hex-ocean-dishes.git ../hex-ocean-dishes
	git clone https://github.com/NorbertBaran/speaker.git ../speaker
	git clone https://github.com/NorbertBaran/speaker.git ../portfolio
test-all:
	$(MAKE) -C ../ardigen-github-search test
	$(MAKE) -C ../hex-ocean-dishes test
	$(MAKE) -C ../speaker test
	$(MAKE) -C ../portfolio test
	docker compose up -d --build
prod-all:
	$(MAKE) -C ../ardigen-github-search prod
	$(MAKE) -C ../hex-ocean-dishes prod
	$(MAKE) -C ../speaker prod
	$(MAKE) -C ../portfolio prod
	docker compose up -d --build
clean-all:
	$(MAKE) -C ../ardigen-github-search clean
	$(MAKE) -C ../hex-ocean-dishes clean
	$(MAKE) -C ../speaker clean
	$(MAKE) -C ../portfolio clean
	docker compose down --rmi all
test:
	docker compose up -d --build
prod:
	docker compose up -d --build
clean:
	docker compose down --rmi all