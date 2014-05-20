require 'listen'

namespace :assets do
  def compile(type)
    Rake::Task["#{type}:compile"].execute
  end

  task :compile do
    compile('sass')
  end

  task watch: :compile do
    Listen.to('assets/sass'){ compile('sass') }.start
    puts 'Listening for changes...'
    sleep
  end
end
