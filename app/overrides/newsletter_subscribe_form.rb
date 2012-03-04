Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
                     :name => "newsletter_subscribe_form",
                     :insert_top => "[data-hook='footer-right'], #footer-right[data-hook]",
                     :partial => "spree/newsletter_subscriptions/newsletter_subscribe_form",
                     :disabled => false)