class Array
  def sum(start = 0)
    inject(start, &:+)
  end
  def frequences
    inject(Hash.new(0)) do |h,v|
      h[v]+=1
      h
    end
  end


  def max
    max_by do |x|
      frequences[x]
    end
  end

end
