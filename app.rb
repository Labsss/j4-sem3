require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'app/application'
require 'app/player'
require 'pry'

Application.new

binding.pry