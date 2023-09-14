helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }

biu.tap_button("Buy Now")
biu.tap_button("Pay from")
biu.wait_for("Apple Pay")
biu.compare_ref() -- check if apple play is preselected

biu.tap_button("Visa ending in 3220")

biu.tap_button("Products")
biu.tap_button("Buy Now")
biu.tap_button("Pay from")
biu.compare_ref() -- check if 3220 card is still selected

biu.tap_button("Apple Pay")
biu.tap_button("Products")
biu.tap_button("Buy Now")
biu.tap_button("Pay from")
biu.compare_ref() -- check if Apple Pay is still selected

biu.tap_button("Visa ending in 3220")

biu.tap_button("Products")
biu.tap_button("Settings")
biu.scroll_up()
biu.tap_button("Log out")
biu.tap_button("Done")

biu.tap_button("Buy Now")
biu.tap_button("Pay from")
biu.wait_for("Apple Pay")
biu.compare_ref() -- check if Apple Pay is selected