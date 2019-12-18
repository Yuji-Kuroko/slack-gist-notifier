class App
  def self.root
    Pathname(File.expand_path('../../', __FILE__))
  end
end

require 'bundler/setup'
Bundler.require
require 'active_support'
require 'active_support/inflector'
require 'active_support/core_ext'
require 'highline/import'
require 'thor'
require 'pathname'

# initializer
Dir.glob("#{App.root}/config/initializer/*.rb").each do |require_path|
  require require_path
end

# app load
Dir.glob("#{App.root}/app/**/*.rb") do |require_path|
  require require_path
end
