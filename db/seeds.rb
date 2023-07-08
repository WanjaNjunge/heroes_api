# db/seeds.rb
Hero.create(name: "Kamala Khan", super_name: "Ms. Marvel")
Hero.create(name: "Doreen Green", super_name: "Squirrel Girl")
Hero.create(name: "Gwen Stacy", super_name: "Spider-Gwen")

Power.create(name: "Super Strength", description: "Gives the wielder super-human strengths")
Power.create(name: "Flight", description: "Gives the wielder the ability to fly through the skies at supersonic speed")

HeroPower.create(hero: Hero.first, power: Power.first, strength: "Strong")
HeroPower.create(hero: Hero.first, power: Power.second, strength: "Average")

