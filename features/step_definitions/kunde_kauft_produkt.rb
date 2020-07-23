Angenommen("der Benutzer ist schon angemeldet") do
    home_page.go_to_homepage
    home_page.perform_login
end

Angenommen("er ist auf der Warenkorbseite") do
    produkt_page.go_to_catalog_page
end

Angenommen ("hat Produkte in seinem Warenkorb")
    produkt_page.select_produkt_from_catalog
    produkt_page.select_color
    produkt_page.select_size
    produkt_page.add_to_bag
    produkt_page.click_on_checkout_btn
end

Wenn("der Benutzer auf den Kassebutton um zu zahlen klickt") do
    checkout_page.click_to_pay
end

Wenn("wählt eine Versandart aus") do
    checkout_page.choose_shipping_type
    checkout_page.go_to_next
end

Wenn("bezahlt mit seiner erfassten Kreditkarte") do
    #kreditkart ok
    checkout_page.go_to_next
    
end

Wenn("er füllt einen Addressversand aus") do
    checkout_page.address_ausfullen
    checkout_page.save_address
end

Dann("ist sein Einkauf erfolgreichh") do
    #assert completed
    puts ""
end