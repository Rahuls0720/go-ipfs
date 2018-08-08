include mk/header.mk

CLEAN += $(d)/gotest.out $(d)/gotest.junit.xml

$(d)/gotest.junit.xml: clean test/bin/go-junit-report coverage/unit_tests.coverprofile
	cat $(@D)/gotest.out | go-junit-report > $(@D)/gotest.junit.xml

include mk/footer.mk
