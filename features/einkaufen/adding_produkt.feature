# language: de

Funktionalität: Benutzer füge Produkte zur/zum Wunschliste/Warenkorb hinzu
             Als Kunde von ShopBop
              Der Benutzer sollte die Möglichkeit haben, zur/zum seinen Wunschliste/Warenkorb Produkte hinzufügen
              So er kann es später kaufen
            
        Grundlage:
            Angenommen der Benutzer ist schon registriert
              Und er kauft Produkte als einen angemeldet Benutzer

        #@adding check heart container
        Szenario: Produkt zur Wunschliste hinzufügen auf Heart Container Image
             Wenn der Benutzer wählt einen bestimmnten Produkt aus
              Und er klickt auf dem Herz Container Image
             Dann sollte diesen Produkt in der Wunschliste hinzugefügt werden
        
        #@adding
        Szenario: Produkt zur Wunschliste hinzufügen auf Wunschliste Button
             Wenn der Benutzer wählt einen bestimmnten Produkt aus
              Und er klickt auf der Wunschliste Button
             Dann sollte diesen Produkt in der Wunschliste hinzugefügt werden

        @adding
        Szenario: Produkt zum Warenkorb hinzufügen
             Wenn der Benutzer wählt einen bestimmnten Produkt aus
              Und er wählt die Farbe
              Und die Größe aus
              Und er klickt auf den Add to Bag Button
             Dann ein Modales Fenster "Added to bag!" ist angezeigt
              Und das Produkt wird zum Warenkorb erfolgreich hinzugefügt
