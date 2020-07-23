    Angenommen("der Benutzer ist einen Gast-Benutzer") do
        home_page.go_to_homepage
        #assert ob benutzer einen Gast ist
    end
    
    Angenommen("der Benutzer ist bei der Register Seite") do
        register_user.go_to_registerpage
    end
    
    Wenn("der Benutzer gültige persönliche Daten eingeben") do
        register_user.register_new_daten
    end
    
    Wenn("ein gültiges Passwort wählen") do
        register_user.register_new_passwort
    end
    
    Wenn("auf Konton erstellen Klicken") do
        register_user.submit_new_user
    end
    
    Dann("wird die Registrierung erfolgreiche") do
        pending # Write code here that turns the phrase above into concrete actions
    end
    
    Dann("der Benutzer wird zur Startseite weitergeleitet") do
        pending # Write code here that turns the phrase above into concrete actions
    end
    
    Wenn("der Benutzer gültige persönliche Daten mit existierender E-Mail-Adresse eingeben") do
        register_user.register_existierender_email
    end
    
    Dann("wird die Registrierung nicht erfolgreiche") do
        register_user.assert_alert_box
    end 
    
    Dann(/^(.+) Nachricht wird angezeigt$/) do |alert_message|
        register_user.assert_alert_message alert_message
    end
    
    Dann("ein Link zum Anmelden mit einer bereits registrierten E-Mail-Adresse wird angezeigt") do
        register_user.assert_anmelden_link
    end
    
    Wenn("Der Benutzer klicke auf den Link, um sich mit bereits registrierten E-Mails anzumelden") do
        register_user.existiert_email_anmelden
    end
    
    Dann("Die Anmeldeseite wird angezeigt") do
        register_user.check_anmelden_seite
    end