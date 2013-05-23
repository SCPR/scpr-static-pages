require 'rubygems'
require 'bundler'
Bundler.setup
require 'middleman/rack'
require 'middleman-core/preview_server'

module Middleman::PreviewServer
  def self.preview_in_rack
    @options = {}
    @app = new_app
    start_file_watcher
  end
end

Middleman::PreviewServer.preview_in_rack

run Middleman::PreviewServer.app

require File.expand_path("../rack_try_static", __FILE__)
 
use ::Rack::TryStatic,
  :root => "build",
  :urls => ["/"],
  :try  => [".html", "index.html", "/index.html"]
 
run lambda { [404, {"Content-Type" => "text/plain"}, ["File not found!"]] }