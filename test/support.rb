class User < ActiveRecord::Base
  acts_as_approvable :on => :create, :state_field => :state
end

class Project < ActiveRecord::Base
  acts_as_approvable :on => :update, :ignore => :title
end

class Game < ActiveRecord::Base
  acts_as_approvable :on => :update, :only => :title
end

class Employee < ActiveRecord::Base
  acts_as_approvable
end