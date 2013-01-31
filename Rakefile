require "rake"

SKIP_FILES= %w(Rakefile README.md)

desc "install dotfiles into home directory"
task :install do
	Dir['*'].each do |file|
		next if  skip?(file) || dir?(file) || exists?(file)
		puts "linking ~/.#{file}"
		File.symlink(File.join(Dir.pwd, file), dotpath(file))
	end
end

def skip?(file); SKIP_FILES.include?(file); end
def dir?(file); File.directory?(file); end
def exists?(file); File.exist?(dotpath(file)); end
def dotpath(file)
	File.join(ENV['HOME'], ".#{file}")
end
