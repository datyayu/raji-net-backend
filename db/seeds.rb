# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create({ name: 'Iguchi Yuka',   image: '/images/iguchi-yuka.jpg'   })
Artist.create({ name: 'Hanazawa Kana', image: '/images/kanazawa-hana.jpg' })
Artist.create({ name: 'Minase Inori',  image: '/images/minase-inori.jpg'  })

User.create({ name: 'admin',     email: 'admin@admin.admin', password: '123admin' })
User.create({ name: 'test-user', email: 'test@test.test',    password: '123test'  })

Track.create({ name: 'Puengue',
               url: '/audio/song-1.mp3',
               artists: Artist.where(:id => 1).to_a })
Track.create({ name: 'Ren\'ai Circulation',
               url: '/audio/song-2.mp3',
               artists: Artist.where(:id => 2).to_a })
Track.create({ name: 'Starry Light',
               url: '/audio/song-3.mp3',
               artists: Artist.where(:id => 3).to_a })

Release.create({ name: 'Hafa Adai',
                 image: '/images/hafa-adai.jpg',
                 year: 2014,
                 length: 1,
                 plays: 0,
                 single_type: :album,
                 artists: Artist.where(:id => 1).to_a,
                 tracks: Track.where(:id => 1).to_a })
Release.create({ name: 'Monogatari OP 3',
                 image: '/images/mongotari.jpg',
                 year: 2012,
                 length: 1,
                 plays: 0,
                 single_type: :op_single,
                 artists: Artist.where(:id => 2).to_a,
                 tracks: Track.where(:id => 2).to_a })
Release.create({ name: 'Starry Light',
                 image: '/images/starry-light.jpg',
                 year: 2016,
                 length: 3,
                 plays: 0,
                 single_type: :single,
                 artists: Artist.where(:id => 3).to_a,
                 tracks: Track.where(:id => 3).to_a })

Series.create({ name: 'Monogatari series',
                image: '/images/monogotari.jpg',
                releases: Release.where(:id => 2).to_a })

Season.create({ name: 'Fall 2015',
                image: '/images/fall-2015.jpg',
                series: Series.all.to_a })

Playlist.create({ name: 'Sample playlist',
                  image: '/images/sample-playlist.jpg',
                  plays: 100,
                  length: 3,
                  year: 2016,
                  tracks: Track.all.to_a,
                  user: User.where(:id => 1).first })
