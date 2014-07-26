# This is an example of what not to do - the instance variable @observer_list 
# from this class clashes with the instance variable of the same name in the
# Observable mixin module. Don't include state in your mixins!

require_relative 'observer_impl'

class TelescopeScheduler
  include Observable

  def initialize
    @observer_list = []
  end
  def add_viewer(viewer)
    @observer_list << viewer
  end
end

