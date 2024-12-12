# Makefile for deploying the Flutter web projects to GitHub

BASE_HREF = /$(OUTPUT)/
GITHUB_USER = limonadev
GITHUB_REPO = https://github.com/$(GITHUB_USER)/$(OUTPUT)
BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')
WIDGETBOOK_DIR = widgetbook

deploy:
ifndef OUTPUT
  $(error OUTPUT is not set. Usage: make deploy OUTPUT=<output_repo_name>)
endif

	@echo "Switching to deployment branch"
	git checkout -B web-deploy

	@echo "Clean existing repository"
	cd $(WIDGETBOOK_DIR) && flutter clean

	@echo "Getting packages..."
	cd $(WIDGETBOOK_DIR) && flutter pub get
	
	@echo "Generate widgetbook"
	cd $(WIDGETBOOK_DIR) && dart run build_runner build -d

	@echo "Building for web..."
	cd $(WIDGETBOOK_DIR) && flutter build web --base-href $(BASE_HREF) --release

	@echo "Moving web build to my_build"
	rm -rf my_build
	mkdir my_build
	mv $(WIDGETBOOK_DIR)/build/web/* ./my_build
	rm -rf $(WIDGETBOOK_DIR)/build

	@echo "Removing all files except my_build and .git"
	find . -mindepth 1 \
	-not -path "./my_build/*" -not -path "./my_build" \
	-not -path "./.git/*" -not -path "./.git" -exec rm -rf {} +

	@echo "Moving my_build to root"
	mv my_build/* .
	rm -rf my_build

	@echo "Deploying to git repository"
	git add .
	git commit -m "Deploy Version $(BUILD_VERSION)" && \
	git push -u -f origin web-deploy

	@echo "✅ Finished deploy: $(GITHUB_REPO)"
	@echo "🚀 Flutter web URL: https://$(GITHUB_USER).github.io/$(OUTPUT)/"

	git checkout main

	@echo "Getting packages..."
	flutter pub get
	cd $(WIDGETBOOK_DIR) && flutter pub get
	
	@echo "Generate widgetbook"
	flutter pub get
	cd $(WIDGETBOOK_DIR) && dart run build_runner build -d

.PHONY: deploy
