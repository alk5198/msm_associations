class Director < ActiveRecord::Base

  has_many :movies, :class_name => "Movie", :foreign_key => "director_id"
 #  - name: must be present; must be unique in combination with dob
 validates :name, :presence => true, :uniqueness => { :scope => :dob}

 # stopped 20:24 on video.. ;)

 # - dob: no rules
 # - bio: no rules
 # - image_url: no rules
end
