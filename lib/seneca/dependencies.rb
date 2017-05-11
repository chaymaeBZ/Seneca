class Object
  def self.const_missing(c)
    require Seneca.to_underscore(c.to_s)
    puts "const missing called c.to_s"
    Object.const_get(c)
  end
end
