# frozen_string_literal: true

require_relative "rulers/version"
require "rulers/array"

module Rulers
  class Error < StandardError; end

  class Application
    def call(env)
      `echo debug > debug.txt`
      [200, { 'Content-Type' => 'text/html' },
       ["Hello from Ruby Rulers!"]]
    end
  end

end
