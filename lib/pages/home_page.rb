#require_relative '../../lib/pages/checkout_page_methods'
#require_relative '../../lib/pages/home_page_methods'

class HomePage

  include PageObject
  include HomePageMethods

  page_url FigNewton.baseurl

  divs(:name, class: 'name')
  buttons(:view_detail, value: 'View Details')

end