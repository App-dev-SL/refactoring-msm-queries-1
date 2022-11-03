# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmography

    d_id=self.filmography_id

   the_filmography= Filmography.where({:id => d_id}).at(0)

    return the_filmography
  end

end
