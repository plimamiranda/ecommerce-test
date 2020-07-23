  Angenommen("der Benutzer ist auf der Startseite") do
    home_page.go_to_homepage
  end
  
  Wenn(/^der Benutzer sucht nach einem bestimmnten (.+)$/) do |produkt|
    home_page.search_for_produkt produkt
  end
  
  Dann(/^sollten (.+) an der Suchergebnisse angezeigt werden$/) do |produkt|
    home_page.assert_search_header produkt
  end
  
  Wenn(/^der Benutzer sucht nach (.+)$/) do |ungültigem_item|
    home_page.search_for_produkt ungültigem_item
  end
  
  Dann("wird keine produkt an der Suchergebnisse angezeigt") do
    produkt_page.check_produkt_list
  end
  
  Dann(/^(.+) (.+) Nachricht angezeigt$/) do |message, ungültigem_item|
   produkt_page.check_search_result_message message, ungültigem_item
  end