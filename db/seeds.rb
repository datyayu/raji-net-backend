# Users
User.create({ name: 'admin',     email: 'admin@admin.admin', password: '123admin' })
User.create({ name: 'test-user', email: 'test@test.test',    password: '123test'  })


######################################
####      MONOGATARI SERIES      #####
######################################

# Monogatari single 1
Artist.create({ name: 'Chiwa Saito', image: 'https://s3-us-west-1.amazonaws.com/raji-demo/artists/chiwa_saito.jpg' })

Track.create({ name: 'Staple Stable',                
               url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_1/02+-+staple+stable+-instrumental-.lite.mp3', 
               artists: Artist.where(:id => 1).to_a })
Track.create({ name: 'Staple Stable (Instrumental)', 
               url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_1/02+-+staple+stable+-instrumental-.lite.mp3', 
               artists: Artist.where(:id => 1).to_a })

Release.create({ name: 'Staple Stable',
                 image: 'https://s3-us-west-1.amazonaws.com/raji-demo/releases/bakemonogatari_OP_1.jpg',
                 year: 2009,
                 length: 2,
                 plays: 0,
                 single_type: :op_single,
                 artists: Artist.where(:id => 1).to_a,
                 tracks: [
                     Track.find(1),
                     Track.find(2),
                 ]})


# Monogatari single 2
Artist.create({ name: 'Emiri Katou', image: 'https://s3-us-west-1.amazonaws.com/raji-demo/artists/katou_emiri.jpg' })

Track.create({ name: 'Kaerimichi',                url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_2/01+-+Kaerimichi.lite.mp3', artists: Artist.where(:id => 2).to_a })
Track.create({ name: 'Kaerimichi (Instrumental)', url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_2/02+-+Kaerimichi+-instrumental-.lite.mp3', artists: Artist.where(:id => 2).to_a })

Release.create({ name: 'Kaerimichi',
                 image: 'https://s3-us-west-1.amazonaws.com/raji-demo/releases/bakemonogatari_OP_2.jpg',
                 year: 2009,
                 length: 2,
                 plays: 0,
                 single_type: :op_single,
                 artists: Artist.where(:id => 2).to_a,
                 tracks: [
                     Track.find(3),
                     Track.find(4),
                 ]})


# Monogatari single 3
Artist.create({ name: 'Miyuki Sawashiro', image: 'https://s3-us-west-1.amazonaws.com/raji-demo/artists/sawashiro_miyuki.jpg' })

Track.create({ name: 'Ambivalent World',                url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_3/01+-+ambivalent+world.lite.mp3', artists: Artist.where(:id => 3).to_a })
Track.create({ name: 'Ambivalent World (Instrumental)', url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_3/02+-+ambivalent+world+-instrumental-.lite.mp3', artists: Artist.where(:id => 3).to_a })

Release.create({ name: 'Ambivalent World',
                 image: 'https://s3-us-west-1.amazonaws.com/raji-demo/releases/bakemonogatari_OP_3.jpg',
                 year: 2009,
                 length: 3,
                 plays: 0,
                 single_type: :op_single,
                 artists: Artist.where(:id => 3).to_a,
                 tracks: [
                     Track.find(5),
                     Track.find(6),
                 ]})


Series.create({ name: 'Monogatari series',
                image: 'https://s3-us-west-1.amazonaws.com/raji-demo/series/monogatari-series.webp',
                releases: [
                    Release.find(1),
                    Release.find(2),
                    Release.find(3),
                ]})


######################################
####      KYOUSOU GIGA (TV)      #####
######################################

Artist.create({ name: 'Tamurapan', image: 'https://s3-us-west-1.amazonaws.com/raji-demo/artists/tamurapan.jpg' })

Track.create({ name: 'Koko',     url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/kyousogiga_op/01.lite.mp3', artists: Artist.where(:id => 4).to_a })
Track.create({ name: 'Jibun Wo', url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/kyousogiga_op/02.lite.mp3', artists: Artist.where(:id => 4).to_a })

Release.create({ name: 'Koko',
                 image: 'https://s3-us-west-1.amazonaws.com/raji-demo/releases/kyousogiga_op.jpg',
                 year: 2013,
                 length: 2,
                 plays: 0,
                 single_type: :op_single,
                 artists: Artist.where(:id => 4).to_a,
                 tracks: [
                     Track.find(7),
                     Track.find(8),
                 ]})

Series.create({ name: 'Kyousou Giga',
                image: 'https://s3-us-west-1.amazonaws.com/raji-demo/series/kyousougiga.webp',
                releases: Release.where(:id => 4).to_a })
