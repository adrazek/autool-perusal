require "autool_perusal/engine"

module AutoolPerusal
  mattr_accessor :user_class do 'User' end

  def self.user_class
    @@user_class.constantize
  end

end
