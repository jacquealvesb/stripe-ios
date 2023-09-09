helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }
helpers.select_payment_method("Visa ending in 4242")

biu.save_ref()
biu.tap_button("Buy")
biu.wait_for("Success")
biu.tap_button("OK")