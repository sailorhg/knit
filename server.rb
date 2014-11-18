require 'sinatra'
require 'haml'
require 'knitting_pattern'
require 'pattern_disk_drive'

get '/upload' do
  haml :upload
end

post '/upload' do
  filename = 'uploads/' + params['myfile'][:filename]
  File.write(filename, params['myfile'][:tempfile].read)

  result = KnittingPattern.from_image!(filename, 1.5, 60)
  puts result
  PatternDiskDrive.serve!

  return "turn on machine, press CE 551, STEP, 1, STEP to load pattern!\n" \
    "Pattern will be available as pattern 901."
end
