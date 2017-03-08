class ShortUrl < ApplicationRecord
  before_create :assign_key

  private

  def assign_key
    self.key = SecureRandom.urlsafe_base64(4)
  end
end
