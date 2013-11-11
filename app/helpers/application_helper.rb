module ApplicationHelper

  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"

    if page_title.empty?
      base_title
    else
      "#{base_title} #{page_title}"
    end
  end

  def array_test()

    s = 'a'
    array = 'foo bar   baz maz das raz'.split
    array_numbers = [1,2,3,4,5,6,7]
    array.length
   return array if s.empty?
    array[-3]
    array.sort
    array.sort.reverse
    "original #{array} Sort #{array.sort} reverse #{array.reverse} shuffle #{array.shuffle} bang #{!array} original #{array}
    original #{array_numbers} Sort #{array_numbers.sort} reverse #{array_numbers.reverse} shuffle #{array_numbers.shuffle} bang #{!array_numbers} original #{array_numbers}"

    a1 = [1,3,2,7,9,8,11,4]
    a2 = a1.sort!
    a1[2]=5
    "a1= #{a1} a2= #{a2}"

    ar =[]
    (1..6).each { |n|
        ar.push( 2*n )
    }

    "#{ar}"

    #('a'..'z').to_a.shuffle[0 .. 7].join

  end

  def hash_test
    user ={'ha'=>'Wendy'}
    user['first'] = "Jarek"
    user['second'] = "Michal"
    user['third'] = "Kasia"

    "#{user}"

    second_user = { name: "mike", email: "mike@hartl.com"}
    "#{second_user}"

  end

  def classes_test
   s = String.new("foobar")
   s.class.superclass.superclass

    w = Word.new
   "Is palindrome #{w.palindrome?('1level1')}"

    w1 = Word1.new("level")
    w1.palindrome?

   "mauam".palindrome?

    user = User.new({name: "Jarek", email: "jsuchanek@company.com"})

    user.formated_email

   user1 = User.new(Hash.new("Not specified"))

   user1.formated_email

    #user.name + " " + user.email

    #user.name = "Mike"
    #user.email = "mike@company.com"

    #user.formated_email


  end
end

class Word
  def palindrome?( string )
    string == string.reverse
  end
end

class Word1 < String
  def palindrome?
    self == self.reverse
  end
end

class String
  def palindrome?
    self == self.reverse
  end
end

class User

  attr_accessor :name, :email

  def initialize( attributes = {} )
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formated_email
    "Name: #@name, email: #@email"

  end
end