class ContentWrapper

  def open(path)
    unless has_key?(path)
      raise ContentException
    end
    get(path)
  end

  def has_key?(path)
    unless path.match(/[\w\d_\/]+/)
      return false
    File.exists?(path)
  end

  def self.get(path)
    File.read("content/#{path}")
  end

  def self.put
  end
end
