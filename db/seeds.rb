# Users
User.create({ name: 'admin',     email: 'admin@admin.admin', password: '123admin' })
User.create({ name: 'test-user', email: 'test@test.test',    password: '123test'  })


######################################
####      MONOGATARI SERIES      #####
######################################

# Monogatari single 1
chiwa_saito = Artist.create({ name: 'Chiwa Saito', image: 'https://s3-us-west-1.amazonaws.com/raji-demo/artists/chiwa_saito.jpg' })

t1_1 = Track.create({ name: 'Staple Stable',
                      url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_1/01+-+staple+stable.lite.mp3',
                      artists: [chiwa_saito] })
t1_2 = Track.create({ name: 'Staple Stable (Instrumental)',
                      url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_1/02+-+staple+stable+-instrumental-.lite.mp3',
                      artists: [chiwa_saito] })

op1 = Release.create({ name: 'Staple Stable',
                       image: 'https://s3-us-west-1.amazonaws.com/raji-demo/releases/bakemonogatari_OP_1.jpg',
                       year: 2009,
                       length: 2,
                       plays: 0,
                       single_type: :op_single,
                       artists: [chiwa_saito],
                       tracks: [
                            t1_1,
                            t1_2
                       ]})


# Monogatari single 2
emiri_katou = Artist.create({ name: 'Emiri Katou', image: 'https://s3-us-west-1.amazonaws.com/raji-demo/artists/katou_emiri.jpg' })

t2_1 = Track.create({ name: 'Kaerimichi',
                      url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_2/01+-+Kaerimichi.lite.mp3',
                      artists: [emiri_katou] })
t2_2 = Track.create({ name: 'Kaerimichi (Instrumental)',
                      url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_2/02+-+Kaerimichi+-instrumental-.lite.mp3',
                      artists: [emiri_katou] })

op2 = Release.create({ name: 'Kaerimichi',
                 image: 'https://s3-us-west-1.amazonaws.com/raji-demo/releases/bakemonogatari_OP_2.jpg',
                 year: 2009,
                 length: 2,
                 plays: 0,
                 single_type: :op_single,
                 artists: [emiri_katou],
                 tracks: [
                     t2_1,
                     t2_2
                 ]})


# Monogatari single 3
miyuki = Artist.create({ name: 'Miyuki Sawashiro', image: 'https://s3-us-west-1.amazonaws.com/raji-demo/artists/sawashiro_miyuki.jpg' })

t3_1 = Track.create({ name: 'Ambivalent World',
               url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_3/01+-+ambivalent+world.lite.mp3',
               artists: [miyuki] })
t3_2 = Track.create({ name: 'Ambivalent World (Instrumental)',
               url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/monogatari_3/02+-+ambivalent+world+-instrumental-.lite.mp3',
               artists: [miyuki] })

op3 = Release.create({ name: 'Ambivalent World',
                 image: 'https://s3-us-west-1.amazonaws.com/raji-demo/releases/bakemonogatari_OP_3.jpg',
                 year: 2009,
                 length: 3,
                 plays: 0,
                 single_type: :op_single,
                 artists: [miyuki],
                 tracks: [
                     t3_1,
                     t3_2
                 ]})


Series.create({ name: 'Monogatari series',
                image: 'https://s3-us-west-1.amazonaws.com/raji-demo/series/monogatari-series.webp',
                releases: [
                    op1,
                    op2,
                    op3
                ]})


######################################
####      KYOUSOU GIGA (TV)      #####
######################################

tamurapan = Artist.create({ name: 'Tamurapan', image: 'https://s3-us-west-1.amazonaws.com/raji-demo/artists/tamurapan.jpg' })

t4_1 = Track.create({ name: 'Koko',
                      url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/kyousogiga_op/01.lite.mp3',
                      artists: [tamurapan] })
t4_2 = Track.create({ name: 'Jibun Wo',
                      url: 'https://s3-us-west-1.amazonaws.com/raji-demo/audio/kyousogiga_op/02.lite.mp3',
                      artists: [tamurapan] })

kyousogiga_op = Release.create({ name: 'Koko',
                 image: 'https://s3-us-west-1.amazonaws.com/raji-demo/releases/kyousogiga_op.jpg',
                 year: 2013,
                 length: 2,
                 plays: 0,
                 single_type: :op_single,
                 artists: [tamurapan],
                 tracks: [
                     t4_1,
                     t4_2
                 ]})

Series.create({ name: 'Kyousou Giga',
                image: 'https://s3-us-west-1.amazonaws.com/raji-demo/series/kyousougiga.webp',
                releases: [kyousogiga_op] })
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?