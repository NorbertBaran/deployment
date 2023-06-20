clone-all:
	git clone https://github.com/NorbertBaran/ardigen-github-search.git ../ardigen-github-search
	git clone https://github.com/NorbertBaran/hex-ocean-dishes.git ../hex-ocean-dishes
	git clone https://github.com/NorbertBaran/speaker.git ../speaker
test-all:
	$(MAKE) -C ../ardigen-github-search test
	$(MAKE) -C ../hex-ocean-dishes test
	$(MAKE) -C ../speaker test
	docker compose up -d --build
prod-all:
	$(MAKE) -C ../ardigen-github-search prod
	$(MAKE) -C ../hex-ocean-dishes prod
	$(MAKE) -C ../speaker prod
	docker compose up -d --build
clean-all:
	$(MAKE) -C ../ardigen-github-search clean
	$(MAKE) -C ../hex-ocean-dishes clean
	$(MAKE) -C ../speaker clean
	docker compose down --rmi all
test:
	docker compose up -d --build
prod:
	docker compose up -d --build
clean:
	docker compose down --rmi all