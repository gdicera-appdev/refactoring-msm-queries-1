# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  def movie
    my_id = self.id
    matching_results = Movie.where({ :actor_id => my_id})
    return matching_results
  end

  def characters
    my_id = self.id
    matching_results = Character.where({ :char_id => my_id})
    return matching_results
  end

end
