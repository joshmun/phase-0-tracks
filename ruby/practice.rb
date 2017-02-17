# How to Overwrite a hash inside a hash

hash_of_hashes = {"Albert Pujols" => {rbi: 45, hr: 11, b1: 5, b2: 23, b3: 4, ob: 0.434, avg: 0.224},
                  "Edgar Martinez" => {rbi: 24, hr: 7, b1: 3, b2: 55, b3: 5, ob: 0.334, avg: 0.324},
                  "Alex Rodriguez" => {rbi: 43, hr: 20, b1: 23, b2: 12, b3: 9, ob: 0.234, avg: 0.424},
                  "Ichiro Suzuki" => {rbi: 14, hr: 33, b1: 35, b2: 33, b3: 3, ob: 0.134, avg: 0.524},
                  "Manny Ramirez" => {rbi: 77, hr: 63, b1: 18, b2: 23, b3: 27, ob: 0.234, avg: 0.724},
}

# puts hash_of_hashes["Albert Pujols"][:rbi]
# puts hash_of_hashes["Albert Pujols"][:rbi] = 50
# puts hash_of_hashes["Albert Pujols"][:rbi]

# puts hash_of_hashes["Albert Pujols"].map
puts hash_of_hashes["Albert Pujols"].each {
	|key, value| 
	hash_of_hashes["Albert Pujols"][key] = value * 2}
puts hash_of_hashes["Albert Pujols"]