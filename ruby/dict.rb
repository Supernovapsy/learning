module Dict
  def Dict.new(num_buckets=256)
    aDict = []
    (0..num_buckets).each do |i|
      aDict.push([])
    end
    return aDict
  end

  def Dict.hash_key(aDict, key)
    return key.hash % aDict.length
  end

  def Dict.get_bucket(aDict, key)
    return aDict[Dict.hash_key(aDict, key)]
  end

  def Dict.get_slot(aDict, key, default=nil)
    bucket = Dict.get_bucket(aDict, key)
    bucket.each_with_index do |kv, i|
    k, v = kv
      if key == k
        return i, k, v
      end
    end
    return -1, key, default
  end

  def Dict.get(aDict, key, default=nil)
    i, k, v = Dict.get_slot(aDict, key, default)
    return v
  end

  def Dict.set(aDict, key, value)
    bucket = Dict.get_bucket(aDict, key)
    i, k, v = Dict.get_slot(aDict, key)
    if i == -1
      bucket.push([key, value])
    else
      bucket[i][1] = value
    end
  end

  def Dict.delete(aDict, key)
    bucket = Dict.get_bucket(aDict, key)
    bucket.each_with_index do |kv, i|
      if kv[0] == key
        bucket.delete_at(i)
      end
    end
  end

  def Dict.list(aDict)
    aDict.each do |bucket|
      bucket.each {|k, v| puts "#{k}, #{v}"}
    end
  end
end
