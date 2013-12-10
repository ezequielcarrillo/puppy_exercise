module HomePageMethods

  def select_puppy(name = 'Brook')
    view_detail_elements[index_for(name)].click
  end

  private

  def index_for(name)
    name_elements.find_index { |div| div.text == name }
  end

end