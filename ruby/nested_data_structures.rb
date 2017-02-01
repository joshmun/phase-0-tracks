eg = {
	axe: [
		'Telecaster',
		'Stratocaster',
	],
	pedals: {
		overdrive: [
			'Rat',
			'Euphoria',
			'TS9',
			'Klon Klone'
		],
		delay: [
			'DD-7',
			'Nova Delay',
			'DD-20',
			'Bellwether'
		]
	},
	power: [
		'One Spot',
		'DC 10 CIOKS'
	]
}

p eg

puts "After accessing nested data structures:"
p eg[:axe][0]
eg[:pedals][:delay].push('Carbon Copy')
p eg[:pedals][:delay]
p eg[:power].reverse
p eg[:pedals][:overdrive][3].swapcase