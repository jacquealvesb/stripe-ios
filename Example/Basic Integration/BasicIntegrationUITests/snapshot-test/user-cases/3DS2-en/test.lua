helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }
helpers.select_payment_method("Visa ending in 3220")

st.tap_button("Buy")
st.wait_for("Complete Authentication")
st.save_ref()
st.tap_button("Learn more about authentication")
st.tap_button("Need help?")
st.save_ref()
st.tap_button("Continue")
st.wait_for("Buy")
st.tap_button("OK")