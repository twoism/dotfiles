require 'fileutils'
include FileUtils

DOT_FILES = %w{irbrc zshrc dotfiles/bashrc dotfiles/vimrc dotfile/gvimrc dotfiles/autotest}

DOT_FILES.each do |f|
  file_name = "#{ENV['HOME']}/.#{f.split('/').last}"
  if File.exists? file_name
    puts "#{file_name} exits."
  end
end

#`git clone git@github.com:posterous/dotfiles.git ~/bin`
#`gem install map_by_method what_methods net-http-spy awesome_print looksee wirble sketches interactive_editor`

