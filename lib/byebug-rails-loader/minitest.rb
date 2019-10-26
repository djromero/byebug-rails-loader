

module ByeBugMiniTestPlugin
  def before_setup
    ByebugRailsLoader.rerun_init_script
  end
end

class MiniTest::Test
  include ByeBugMiniTestPlugin
end
