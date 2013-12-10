
class ConfirmationPage
  include PageObject

  button(:complete_the_adoption, :value => 'Complete the Adoption')
  button(:adopt_another_puppy, :value => 'Adopt Another Puppy')

end