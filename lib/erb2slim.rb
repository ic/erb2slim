require 'haml'
require 'html2haml/html'
require 'haml2slim'

module Erb2Slim
  def self.convert(input)
    haml = Html2haml::HTML.new(input, :erb => true, :xhtml => false).render
    slim = Haml2Slim.convert!(haml).to_s
    slim
  end
end
