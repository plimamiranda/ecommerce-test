# language: de

Funktionalität: Kunde kauft Produkte
             Als registrierter Kunde von ShopBop
              Der Benutzer sollte die Möglichkeit haben, sich anzumelden und Produkte zu kaufen
              
        Grundlage:
            Angenommen der Benutzer ist schon angemeldet
              Und er ist auf der Warenkorbseite
              Und hat Produkte in seinem Warenkorb

        #@einkaufen
        Szenario: kunde mit erfassten Addresse und Kreditkarte Details kauft Produkte ein
             Wenn der Benutzer auf den Kassebutton um zu zahlen klickt
              Und wählt eine Versandart aus
              Und bezahlt mit seiner erfassten Kreditkarte
             Dann ist sein Einkauf erfolgreich

        @einkaufen
        Szenario: kunde ohne erfassten Addresse kauft Produkt ein
             Wenn der Benutzer auf den Kassebutton um zu zahlen klickt
              Und er füllt das Formular Addressversand aus
              Und wählt eine Versandart aus
              Und bezahlt mit seiner erfassten Kreditkarte
             Dann ist sein Einkauf erfolgreich

             

             