# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

UF = Team.where(name: 'Up&Fly Ultimate').first
UF.delete if UF

up_and_fly = Team.create([name: 'Up&Fly Ultimate', city: 'Gyor', est_year:"1-1-2015".to_date, championships_won:0])

OUT = Team.where(name: 'Obudai Ultimate Team').first
OUT.delete if OUT

Obudai_Ultimate_Team = Team.create([name: 'Obudai Ultimate Team', city: 'Budapest', est_year:"1-1-2014".to_date, championships_won:4])

RS = Team.where(name: 'Riverside RKSE').first
RS.delete if RS

riverside_rkse = Team.create([name: 'Riverside RKSE', city: 'Budapest', est_year:"1-1-2019".to_date, championships_won:0])

BPHSE = Team.where(name: 'Budapest Heroes SE').first
BPHSE.delete if BPHSE

heroes = Team.create([name: 'Budapest Heroes SE', city: 'Budapest', est_year:"1-1-2015".to_date, championships_won:0])

RAAB = Team.where(name: 'Raab Adventure SE').first
RAAB.delete if RAAB

raab = Team.create([name: 'Raab Adventure SE', city: 'Gyor', est_year:"1-1-2018".to_date, championships_won:0])

MUFA = Team.where(name: 'MUFA SE').first
MUFA.delete if MUFA

mufa = Team.create([name: 'MUFA SE', city: 'Budapest', est_year:"1-1-2015".to_date, championships_won:0])

PSE = Team.where(name: 'Pecsi Ultimate SE').first
PSE.delete if PSE

pse = Team.create([name: 'Pecsi Ultimate SE', city: 'Pecs', est_year:"1-1-2019".to_date, championships_won:0])
