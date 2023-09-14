helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }
helpers.select_payment_method("Apple Pay")

biu.tap_button("Buy")
biu.wait_seconds("1")
biu.compare_ref()