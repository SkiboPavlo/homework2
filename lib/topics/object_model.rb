# frozen_string_literal: true

# exercise object model
module LinuxFriendly
  def fork_process
    super
  end

  def mine_bitcoins
    inspect
  end
end

# include module
class Dell
  include LinuxFriendly

  def fork_process
    p 'Parent: allocate memory'
  end
end

# inheritance from Laptop
class Laptop < Dell
  prepend LinuxFriendly
end

# inheritance from Laptop
class ObjectModel < Laptop
  include LinuxFriendly
end
