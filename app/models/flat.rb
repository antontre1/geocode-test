class Flat < ApplicationRecord
  # ceci permet j'ajouter des methods sur le model
  geocoded_by :address
  # ceci permet de faire appel à la methode geocode pour retrive les valeurs de l'adresse, et :will_save_change_to_address évite de faire des appels à l'api si l'addresse est connue. si l'adrresse change l'appel à l'api est fait (en fait c'est issu de activerecord)
  after_validation :geocode, if: :will_save_change_to_address?
end
