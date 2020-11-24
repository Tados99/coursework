# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

UF = Team.where(name: 'Up&Fly Ultimate').first
UF.delete if UF

up_and_fly = Team.create([id: 1, name: 'Up&Fly Ultimate', city: 'Gyor', est_year:"1-1-2015".to_date, championships_won:0])

OUT = Team.where(name: 'Obudai Ultimate Team').first
OUT.delete if OUT

Obudai_Ultimate_Team = Team.create([id: 2, name: 'Obudai Ultimate Team', city: 'Budapest', est_year:"1-1-2014".to_date, championships_won:4])

RS = Team.where(name: 'Riverside RKSE').first
RS.delete if RS

riverside_rkse = Team.create([id: 3, name: 'Riverside RKSE', city: 'Budapest', est_year:"1-1-2019".to_date, championships_won:0])

BPHSE = Team.where(name: 'Budapest Heroes SE').first
BPHSE.delete if BPHSE

heroes = Team.create([id: 4, name: 'Budapest Heroes SE', city: 'Budapest', est_year:"1-1-2015".to_date, championships_won:0])

RAAB = Team.where(name: 'Raab Adventure SE').first
RAAB.delete if RAAB

raab = Team.create([id: 5, name: 'Raab Adventure SE', city: 'Gyor', est_year:"1-1-2018".to_date, championships_won:0])

MUFA = Team.where(name: 'MUFA SE').first
MUFA.delete if MUFA

mufa = Team.create([id: 6, name: 'MUFA SE', city: 'Budapest', est_year:"1-1-2015".to_date, championships_won:0])

PSE = Team.where(name: 'Pecsi Ultimate SE').first
PSE.delete if PSE

pse = Team.create([id: 7, name: 'Pecsi Ultimate SE', city: 'Pecs', est_year:"1-1-2019".to_date, championships_won:0])

UFRAAB = Fixture.where(home_team_id: 1).first
UFRAAB.delete if UFRAAB

upfvsraab = Fixture.create([home_team_id: 1, away_team_id: 2, home_score: 12, away_score: 14])

AC = Player.where(surname: 'Csanaki').first
AC.delete if AC

abel_csanaki = Player.create([team_id: 1, surname: 'Csanaki', forename: 'Abel', dob: '1999-05-02', games_played: 3, scores: 6, assists: 5])
