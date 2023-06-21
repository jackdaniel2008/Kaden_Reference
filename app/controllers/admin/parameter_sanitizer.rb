class Admin::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:shop_name,:administrator, :postal, :prefecture_id, :address, :building, :nearest_station, :genre_id])
  end
end