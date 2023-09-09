helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }
helpers.select_payment_method("Apple Pay")

st.tap_button("Buy")
st.wait_seconds("1")
st.save_ref()