#Enables the listed display HAL modules

#Libs to be built for all targets (including SDK)
display-hals := libqcomui libtilerenderer

#libs to be built for QCOM targets only
ifeq ($(call is-vendor-board-platform,QCOM),true)
display-hals += badger/liboverlay2
display-hals += libhwcomposer liboverlay libgralloc libgenlock libcopybit
endif

include $(call all-named-subdir-makefiles,$(display-hals))
