def encrypt(password)
  index = 0
	while index < password.length
	  single = password[index]
	  puts single.next
		index += 1
  end
 puts password
end
encrypt('abc')

def decrypt(npassword)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < npassword.length
    nsingle = npassword[index]
    alphanum = alphabet.index(nsingle)
    dcpt = alphanum - 1
    final = alphabet[dcpt]
    puts final
    index += 1
  end
end

decrypt ('dec')