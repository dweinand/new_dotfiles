require "rake"

SKIP_FILES= %w(Rakefile README.md)
SUB_DIRS=%w(config)

desc "install dotfiles into home directory"
task :install do
	Dir['*'].each do |file|
    puts "checking #{file}"
		next if skip?(file) || !subdir?(file) && (dir?(file) || exists?(file))
    if subdir?(file)
      `mkdir -p ~/.#{file}`
      Dir["#{file}/*"].each do |f|
        puts "checking #{f}"
        next if exists?(f)
        puts "linking ~/.#{f}"
        File.symlink File.join(Dir.pwd, f), dotpath(f)
      end
    else
      puts "linking ~/.#{file}"
      File.symlink File.join(Dir.pwd, file), dotpath(file)
    end
	end
end

def skip?(file); SKIP_FILES.include?(file); end
def dir?(file); File.directory?(file); end
def exists?(file); File.exist?(dotpath(file)); end
def subdir?(file); SUB_DIRS.include?(file); end
def dotpath(file)
	File.join(ENV['HOME'], ".#{file}")
end
