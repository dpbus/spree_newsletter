Deface::Override.new(:virtual_path => "spree/shared/_user_form",
                     :name => "user_form",
                     :insert_top => "[data-hook='signup_below_password_fields'], #signup_below_password_fields[data-hook]",
                     :partial => "spree/shared/newsletter_subscribe_field",
                     :disabled => false)

