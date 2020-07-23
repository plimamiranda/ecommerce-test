module PageModels
    class HomePage
        include RSpec::Matchers
        include Capybara::DSL 

        def go_to_homepage
            visit '/'
        end

        def go_to_login_page
            find(".login-top-link").click
        end

        def daten_eingeben
            fill_in 'ap_email', with: "usermail@usermail.com"
            fill_in 'ap_password', with: "123456"
        end

        def perform_login
            find(".login-top-link").click
            fill_in 'ap_email', with: "usermail@usermail.com"
            fill_in 'ap_password', with: "123456"
            find("#signInSubmit").click
        end

        def assert_anmeldung
            expect(page).to have_selector :css, '.displayname'
        end
        
        def search_for_produkt(produkt)
            find("#search-input").set(produkt).send_keys(:enter)
        end

        def assert_search_header(produkt)
            expect(find('#pageHeading')).to have_content produkt.upcase
        end

    end
end