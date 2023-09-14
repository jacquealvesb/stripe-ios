helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }
helpers.select_payment_method("Add New Card…")

biu.enter_text { text = "4000000000000069", field = "card number" }
biu.compare_ref()
biu.enter_text { text = "02/28", field = "expiration date" }
biu.compare_ref()
biu.enter_text { text = "223", field = "CVC" }
biu.enter_text { text = "90210", field = "Postal code" }
biu.tap_button("Done")

biu.wait_for("Your card has expired.")
biu.compare_ref()
biu.tap_button("OK")

biu.delete_text { letter_count = 4, field = "card number" }
biu.enter_text { text = "0341", field = "card number" }
biu.tap_button("Done")

biu.wait_for("Buy")
biu.tap_button("Buy")
biu.wait_for("Error")
biu.tap_button("OK")