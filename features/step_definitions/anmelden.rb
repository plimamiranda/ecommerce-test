  Angenommen("der Benutzer nicht angemeldet ist") do
    #elete_access_token_cookie
    home_page.go_to_homepage
  end
  
  Angenommen("er ist auf der Anmelden Seite") do
    home_page.go_to_login_page
  end
  
  Wenn("der Benutzer gültige Anmeldung Daten eingeben") do
    home_page.daten_eingeben
  end
  
  Wenn("auf Anmelden button Klicken") do
    home_page.perform_login
  end
  
  Dann("er ist erfolgreiche angemeldet und wird zur Startseite weitergeleitet") do
    home_page.assert_anmeldung
  end
  