def substrings(word, substringsArr)
    hash = Hash.new()
    substringsArr.each do |substring|
        count = word.downcase.scan(/(?=#{substring})/).count         
        next if count == 0
        hash[substring] = count
    end
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)