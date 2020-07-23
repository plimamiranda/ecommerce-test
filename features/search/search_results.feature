# language: de

Funktionalität: Überprüfen ob die Suchergebnisse den Suchkriterien entsprechen
             Als Benutzer von ShopBop
              Der Benutzer möchte relevante Ergebnisse für seine Suche sehen
              Damit er schnell das gewünscht Produkt finden kann
              
        Grundlage: Go to Startseite
            Angenommen der Benutzer ist auf der Startseite

        @search
        Szenariogrundriss: Exakter Treffer
             Wenn der Benutzer sucht nach einem bestimmnten <produkt>
             Dann wird das <produkt> an der Suchergebnisse angezeigt
            
        Beispiele:
                  |produkt|
                  |Dresses|
                  
        @search_negative
        Szenariogrundriss: Suchen nach einem Produkt, das keine Ergebnisse liefert
             Wenn der Benutzer sucht nach <ungültigem_item>
             Dann wird kein produkt an der Suchergebnisse angezeigt
              Und die Nachricht "SORRY, WE COULDN'T FIND A MATCH FOR" <ungültigem_item> ist angezeigt
            
        Beispiele:
                  |ungültigem_item|
                  |Sapato|


                            
            


             