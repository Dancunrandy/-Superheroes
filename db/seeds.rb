puts '🦩 Seeding Heroes...'
heroes = Hero.create([
  { name: 'Kamala Khan', super_name: 'Ms. Marvel' },
  { name: 'Doreen Green', super_name: 'Squirrel Girl' },
  { name: 'Gwen Stacy', super_name: 'Spider-Gwen' }
])

powers = Power.create([
  { name: 'super strength', description: 'gives the wielder super-human strengths' },
  { name: 'flight', description: 'gives the wielder the ability to fly through the skies at supersonic speed' }
])

HeroPower.create([
  { hero: heroes[0], power: powers[0], strength: 'Strong' },
  { hero: heroes[0], power: powers[1], strength: 'Average' },
  { hero: heroes[1], power: powers[1], strength: 'Weak' },
  { hero: heroes[2], power: powers[0], strength: 'Average' }
])
puts '✅ Done seeding!'