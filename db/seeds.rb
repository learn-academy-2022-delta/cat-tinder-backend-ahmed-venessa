cats = [
  {
    id: 1,
    name: 'Happy',
    age: 5,
    enjoys: 'laughing',
    bio: "I have fun... and it's awful",

    image: 'https://f8n-ipfs-production.imgix.net/QmfWtxAM2qwKrEXVoeasArDBrR12qL7HCuD2B4Tqe5R8Bs/nft.jpg?q=80&auto=format%2Ccompress&cs=srgb&max-w=1680&max-h=1680'
  },
  {
    id: 2,
    name: 'Seuss',
    age: 35,
    enjoys: 'Hats and doing magic tricks',
    bio: 'I love green eggs and ham',

    image: 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/10/25/16/the-cat-in-the-hat-2.jpg?quality=75&width=990&auto=webp&crop=982:726,smart'
  },
  {
    id: 3,
    name: 'Crime Mob',
    age: 5,
    enjoys: 'Knucking and Bucking',
    bio: "Yeah we knuckin' and buckin' and ready to fight",

    image: 'https://media1.tenor.com/images/c1aab5daf8cd1ac8bfe6033e3aab86bf/tenor.gif?itemid=26407754'
  },
  {
    id: 4,
    name: 'White Head',
    age: 15,
    enjoys: 'Dinning for free',
    bio: 'I dine for free because I dine and dash',
    image: 'https://c.tenor.com/q-ZdrnERUF4AAAAM/stimulus-check.gif'
  },
  {
    id: 5,
    name: 'The Ginger Hit Man',
    age: 15,
    enjoys: 'Choosing violence',
    bio: 'Creo que soy Tom Cruise, Tom Cruise, Tom Cruise, Tom Cruise',
    image: 'https://www.thewrap.com/wp-content/uploads/2016/04/puss-in-boots-.jpg'
  },
  {
    id: 6,
    name: 'Berry',
    age: 21,
    enjoys: 'Burglary and bad movies',
    bio: 'Cat got your tongue?',
    image: 'https://townsquare.media/site/252/files/2021/10/attachment-untitled_design3.jpg?w=980&q=75'
  },
  {
    id: 7,
    name: 'Grinch',
    age: 45,
    enjoys: 'Christmas',
    bio: 'All I want for Christmas is Christmas',
    image: 'https://images.saymedia-content.com/.image/c_limit%2Ccs_srgb%2Cq_auto:eco%2Cw_768/MTc0NDgzMjczNDk2NDA1NjM4/ron-howards-how-the-grinch-stole-christmas-is-the-best-grinch-film.webp'
  },
  {
    id: 8,
    name: 'Tom',
    age: 10,
    enjoys: 'Pesticides, rat traps, bait and pest control',
    bio: 'Ask Jerry',
    image: 'https://cdn.hanna-barberawiki.com/thumb/8/85/Tom_Cat.png/600px-Tom_Cat.png'
  }
]

# cats.each do |each_cat|
#   Cat.create each_cat
#   puts "creating cat #{each_cat}"
# end

cats.each do |attributes|
  Cat.create(attributes)
  p "creating cat #{attributes}"
end
