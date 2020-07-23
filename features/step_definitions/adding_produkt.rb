  Angenommen("der Benutzer ist schon registriert") do
    #assert registriert
    home_page.go_to_homepage
  end
  
  Angenommen("er kauft Produkte als einen angemeldet Benutzer") do
    home_page.perform_login
    produkt_page.go_to_catalog_page
  end
  
  Wenn("der Benutzer wählt einen bestimmnten Produkt aus") do
    produkt_page.select_produkt_from_catalog
  end
  
  Wenn("er wählt die Farbe") do
    produkt_page.select_color
  end
  
  Wenn("die Größe aus") do
   produkt_page.select_size
  end
  
  Wenn("er klickt auf den Add to Bag Button") do
    produkt_page.add_to_bag
  end
  
  Dann(/^ein Modales Fenster (.+) ist angezeigt$/) do |message|
    produkt_page.assert_added_to_bag_modal
  end
  
  Dann("das Produkt wird zum Warenkorb erfolgreich hinzugefügt") do
    product_summary_brand = ""
    product_summary_brand = produkt_page.get_produkt_details
    produkt_page.assert_produkt_in_warenkorb product_summary_brand
  end