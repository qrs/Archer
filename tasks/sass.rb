require 'sass'

namespace :sass do
  src = 'dev/assets/sass/style.scss'
  out = 'public/css/style.css'

  desc 'Precompiles sass'
  task :compile do
    puts 'Compiling sass'
    `sass --update #{src}:#{out}`
  end

  desc 'Removes compiled css'
  task :clean do
    `rm -rf #{out}`
  end
end
