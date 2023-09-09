helpers = {}

helpers.disable_address_entry = function()
    biu.tap_button("Settings")
    biu.scroll_up()
    biu.tap_button("#2|None")
    biu.tap_button("Done")
end

helpers.select_items = function(items)
    for i, item in ipairs(items) do
        biu.tap_button(item)
    end
end

helpers.select_payment_method = function(method)
    biu.tap_button("Buy Now")
    biu.tap_button("Pay from")
    biu.wait_for(method)
    biu.tap_button(method)
end