.POSIX:
DESTDIR=public
HUGO_VERSION=0.73.0
THEME=future
TARGET := $(shell uname)
ifeq ($(TARGET), Darwin)
 $(info $(TARGET))
 ARCH=macOS
else
 $(info  $(TARGET))
 ARCH=Linux
endif

.PHONY: all
all: serve remote clean get build test deploy


.PHONY: clean
clean:
	@echo "🧹 Cleaning old build"
	@if [ -d $(DESTDIR) ]; then cd $(DESTDIR) && rm -rf *; fi

.PHONY: get
get:
	@echo "❓ Checking for hugo"
	@if ! [ -x "$$(command -v hugo)" ]; then\
		echo "🤵 Getting Hugo";\
		cd ./bin && ./setup.sh $(HUGO_VERSION) $(ARCH);\
		hugo version;\
	fi
	@echo "✔ hugo"

.PHONY: build
build:
	@echo "🍳 Generating site"
	hugo --theme ${THEME} 

.PHONY: serve
serve:
	@echo "🍳 Serving site"
	hugo server --baseURL http://localhost --theme ${THEME} --bind 0.0.0.0 --port 8000

.PHONY: remote
remote: 
	@echo "🍳 Serving site"
	hugo server --baseURL http://10.0.1.100 --theme ${THEME} --bind 0.0.0.0 --port 8000

.PHONY: test
test:
	@echo "🍜 Testing HTML"
	docker run -v $(GITHUB_WORKSPACE)/$(DESTDIR)/:/mnt 18fgsa/html-proofer mnt --disable-external

.PHONY: deploy
deploy:
	@echo "🎁 Preparing commit"
	@cd $(DESTDIR) \
	&& git config user.email "hello@victoria.dev" \
	&& git config user.name "Victoria via GitHub Actions" \
	&& git add . \
	&& git status \
	&& git commit -m "🤖 CD bot is helping" \
	&& git push -f -q https://$(TOKEN)@github.com/victoriadrake/victoriadrake.github.io.git master
	@echo "🚀 Site is deployed!"
