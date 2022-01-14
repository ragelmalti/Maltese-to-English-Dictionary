#!/usr/bin/ruby
# Script taken from dsl-tools github page:
# https://github.com/dohliam/dsl-tools
# This script is licensed under the MIT License
# THE CREATOR OF THIS REPO, RAĠELMALTI, DID NOT CREATE THIS SCRIPT

# convert UTF-8 encoded dsl dictionary files to UTF-16
# and compress with dictzip to dsl.dz format

def rezip_dictfile(dict)
  ext = File.extname(dict)
  basename = File.basename(dict, ext)
  if ext == ".dsl"
    dict_content = File.read(dict)
    File.rename(dict, dict + ".bak")
    File.open(dict, 'wt', encoding: 'UTF-16LE') do |dsl|
      dsl << dict_content
    end
    `dictzip #{dict}`
    puts "  Processed #{basename}"
  end
end

def iterate_dir(dir)
  dir_array = Dir.glob(File.absolute_path(dir) + "/*")

  dir_array.sort.each do |d|
    rezip_dictfile(d)
  end
end

if ARGV[0]
  dict = ARGV[0]
  if File.directory?(dict)
    iterate_dir(dict)
  else
    rezip_dictfile(dict)
  end
else
  puts "  Please specify a source file or directory containing .dsl files."
  exit
end
