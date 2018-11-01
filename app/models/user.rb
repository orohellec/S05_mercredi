class User < ApplicationRecord
  def to_session
    {id: id}
  end
end
