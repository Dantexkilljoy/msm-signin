# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :string
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  belongs_to :director
  has_many :characters
  has_many :bookmarks, :through => :user

  has_many :cast, :through => :characters, :source => :actor
end
