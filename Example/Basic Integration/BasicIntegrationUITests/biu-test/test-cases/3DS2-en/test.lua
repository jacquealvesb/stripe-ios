helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }
helpers.select_payment_method("Visa ending in 3220")

biu.tap_button("Buy")
biu.wait_for("Complete Authentication")
biu.save_ref()
biu.tap_button("Learn more about authentication")
biu.tap_button("Need help?")
biu.save_ref()
biu.tap_button("Continue")
biu.wait_for("Buy")
biu.tap_button("OK")