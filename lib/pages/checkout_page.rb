require_relative 'error_panel'
#require_relative '../../lib/pages/checkout_page_methods'

  class CheckoutPage

    include PageObject
    include DataMagic
    include ErrorPanel
    include CheckoutPageMethods

    text_field(:name, id: 'order_name')
    text_field(:address, id: 'order_address')
    text_field(:email, id: 'order_email')
    select_list(:pay_type, id: 'order_pay_type')
    button(:place_order, value: 'Place Order')


  end