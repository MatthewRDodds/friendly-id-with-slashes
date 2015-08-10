class Comment < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name

  # Use default slug, but upper case and with underscores
  def normalize_friendly_id(string)
    binding.pry
    super.upcase.gsub("-", "_")
  end
end
