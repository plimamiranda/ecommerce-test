module PageModels
    class RegisterPage
        include RSpec::Matchers
        include Capybara::DSL 

        def go_to_registerpage
            find(".login-top-link").click
            find("#createAccountSubmit").click
        end

        def register_new_daten
            fill_in 'ap_customer_name', with: 'User Name'
            fill_in 'ap_email', with: 'usermail@usermail.com'
        end

        def register_new_passwort
            fill_in 'ap_password', with: '123456'
            fill_in 'ap_password_check', with: '123456'
        end

        def submit_new_user
            find('.a-button-inner').click
        end
        
        def register_existierender_email
            fill_in 'ap_customer_name', with: 'User Name'
            fill_in 'ap_email', with: 'usermail@usermail.com'
            fill_in 'ap_password', with: '789456'
            fill_in 'ap_password_check', with: '789456'
        end
        def assert_alert_box
            expect(page).to have_selector :css, '.a-alert-heading'
        end

        def assert_alert_message(alert_message)
            #checar variavel
            expect(page).to have_content("Sie haben angegeben, dass Sie ein neuer Kunde sind, es existiert aber bereits ein Konto mit der E-Mail-Adresse")
        end
        
        def assert_anmelden_link
            expect(page).to have_selector :link, 'Anmelden'
            expect(page).to have_content("Sie haben bereits ein Konto?")
        end

        def existiert_email_anmelden
            find(".a-link-emphasis").click
        end

        def check_anmelden_seite
            expect(page).to have_selector :css, '#signInSubmit'
            expect(page).to have_content("Angemeldet bleiben")
        end
     end
end