require "uri"
class Url < ApplicationRecord
  validates :original_url, presence: true, on: :create
  validates_format_of :original_url, with: /\A(?:(?:http|https):\/\/)?([-a-zA-z0-9.]{2,256}\.[a-z]{2,4})\b(?:\/[-a-zA-z0-9@,!:%_\+.~#?&\/\/=]*)?\z/
  before_create :generate_short_url

  def generate_short_url
    self.short_url = "http://dia.co/#{SecureRandom.hex(3)}"
  end

  def actual_url(short_url)
  	url = Url.find_by(short_url: short_url)
    url.present? ? url.original_url : errors.add(:short_url, "No original url present for the short url '#{short_url}'.")
  end
end
