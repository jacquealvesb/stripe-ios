helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }
helpers.select_payment_method("Visa ending in 4242")

st.save_ref()
st.tap_button("Buy")
st.wait_for("Success")
st.tap_button("OK")