ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]
           

       # getting all the people
def get_people(array)
    new_array = []
array.each do |ballot|
new_array += ballot.values
end
 return new_array.uniq
end    

def point_value(place)
case place
when  1
    return 3
    when 2
         return 2
     when  3
     return 1
        end
end

# creating the hash
def hash_for_people(array)
    hash = {}
    array.each do |person|
    hash[person] = 0
    end
    return hash
    end

    #adding the points together
    def give_points (list) 
        total = hash_for_people(get_people(list))
     list.each do |ballot|
    ballot.keys.each do |key|
     total[ballot[key]] += point_value(key)
    end
     end
    return total
    end

    

    puts give_points(ballots)
