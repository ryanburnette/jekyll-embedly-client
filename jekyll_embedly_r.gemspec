Gem::Specification.new do |s|
  s.name        = "jekyll_embedly_r"
  s.version     = "0.2.0"
  s.date        = "2014-12-20"
  s.summary     = "An embed.ly Liquid tag for Jekyll."
  s.authors     = ["Robert Böhnke", "Ryan Burnette"]
  s.email       = "ryan.burnette@gmail.com"
  s.files       = ["lib/jekyll_embedly_r.rb"]
  s.homepage    = "https://github.com/ryanburnette/jekyll_embedly_r"
  s.license     = "Apache2"

  s.add_dependency "addressable", "2.3.6"
  s.add_dependency "compose_url", "0.1.3"
  s.add_dependency "domainatrix", "0.0.11"
  s.add_dependency "json",        "1.8.1"
end