# == Schema Information
#
# Table name: venues
#
#  id           :integer          not null, primary key
#  address      :string
#  name         :string
#  neighborhood :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Venue < ApplicationRecord
  validates(:name, {
    :presence => true,
    :uniqueness => { :case_sensitive => false },
  })

  def comments
    my_id = self.id
    comments = Comment.where({ :venue_id => my_id })
    return comments
  end
end
