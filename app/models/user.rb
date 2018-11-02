class User < ApplicationRecord
  has_many :gossips
  def to_session
    {id: id}
  end
end
