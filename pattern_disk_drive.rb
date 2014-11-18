require 'Open3'

module PatternDiskDrive
  def self.serve!
    stdin, stdout, stderr = Open3.popen3("python knit/PDDemulate.py . /dev/cu.usbserial-FTX20UXH")
  end
end
