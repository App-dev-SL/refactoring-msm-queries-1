# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord

  def movie

    d_id=self.movie_id

   the_movie= Movie.where({:id => d_id}).at(0)

    return the_movie
  end

end
