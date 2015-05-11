desc 'Obvious first choice'
task :default do
  puts "Hello world!"
end

desc 'Sound of infinite wisdom'
task :ring_bell do
  puts "I hear a bell ringing!"
end

desc 'depends on :get_centered'
task :know_thyself => :get_centered do
  puts "Totally self-aware, dude."
end

desc 'get centered before knowing thyself'
task :get_centered do
  puts 'Getting centered . . .'
  sleep(1)
  puts 'Centered!'
end

namespace :main do
  desc 'Description goes here'
  task :make_junk do
    `mkdir -p 'junk_directory'`
    p 'Junk directory "junkdir" created!'
    sleep(1)  
  end

  desc 'remove junk'
  task :cleanup => :make_junk do
    p 'Deleting "junkdir" . . . '
    sleep(1)
    `rm -rf junkdir`
    p 'Deleted!'
  end
end

namespace :setup do
  desc "A test task to check whether a directory exists"
  task :check do
    puts "Enter the name of the destination directory: "
    @dir = STDIN.gets.strip
    if  File.directory?("../#{@dir}") 
      puts "The directory already exists."
      setup_copy
    else
      puts "Creating requested directory . . ."
      mkdir "../#{@dir}"
      setup_copy
    end
  end
 
  desc "A test task to copy things around"
  task :copy => :check do 
    puts "Copying files..."
    `"cp -r '.', '../#{@dir}'"`
    puts "Done"
  end
end


def setup_copy
  Rake::Task["setup:copy"].invoke #A task invocation
end
