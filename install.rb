p "Copying files..."

unless File.exists?("#{RAILS_ROOT}/public/stylesheets/weakling.css")
  FileUtils.cp File.join(File.dirname(__FILE__), "public/stylesheets/weakling.css"), "#{RAILS_ROOT}/public/stylesheets/" unless File.exists?("#{RAILS_ROOT}/public/stylesheets/weakling.css")
  p "."
end  

unless File.exists?("#{RAILS_ROOT}/public/javascripts/weakling.js")
  FileUtils.cp File.join(File.dirname(__FILE__), "public/javascripts/weakling.js"), "#{RAILS_ROOT}/public/javascripts/" 
  p "."
end  

if File.exists?("#{RAILS_ROOT}/public/stylesheets/sass")
  unless File.exists?("#{RAILS_ROOT}/public/stylesheets/sass/weakling.sass")
    FileUtils.cp File.join(File.dirname(__FILE__), "public/stylesheets/weakling.sass"), "#{RAILS_ROOT}/public/stylesheets/sass/"
    p "."
  end
end

if File.exists?("#{RAILS_ROOT}/vendor/sprockets")
  unless File.exists?("#{RAILS_ROOT}/vendor/sprockets/weakling/src/weakling.js")
    FileUtils.cp File.join(File.dirname(__FILE__), "public/javascripts/weakling.js"), "#{RAILS_ROOT}/vendor/sprockets/weakling/src/"
    p "."
  end
end

p "done!"