helpers = {}

helpers.disable_address_entry = function()
    st.tap_button("Settings")
    st.scroll_up()
    st.tap_button("#2|None")
    st.tap_button("Done")
end

helpers.select_items = function(items)
    for i, item in ipairs(items) do
        st.tap_button(item)
    end
end

helpers.select_payment_method = function(method)
    st.tap_button("Buy Now")
    st.tap_button("Pay from")
    st.wait_for(method)
    st.tap_button(method)
end