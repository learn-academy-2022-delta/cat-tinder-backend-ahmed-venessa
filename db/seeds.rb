
cats = [
  {
      name: "Happy",
      age: 5,
      enjoys: "smiling all day long",
      image: "https://files.slack.com/files-pri/T04B40L2C-F03SESP4PS7/happy_cat.jpeg"
  },
  {
      name: "seuss",
      age: 35,
      enjoys: "doing magic tricks",
      image: "https://files.slack.com/files-pri/T04B40L2C-F03SDMWLWHZ/image.png"
  },
  {
      name: "crime mob",
      age: 5,
      enjoys: "slapping you in the face",
      image: "https://i.ytimg.com/vi/SQudKvrwDAU/maxresdefault.jpg"
  },
  {
      name: "White Head",
      age: 15,
      enjoys: "Dinning for free",
      image: "https://files.slack.com/files-pri/T04B40L2C-F03SSDGS2CR/image.png"
  },
  {
      name: "The Ginger Hit Man",
      age: 15,
      enjoys: "going on adventures",
      image: "https://files.slack.com/files-pri/T04B40L2C-F03S77JD3PG/image.png"
  },
  {
    name: "Berry",
    age: 21,
    enjoys: "burglary",
    image: "https://files.slack.com/files-pri/T04B40L2C-F03T3GBSLSC/image.png"
},
{
  name: "Grinch",
  age: 45,
  enjoys: "Christmas",
  image: "https://files.slack.com/files-pri/T04B40L2C-F03SDNMVA5R/image.png"
},
{
  name: "Tom",
  age: 10,
  enjoys: "Flipping your house upside down but wont kill any rats",
  image: "https://files.slack.com/files-pri/T04B40L2C-F03T3HH949W/image.png"
},
]

# cats.each do |each_cat|
#   Cat.create each_cat
#   puts "creating cat #{each_cat}"
# end


cats.each do |attributes|
  Cat.create(attributes)
  p "creating cat #{attributes}"
end
