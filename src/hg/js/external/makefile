include ../../../inc/common.mk
include ../install.mk

JS_FILES= BackboneExtend.js \
	es5-sham.4.0.3.min.js es5-shim.4.0.3.min.js \
	immutable.3.2.1.min.js \
	lodash.3.3.1.compat.min.js

# Don't bother jshint'ing external libs.
jshint:

doInstall:
	@mkdir -p ${DEST}/
	rsync -a ${JS_FILES} ${DEST}/
