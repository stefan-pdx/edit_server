require 'sinatra/base'
require 'tempfile'
require 'pandoc-ruby'

module EditServer
  class Base < Sinatra::Base
    post("/edit") do
      file = Tempfile.new "chrome"

      body = request.body.read
      body_markdown = PandocRuby.convert(body, :from => :html, :to => :markdown_github)
      file.write body_markdown
      file.close

      `gvim -f #{file.path}`

      file.open
      contents = file.read
      contents_html = PandocRuby.convert(contents, :from => :markdown_github, :to => :html)
      file.close

      contents_html
    end
  end
end
