$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo ----- Making recovery image ------
	rm -f $(PRODUCT_OUT)/recovery/root/init
	cp device/cat/b15q/init $(PRODUCT_OUT)/recovery/root/init
	cp device/cat/b15q/repack-MT65xx.pl $(PRODUCT_OUT)/repack-MT65xx.pl
	cp device/cat/b15q/mkbootimg $(PRODUCT_OUT)/mkbootimg
	chmod 644 $(PRODUCT_OUT)/recovery/root/default.prop
	cd $(PRODUCT_OUT) && perl repack-MT65xx.pl -recovery kernel recovery/root $@
	@echo ----- Made recovery image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)


$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	perl device/cat/b15q/repack-MT65xx.pl -boot $(recovery_kernel) $(PRODUCT_OUT)/root $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
