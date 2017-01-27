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

encrypt ('abc')
encrypt ('zed')

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

decrypt ('bcd')
decrypt ('afe')

puts decrypt(encrypt("swordfish"))
