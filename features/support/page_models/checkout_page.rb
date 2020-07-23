module PageModels
    class CheckoutPage
        include RSpec::Matchers
        include Capybara::DSL 
        
        def click_to_pay
            scroll_to(find("div.order.foreign-currency"), :top)
            find("#checkoutButton").click
        end
    
        def choose_shipping_type
            find("#shippingMethodId-3").click
        end

        def go_to_next
            find("#continue").click
        end

        def address_ausfullen
            within(find(".address-information.section"))do
                select('Kanada', from:'Land/Region')
                find("#addressLine1").set("Address 1")
                find("#city").set("City")
                find("#postalCode").set("123456")
                find("#phoneNumber").set("1-877-746-7267")
            end
        end

        def save_address
            find("#save").click
        end
    end
end
