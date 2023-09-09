helpers.disable_address_entry()
helpers.select_items { "👠", "👞", "👗" }

st.tap_button("Buy Now")
st.tap_button("Pay from")
st.wait_for("Apple Pay")
st.save_ref() -- check if apple play is preselected

st.tap_button("Visa ending in 3220")

st.tap_button("Products")
st.tap_button("Buy Now")
st.tap_button("Pay from")
st.save_ref() -- check if 3220 card is still selected

st.tap_button("Apple Pay")
st.tap_button("Products")
st.tap_button("Buy Now")
st.tap_button("Pay from")
st.save_ref() -- check if Apple Pay is still selected

st.tap_button("Visa ending in 3220")

st.tap_button("Products")
st.tap_button("Settings")
st.scroll_up()
st.tap_button("Log out")
st.tap_button("Done")

st.tap_button("Buy Now")
st.tap_button("Pay from")
st.wait_for("Apple Pay")
st.save_ref() -- check if Apple Pay is selected