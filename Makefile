# Following https://rfcs.emberjs.com/id/0507-embroider-v2-package-format/
# We need to:
#  - build our assets (babel)
#  - have built assets in dist
#  - update the package.json
#    - ember-addon.app-js ("app re-exports")
#    - create the re-export files in an _app-re-exports_ folder
#
# Requirements
#  - make
#  - jq
#  - volta
#  - procmail

appReexports := components/demo.js components/wrapper.js
outDir := dist
srcDir := src

SHELL := /opt/homebrew/bin/bash 
export VOLTA_FEATURE_PNPM := 1
export VOLTA_HOME := "$(HOME)/.volta"
export PATH := "$(VOLTA_HOME)/bin:$(PATH)"

install:
	@eval $$(volta install node)
	@eval $$(volta install pnpm)
	@eval $$(pnpm install)

compile: install
	@eval $$(pnpm babel $$srcDir --out-dir $$outDir)

manifest: compile
  packageName := $$(cat package.json | jq '.name')
	@eval $$(mkdir -p $$outDir/_app-re-exports_)
	@eval $$(mkdir -p $$outDir/_app-re-exports_/components)
	@eval $$(mkdir -p $$outDir/_app-re-exports_/services)
	@eval $$(mkdir -p $$outDir/_app-re-exports_/helpers)
	
	for component in appReexports; do \
		distFile := "$$outDir/$$component" \
		reExportFile := "_app-re-exports_/$$component" \
		$$( echo "export { default } from '$$packageName/$$component';" > $$reExportFile ) \
		eval $$(  ) \
  done


