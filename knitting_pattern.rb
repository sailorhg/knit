module KnittingPattern
  def self.from_image!(filename, stretch, max_width)
    `python img2track.py #{filename} . #{stretch} #{max_width}`
  end
end