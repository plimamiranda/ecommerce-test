# language: de

Funktionalität: Registrieren neuen ShopBop Kunden
             Als neue Kunde von ShopBop
              Der Benutzer möchte sich registrieren
              Damit er Produkte kaufen kann
 
        Grundlage:
            Angenommen der Benutzer ist einen Gast-Benutzer
              Und er ist auf der Registrierungseite

        @register
        Szenario: Erfolgreich Registrierung-Weg
             Wenn der Benutzer gültige persönliche Daten eingeben
              Und ein gültiges Passwort wählen
              Und auf Konton erstellen button klicken
             Dann wird die Registrierung erfolgreich
              Und der Benutzer wird zur Startseite weitergeleitet

        @register_negative
        Szenario: Registrierungsdetails mit bereits existierender E-Mail-Adresse
             Wenn der Benutzer gültige persönliche Daten mit existierender E-Mail-Adresse eingeben
              Und auf Konton erstellen button klicken
             Dann wird die Registrierung nicht erfolgreich
              Und "Sie haben angegeben, dass Sie ein neuer Kunde sind, es existiert aber bereits ein Konto mit der E-Mail-Adresse" Nachricht wird angezeigt
              #Und ein Link zum Anmelden mit einer bereits registrierten E-Mail-Adresse wird angezeigt
             

    