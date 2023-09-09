helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }
helpers.select_payment_method("Add New Card…")

st.enter_text { text = "4000000000000069", field = "card number" }
st.save_ref()
st.enter_text { text = "02/28", field = "expiration date" }
st.save_ref()
st.enter_text { text = "223", field = "CVC" }
st.enter_text { text = "90210", field = "Postal code" }
st.tap_button("Done")

st.wait_for("Your card has expired.")
st.save_ref()
st.tap_button("OK")

st.delete_text { letter_count = 4, field = "card number" }
st.enter_text { text = "0341", field = "card number" }
st.tap_button("Done")

st.wait_for("Buy")
st.tap_button("Buy")
st.wait_for("Error")
st.tap_button("OK")