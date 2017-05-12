class Object
  def self.const_missing(c)
    return nil if @calling_const_missing
    require Seneca.to_underscore(c.to_s)
    @calling_const_missing = true
    #puts "const missing called c.to_s"
    klass = Object.const_get(c)
    @calling_const_missing = false

    klass
  end
end
