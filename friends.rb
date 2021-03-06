def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    end
  end
  return false
end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end

def remove_friend(person, lost_friend)
  person[:friends].delete(lost_friend)
end

def total_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def loan_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end


def joined_favourite_food(people)
  foods = []
  for person in people
    foods += person[:favourites][:snacks]
  end
return foods

end

def has_no_friends(people)
  no_friends =[]
  for person in people
    if person[:friends].length() == 0
      no_friends.push(person[:name])
    end
  end
  return no_friends
end
