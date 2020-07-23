module PageModels
    class ProduktPage
        include RSpec::Matchers
        include Capybara::DSL 


        def go_to_catalog_page
            within("#newTopNavStickyContainer") do 
                find_all('ul li')[3].click 
            end
        end

        def select_produkt_from_catalog
            within(".product-list") do 
                find_all('ul li')[0].click
            end
        end
        
        def check_produkt_list
            expect(page).to have_no_selector :css, 'content'
        end
        
        def check_search_result_message(message, ungültigem_item)
            message = "SORRY, WE COULDN'T FIND A MATCH FOR" #check extra char in captured msg
            expect(find('#content')).to have_content(message)
            expect(find('#content')).to have_text(ungültigem_item)
        end
        
        def  select_produkt_from_container 
            within("#section11-container") do 
                find_all('ul li')[2].click 
            end
        end
        
        def send_to_wunschlist_herz
            puts""
        end
        
        def send_to_wunschliste_button
            find_all(".sizeBox")[0].click
            find("#wishlist-btn").click
        end

        def check_produkt_in_wunschliste
            puts ""
            find("#hearts-link").click
        end

        def select_color
            within("#colors") do 
                find_all("ul div")[0].click 
            end
        end

        def select_size
            within("#sizeList") do 
                find_all(".sizeBox")[0].click 
            end
        end

        def add_to_bag
            scroll_to(find("#pdp-product-overview"), :down)
            find("#add-to-cart-btn").click
        end

        def assert_added_to_bag_modal
            Capybara.default_max_wait_time = 7
            expect(page).to have_content('ADDED TO BAG!')
        end

        def click_on_checkout_btn
            find("#checkout").click
        end

        def assert_warenkorb_page
            expect(page).to have_content('MY CART')
            #CHECAR URL
        end

        def assert_produkt_in_warenkorb(product_summary_brand)
            #click_on_checkout_btn
            find("#checkout").click
            expect(page).to have_content(product_summary_brand)
        end

        #scenario_context adding Produkt
        def get_produkt_details
            product_summary_brand = ""
            within(find("#product-summary-details-container"))do
                product_summary_brand = find("#product-summary-brand").text
                # check id produkt
            end
            product_summary_brand
        end

    end
    end
