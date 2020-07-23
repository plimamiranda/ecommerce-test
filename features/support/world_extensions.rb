module KnowsMyWorld

    def home_page
        @home_page || PageModels::HomePage.new
    end

    def register_user
        @register_user || PageModels::RegisterPage.new
    end

    def produkt_page
        @produkt_page || PageModels::ProduktPage.new
    end

    def checkout_page
        @checkout_page || PageModels::CheckoutPage.new
    end

end


World(KnowsMyWorld)