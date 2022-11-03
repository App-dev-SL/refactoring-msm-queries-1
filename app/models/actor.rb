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

  def characters

    d_id=self.characters_id

   the_characters= Characters.where({:id => d_id}).at(0)

    return the_characters
  end

end
