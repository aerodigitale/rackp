class RackP
  VERSION='0.1.2'
  def initialize
    @stack=[]
  end
  def use middleware
    @stack.unshift middleware
  end
  def run middleware, env = ENV.to_h
    @stack.inject(middleware) { |m, o| o.new(m) }.call(env)
  end
end
