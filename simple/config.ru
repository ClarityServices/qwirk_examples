require '../setup'
require './bar_worker'
require './baz_worker'
require './publisher'

# If we're not starting up a standalone publisher, then start up a manager
if ENV['RACK_ENV'] != 'publisher'
  manager = Qwirk[$adapter_key].create_manager(:name => 'Worker', :persist_file => 'qwirk_persist.yml')
  jruby_setup_graceful_stop(manager)
end
if ENV['RACK_ENV'] != 'worker'
  ::Rumx::Bean.root.bean_add_child(:Publisher, Publisher.new($adapter_key))
end
run ::Rumx::Server
