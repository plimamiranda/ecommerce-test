# language: de

Funktionalität: Address Formular Validation
             Um Benutzer daran zu hindern, ungültige Addressendaten einzugeben
             Als Product Owner von ShopBop
              Ich möchte die moglichkeit haben, die Addresse Formular zu validieren
             
              
        Grundlage:
            Angenommen der Benutzer hat keine Versandadresse hinzugefügt
              Und er ist angemeldet
              Und auf der Addressformularseite

        @addressform
        Szenariogrundriss:
             Wenn der Benutzer gibt gültige Adressendaten ein
              Und er reicht die Speichern button ein
             Dann <validation_error> Nachrichten ist angezeigt
              Und seine Addresse ist gespeichert

        Beispiele:
                  |address_field |  validation_error|
                  |address_field |  Ups! Es sieht so aus, als hätten Sie ein paar Dinge vergessen |
                  |address_field |  Geben Sie einen gültigen Vornamen an.|
