module CheckoutPageMethods

  def checkout(data = {})
    populate_page_with data_for(:checkout_page, data)
    place_order
  end

  def payment_options
    pay_type_element.options.collect { |opt| opt.text }
  end

end