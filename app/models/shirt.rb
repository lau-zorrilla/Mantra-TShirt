class Shirt < ActiveRecord::Base
    has_attached_file :image, styles: { medium: '200x300>', thumb: '100x150>' }, :default_url => "black_sm.png"
end
