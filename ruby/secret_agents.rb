#Method Declarations

#Encrypting Method
def encrypt(password)
  index = 0
  answer = ""
	while index < password.length
	  single = password[index]
	  answer += single.next
		index = index + 1
  end
  puts answer
end

=begin encrypt ('abc')
encrypt ('zed') 
=end

#Decrypting Method
def decrypt(npassword)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  together = ""
  while index < npassword.length
    nsingle = npassword[index]
    alphanum = alphabet.index(nsingle)
    dcpt = alphanum - 1
    final = alphabet[dcpt]
    together += final
    index += 1
  end
  puts together
end

=begin decrypt ('bcd')
decrypt ('afe')
=end

# Our Driver Code

#Ask user if they would like to encrypt or decrypt 
#their password
puts "Would you like to encrypt or decrypt your password?"
user = gets.chomp

#Ask user what is your password?
puts "Please enter your password:"
user_password = gets.chomp

#Then call the method
if user == "encrypt" or user =="Encrypt"
	then puts encrypt(user_password)
else puts decrypt(user_password)
end