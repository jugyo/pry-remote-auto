# pry-remote-auto

Open the Terminal and run pry-remote automatically.

## Installation

Add this line to your application's Gemfile:

    gem 'pry-remote-auto'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pry-remote-auto

## Example

    require 'pry-remote-auto'

    class Foo
      def initialize(x, y)
        binding.remote_pry
      end
    end

    Foo.new 10, 20
