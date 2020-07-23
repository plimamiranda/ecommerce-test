# language: de

Funktionalität: Kunde im ShopBop anmelden
             Als registrierter Nutzer von ShopBop
              Der Nutzer möchte sich anmelden
              
        Grundlage: Zur Anmeldungseite navigieren
            Angenommen der Benutzer ist nicht angemeldet
              Und er ist auf der Anmeldungseite

        @anmelden
        Szenario: Benutzer Anmeldung - erfolgreicher Weg
             Wenn der Benutzer gibt gültige Anmeldungsdaten ein
              Und er klickt auf Anmeldebutton
             Dann er ist erfolgreich angemeldet
              Und wird zur Startseite weitergeleitet