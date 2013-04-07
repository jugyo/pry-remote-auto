require "pry-remote"

# Example:
#
#     require 'pry-remote-auto'
#     
#     class Foo
#       def initialize(x, y)
#         binding.remote_pry
#       end
#     end
#     
#     Foo.new 10, 20
#
class Object
  def remote_pry_with_auto_launch(*args)
    Thread.start do
      cmd = if defined?(Rails)
        rc = "cd #{Rails.root};"
        rc += "bundle exec " if File.exist?(Rails.root.join('Gemfile'))
        rc
      end

      cmd ||= ""
      cmd += "pry-remote"

      sleep 1
      system 'osascript', '-e', 'tell application "Terminal" to do script "' + cmd + '"'
      system 'osascript', '-e', 'tell application "Terminal" to activate'
    end
    remote_pry_without_auto_launch(*args)
  end
  alias_method :remote_pry_without_auto_launch, :remote_pry
  alias_method :remote_pry, :remote_pry_with_auto_launch
  alias_method :pry_remote, :remote_pry
end
