# https://pbs.twimg.com/media/DmcVbtjXcAQI_uf.jpg:large
Band.create(username: 'Band1UserName', password: 'band1pw', band_name: 'Nalani & Sarina', bio: 'Getting music fans to agree on anything is next to impossible. That’s why the quick rise to national recognition of identical twin sisters Nalani & Sarina is such an astounding story. These two audacious young artists, from west-central New Jersey, have developed a distinctive blend of traditionalist soul-rock and modern pop likely to keep their faces in the spotlight for years to come. Legendary music critic/Sirius radio host Dave Marsh called their EP, Scattered World, “some of the best music being made”, and fans, critics and taste-makers have echoed his praise.

Nalani & Sarina have all the elements in place for success and stardom. Their captivating look is on display in the video for “Get Away”, a propulsive cut from Scattered World, that was in regular rotation on mtvU and other video outlets. Their smart, kinetic live show, whether as a duo or with their band, has made the sisters favorites on the Northeastern club scene.', genre: "Soul-Rock / Modern Pop", band_members: "Nalani Bolton, Sarina Bolton", img_url: 'https://pbs.twimg.com/media/DmcVbtjXcAQI_uf.jpg:large')


# Band.create(username: 'Band1UserName', password: 'band1pw', band_name: 'Band1', bio: 'We rock!', genre: "Rock / Indie Pop", band_members: "band member 1, band member 2, etc.", img_url: 'https://ksassets.timeincuk.net/wp/uploads/sites/55/2011/07/RHCP2002PR250711-620x413.jpg')
Band.create(username: 'Band2UserName', password: 'band2pw', band_name: 'Band2', bio: 'We also rock!', genre: "Rock / Indie Pop", band_members: "band member 1, band member 2, etc.", img_url: 'https://www.billboard.com/files/styles/article_main_image/public/stylus/105465-black_keys1_617_409.jpg')
Band.create(username: 'Band3UserName', password: 'band3pw', band_name: 'Band3', bio: 'We rock!', genre: "Rock / Indie Pop", band_members: "band member 1, band member 2, etc.", img_url: 'https://cdn-images-1.medium.com/max/800/1*SFfPf-MHWQ_Kp6yMRMKvsw.jpeg')
Band.create(username: 'Band4UserName', password: 'band4pw', band_name: 'Band4', bio: 'We also rock!', genre: "Rock / Indie Pop", band_members: "band member 1, band member 2, etc.", img_url: 'https://cdn-images-1.medium.com/max/800/1*V06j0fonu5dQfHCZT27mdw.jpeg')
Band.create(username: 'Band5UserName', password: 'band5pw', band_name: 'Band5', bio: 'We rock!', genre: "Rock / Indie Pop", band_members: "band member 1, band member 2, etc.", img_url: 'https://cdn-images-1.medium.com/max/2000/1*q79dh6Wpfm5RAssWQuPxIw.jpeg')
Band.create(username: 'Band6UserName', password: 'band6pw', band_name: 'Band6', bio: 'We also rock!', genre: "Rock / Indie Pop", band_members: "band member 1, band member 2, etc.", img_url: 'https://cdn-images-1.medium.com/max/800/1*HQYBhMe2V5bne4BPIKWUzQ.jpeg')

Listener.create(username: 'Listener1UserName', password: 'listener1pw', name: 'Olivier')
Listener.create(username: 'Listener2UserName', password: 'listener2pw', name: 'Jordan')
Listener.create(username: 'Listener3UserName', password: 'listener3pw', name: 'Max')
Listener.create(username: 'Listener4UserName', password: 'listener4pw', name: 'Scoti')

Question.create(band_id: 1, listener_id: 1, question_response: 'Question 1', has_answered: false)
Question.create(band_id: 1, listener_id: 2, question_response: 'Question 2', has_answered: false)
Question.create(band_id: 2, listener_id: 3, question_response: 'Question 3', has_answered: false)
Question.create(band_id: 2, listener_id: 3, question_response: 'Question 4', has_answered: false)
Question.create(band_id: 2, listener_id: 5, question_response: 'Question 5', has_answered: false)
