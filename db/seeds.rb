# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Pic.delete_all
Follow.delete_all
Like.delete_all
Comment.delete_all

u1 = User.create!(
  username: "alfric",
  password: "password"
)
u2 = User.create!(
  username: "glamlover123",
  password: "password"
)
u3 = User.create!(
  username: "omg_so_goffik",
  password: "password"
)
u4 = User.create!(
  username: "guest",
  password: "password"
)
u5 = User.create!(
  username: "cool_art",
  password: "password"
)
u6 = User.create!(
  username: "just_pics",
  password: "password"
)
u7 = User.create!(
  username: "bowie",
  password: "password"
)
u8 = User.create!(
  username: "other_bowie",
  password: "password"
)
u9 = User.create!(
  username: "hire_aaron",
  password: "secretlogin"
)


Follow.create!(follower_id: u4.id, followed_id: u1.id)
Follow.create!(follower_id: u4.id, followed_id: u2.id)
Follow.create!(follower_id: u4.id, followed_id: u3.id)
Follow.create!(follower_id: u4.id, followed_id: u4.id)
Follow.create!(follower_id: u4.id, followed_id: u5.id)
Follow.create!(follower_id: u4.id, followed_id: u6.id)
Follow.create!(follower_id: u4.id, followed_id: u7.id)
Follow.create!(follower_id: u4.id, followed_id: u8.id)
# u4.follows.create!(followed_id: u1.id)

#done
p10 = Pic.create!(user_id: u1.id, public_id: "zohu8jctpokwkgfrupvj")
p20 = Pic.create!(user_id: u2.id, public_id: "vojfxui565uvk5u7qufz")
p30 = Pic.create!(user_id: u3.id, public_id: "vebll0ae0sjbobo6gymu")
p40 = Pic.create!(user_id: u4.id, public_id: "d4ohw11zal3jqafablw9")
p50 = Pic.create!(user_id: u5.id, public_id: "qdzf4zhe1swrpqu4okwf")
p60 = Pic.create!(user_id: u6.id, public_id: "iuezwucxrmjzusiov51f")
p70 = Pic.create!(user_id: u7.id, public_id: "oczzvla1vmxwsaqnlat6")
p80 = Pic.create!(user_id: u8.id, public_id: "jt89pi2b7hf7z0uuz1bp")

#done
p9 = Pic.create!(user_id: u1.id, public_id: "d68amnasi5liztiy3ohu")
p19 = Pic.create!(user_id: u2.id, public_id: "clzkuoao3r2mjxayrq7v")
p29 = Pic.create!(user_id: u3.id, public_id: "iay4pev9bano4aesbsct")
p39 = Pic.create!(user_id: u4.id, public_id: "eunx6gefaghcolhtcfp1")
p49 = Pic.create!(user_id: u5.id, public_id: "trpvzutb5ccpqgdp2x7y")
p59 = Pic.create!(user_id: u6.id, public_id: "sh4ploczqemlmplcvfwg")
p69 = Pic.create!(user_id: u7.id, public_id: "xdh0lg6aya1fftone75l")
p79 = Pic.create!(user_id: u8.id, public_id: "v7vymcax8gnohmjqfa0i")

#done
p8 = Pic.create!(user_id: u1.id, public_id: "erc49vlcjsx7oqqn8w9c")
p18 = Pic.create!(user_id: u2.id, public_id: "tn85ebbwjwgrt5c6smc8")
p28 = Pic.create!(user_id: u3.id, public_id: "ev3mwhhv9vhayza7qe07")
p38 = Pic.create!(user_id: u4.id, public_id: "qqwyrykzhtqhtd29l3bq")
p48 = Pic.create!(user_id: u5.id, public_id: "lbguxgzintoq8mw5ynxv")
p58 = Pic.create!(user_id: u6.id, public_id: "xsqgdh6zckeqb8ke3oz6")
p68 = Pic.create!(user_id: u7.id, public_id: "ii7vavxjb8tzidnuzfld")
p78 = Pic.create!(user_id: u8.id, public_id: "xbhdznn6t2hq4najvg0q")

#done
p17 = Pic.create!(user_id: u2.id, public_id: "czjbwohmr9ssfszbdvpv")
p27 = Pic.create!(user_id: u3.id, public_id: "nbaheukz8zjgxc1qyxrf")
p37 = Pic.create!(user_id: u4.id, public_id: "rq4uqs5t0y1lsf1oh3wy")
p47 = Pic.create!(user_id: u5.id, public_id: "bsqvjxorwwovz9lvu73f")
p57 = Pic.create!(user_id: u6.id, public_id: "xzlcijnp1pcwanela6qh")
p67 = Pic.create!(user_id: u7.id, public_id: "yyfwygztnk6soxrs9ati")
p77 = Pic.create!(user_id: u8.id, public_id: "flkctczhl9iu5igmmf9d")

#done
p6 = Pic.create!(user_id: u1.id, public_id: "ngualmim740lokjuef24")
p16 = Pic.create!(user_id: u2.id, public_id: "mlv6nxzy9x9kjylaabgn")
p26 = Pic.create!(user_id: u3.id, public_id: "u7rqsfhxb8jqadpeo3a5")
p36 = Pic.create!(user_id: u4.id, public_id: "sjadqnhwlscevxxyofoa")
p46 = Pic.create!(user_id: u5.id, public_id: "acjrjlhbfbez03nnxp54")
p56 = Pic.create!(user_id: u6.id, public_id: "o8zgwwyjrfg3he2yaace")
p66 = Pic.create!(user_id: u7.id, public_id: "y4sggnxonv5xfqeehwe6")
p76 = Pic.create!(user_id: u8.id, public_id: "binjlhu5ikbwoubjxgck")

#done
p5 = Pic.create!(user_id: u1.id, public_id: "a6cbwckxw8wwxp3osbhx")
p15 = Pic.create!(user_id: u2.id, public_id: "zq5uiitmw4ziryjio4jn")
p25 = Pic.create!(user_id: u3.id, public_id: "hfwau2ptyq20vjdxsjjf")
p35 = Pic.create!(user_id: u4.id, public_id: "tlcx1zhtxhnomdntqtd8")
p45 = Pic.create!(user_id: u5.id, public_id: "ipty9otlxkwvzs93ym0c")
p55 = Pic.create!(user_id: u6.id, public_id: "uibpijdtwx0clgkespqm")
p65 = Pic.create!(user_id: u7.id, public_id: "bpygqpamtj9h8y9bsog3")
p75 = Pic.create!(user_id: u8.id, public_id: "dux4gjtw97lat285ovwy")

#done
p4 = Pic.create!(user_id: u1.id, public_id: "qgfdlqkry8zhat6123ac")
p14 = Pic.create!(user_id: u2.id, public_id: "ipnfyjeqfvnxupggfckc")
p24 = Pic.create!(user_id: u3.id, public_id: "ul7luo0ncsf5mqtfkymw")
p34 = Pic.create!(user_id: u4.id, public_id: "s0oig8bu9xftpehypahg")
p44 = Pic.create!(user_id: u5.id, public_id: "tyx3fjhnhftlmxw4ocdw")
p54 = Pic.create!(user_id: u6.id, public_id: "d7ykcfmzaqhdygbz0oqz")
p64 = Pic.create!(user_id: u7.id, public_id: "re2hxf80mw8eaiivffdg")
p74 = Pic.create!(user_id: u8.id, public_id: "szcvmjfk5vsdfyw4ku1b")

#done
p3 = Pic.create!(user_id: u1.id, public_id: "zeluxjbbkqsjmih6wfux")
p13 = Pic.create!(user_id: u2.id, public_id: "zrhwnrmcz1hjlxzydgvv")
p23 = Pic.create!(user_id: u3.id, public_id: "immz4hjwxaeuwqgwmx3w")
p33 = Pic.create!(user_id: u4.id, public_id: "xh8xid0lxjud0uqmh81o")
p43 = Pic.create!(user_id: u5.id, public_id: "ovasygzppmuiz8m4rher")
p53 = Pic.create!(user_id: u6.id, public_id: "qt1ecdeevbedtf3dnrse")
p63 = Pic.create!(user_id: u7.id, public_id: "liiawa6otpp6s02ydsui")
p73 = Pic.create!(user_id: u8.id, public_id: "wam274sf0ep2ocgidh2a")

#done
p2 = Pic.create!(user_id: u1.id, public_id: "g7fc1ampuwqlanidzj54")
p12 = Pic.create!(user_id: u2.id, public_id: "rwceh2f6qzthoksgp8ue")
p22 = Pic.create!(user_id: u3.id, public_id: "upeclzfyyxfcp9qnszqp")
p32 = Pic.create!(user_id: u4.id, public_id: "oqig2w9q93yjfia4arbr")
p42 = Pic.create!(user_id: u5.id, public_id: "jfuittxbzra17awdv4sq")
p52 = Pic.create!(user_id: u6.id, public_id: "bwsjkufg2ckend9zo3tt")
p62 = Pic.create!(user_id: u7.id, public_id: "vo5yhysjperzrqffsamf")
p72 = Pic.create!(user_id: u8.id, public_id: "vwriqmwtkiat2phvkozx")


p1 = Pic.create!(user_id: u1.id, public_id: "drzv6m8vdujcj1abgt2e")
p11 = Pic.create!(user_id: u2.id, public_id: "iq6zjo1gtmas5cbun2nv")
p61 = Pic.create!(user_id: u7.id, public_id: "ys2qa59tkokyrulnbzgl")
p31 = Pic.create!(user_id: u4.id, public_id: "rlopqb2ijq92qscw0q3m")
p21 = Pic.create!(user_id: u3.id, public_id: "zwsxoe2vuedpl2iy2bp9")
p41 = Pic.create!(user_id: u5.id, public_id: "mfir3yf7amkvk0jcxmgn")
p51 = Pic.create!(user_id: u6.id, public_id: "mt1tlt1ghmvcdnpaiazk")
p71 = Pic.create!(user_id: u8.id, public_id: "ccwt68qdnpdlrbntuccl")


p81 = Pic.create!(user_id: u9.id, public_id: "ccwt70qdnpdlrbntuccl")
p82 = Pic.create!(user_id: u9.id, public_id: "ccwt71qdnpdlrbntuccl")
p83 = Pic.create!(user_id: u9.id, public_id: "ccwt72qdnpdlrbntuccl")

Like.create!(pic_id: p1.id, liker_id: u1.id)
Like.create!(pic_id: p11.id, liker_id: u1.id)
Like.create!(pic_id: p22.id, liker_id: u1.id)
Like.create!(pic_id: p34.id, liker_id: u1.id)
Like.create!(pic_id: p47.id, liker_id: u1.id)
Like.create!(pic_id: p51.id, liker_id: u1.id)
Like.create!(pic_id: p68.id, liker_id: u1.id)
Like.create!(pic_id: p77.id, liker_id: u1.id)
Like.create!(pic_id: p13.id, liker_id: u1.id)
Like.create!(pic_id: p28.id, liker_id: u1.id)
Like.create!(pic_id: p31.id, liker_id: u1.id)
Like.create!(pic_id: p50.id, liker_id: u1.id)
Like.create!(pic_id: p53.id, liker_id: u1.id)
Like.create!(pic_id: p61.id, liker_id: u1.id)
Like.create!(pic_id: p72.id, liker_id: u1.id)

Like.create!(pic_id: p14.id, liker_id: u2.id)
Like.create!(pic_id: p20.id, liker_id: u2.id)
Like.create!(pic_id: p38.id, liker_id: u2.id)
Like.create!(pic_id: p42.id, liker_id: u2.id)
Like.create!(pic_id: p53.id, liker_id: u2.id)
Like.create!(pic_id: p65.id, liker_id: u2.id)
Like.create!(pic_id: p79.id, liker_id: u2.id)
Like.create!(pic_id: p2.id, liker_id: u2.id)
Like.create!(pic_id: p15.id, liker_id: u2.id)
Like.create!(pic_id: p23.id, liker_id: u2.id)
Like.create!(pic_id: p33.id, liker_id: u2.id)
Like.create!(pic_id: p49.id, liker_id: u2.id)
Like.create!(pic_id: p60.id, liker_id: u2.id)
Like.create!(pic_id: p62.id, liker_id: u2.id)
Like.create!(pic_id: p73.id, liker_id: u2.id)

Like.create!(pic_id: p5.id, liker_id: u3.id)
Like.create!(pic_id: p19.id, liker_id: u3.id)
Like.create!(pic_id: p23.id, liker_id: u3.id)
Like.create!(pic_id: p32.id, liker_id: u3.id)
Like.create!(pic_id: p47.id, liker_id: u3.id)
Like.create!(pic_id: p58.id, liker_id: u3.id)
Like.create!(pic_id: p66.id, liker_id: u3.id)
Like.create!(pic_id: p73.id, liker_id: u3.id)
Like.create!(pic_id: p4.id, liker_id: u3.id)
Like.create!(pic_id: p17.id, liker_id: u3.id)
Like.create!(pic_id: p28.id, liker_id: u3.id)
Like.create!(pic_id: p31.id, liker_id: u3.id)
Like.create!(pic_id: p48.id, liker_id: u3.id)
Like.create!(pic_id: p56.id, liker_id: u3.id)
Like.create!(pic_id: p70.id, liker_id: u3.id)
Like.create!(pic_id: p77.id, liker_id: u3.id)

# demo users likes for their feed page
Like.create!(pic_id: p2.id, liker_id: u4.id)
Like.create!(pic_id: p8.id, liker_id: u4.id)
Like.create!(pic_id: p12.id, liker_id: u4.id)
Like.create!(pic_id: p18.id, liker_id: u4.id)
Like.create!(pic_id: p26.id, liker_id: u4.id)
Like.create!(pic_id: p30.id, liker_id: u4.id)
Like.create!(pic_id: p61.id, liker_id: u4.id)
Like.create!(pic_id: p77.id, liker_id: u4.id)
Like.create!(pic_id: p10.id, liker_id: u4.id)
Like.create!(pic_id: p27.id, liker_id: u4.id)
Like.create!(pic_id: p1.id, liker_id: u4.id)
Like.create!(pic_id: p5.id, liker_id: u4.id)
Like.create!(pic_id: p17.id, liker_id: u4.id)
Like.create!(pic_id: p14.id, liker_id: u4.id)
Like.create!(pic_id: p22.id, liker_id: u4.id)
Like.create!(pic_id: p29.id, liker_id: u4.id)
Like.create!(pic_id: p65.id, liker_id: u4.id)
Like.create!(pic_id: p63.id, liker_id: u4.id)
Like.create!(pic_id: p4.id, liker_id: u4.id)
Like.create!(pic_id: p21.id, liker_id: u4.id)
Like.create!(pic_id: p9.id, liker_id: u4.id)

Like.create!(pic_id: p4.id, liker_id: u5.id)
Like.create!(pic_id: p20.id, liker_id: u5.id)
Like.create!(pic_id: p25.id, liker_id: u5.id)
Like.create!(pic_id: p40.id, liker_id: u5.id)
Like.create!(pic_id: p41.id, liker_id: u5.id)
Like.create!(pic_id: p53.id, liker_id: u5.id)
Like.create!(pic_id: p62.id, liker_id: u5.id)
Like.create!(pic_id: p77.id, liker_id: u5.id)
Like.create!(pic_id: p3.id, liker_id: u5.id)
Like.create!(pic_id: p16.id, liker_id: u5.id)
Like.create!(pic_id: p24.id, liker_id: u5.id)
Like.create!(pic_id: p38.id, liker_id: u5.id)
Like.create!(pic_id: p45.id, liker_id: u5.id)
Like.create!(pic_id: p58.id, liker_id: u5.id)
Like.create!(pic_id: p66.id, liker_id: u5.id)
Like.create!(pic_id: p71.id, liker_id: u5.id)

Like.create!(pic_id: p8.id, liker_id: u6.id)
Like.create!(pic_id: p18.id, liker_id: u6.id)
Like.create!(pic_id: p23.id, liker_id: u6.id)
Like.create!(pic_id: p35.id, liker_id: u6.id)
Like.create!(pic_id: p48.id, liker_id: u6.id)
Like.create!(pic_id: p56.id, liker_id: u6.id)
Like.create!(pic_id: p66.id, liker_id: u6.id)
Like.create!(pic_id: p74.id, liker_id: u6.id)
Like.create!(pic_id: p5.id, liker_id: u6.id)
Like.create!(pic_id: p13.id, liker_id: u6.id)
Like.create!(pic_id: p29.id, liker_id: u6.id)
Like.create!(pic_id: p32.id, liker_id: u6.id)
Like.create!(pic_id: p46.id, liker_id: u6.id)
Like.create!(pic_id: p51.id, liker_id: u6.id)
Like.create!(pic_id: p63.id, liker_id: u6.id)
Like.create!(pic_id: p76.id, liker_id: u6.id)

Like.create!(pic_id: p9.id, liker_id: u7.id)
Like.create!(pic_id: p14.id, liker_id: u7.id)
Like.create!(pic_id: p22.id, liker_id: u7.id)
Like.create!(pic_id: p39.id, liker_id: u7.id)
Like.create!(pic_id: p50.id, liker_id: u7.id)
Like.create!(pic_id: p54.id, liker_id: u7.id)
Like.create!(pic_id: p63.id, liker_id: u7.id)
Like.create!(pic_id: p78.id, liker_id: u7.id)
Like.create!(pic_id: p6.id, liker_id: u7.id)
Like.create!(pic_id: p15.id, liker_id: u7.id)
Like.create!(pic_id: p23.id, liker_id: u7.id)
Like.create!(pic_id: p36.id, liker_id: u7.id)
Like.create!(pic_id: p43.id, liker_id: u7.id)
Like.create!(pic_id: p52.id, liker_id: u7.id)
Like.create!(pic_id: p69.id, liker_id: u7.id)
Like.create!(pic_id: p73.id, liker_id: u7.id)

Like.create!(pic_id: p6.id, liker_id: u8.id)
Like.create!(pic_id: p18.id, liker_id: u8.id)
Like.create!(pic_id: p24.id, liker_id: u8.id)
Like.create!(pic_id: p39.id, liker_id: u8.id)
Like.create!(pic_id: p44.id, liker_id: u8.id)
Like.create!(pic_id: p53.id, liker_id: u8.id)
Like.create!(pic_id: p70.id, liker_id: u8.id)
Like.create!(pic_id: p79.id, liker_id: u8.id)
Like.create!(pic_id: p8.id, liker_id: u8.id)
Like.create!(pic_id: p14.id, liker_id: u8.id)
Like.create!(pic_id: p22.id, liker_id: u8.id)
Like.create!(pic_id: p37.id, liker_id: u8.id)
Like.create!(pic_id: p49.id, liker_id: u8.id)
Like.create!(pic_id: p51.id, liker_id: u8.id)
Like.create!(pic_id: p67.id, liker_id: u8.id)
Like.create!(pic_id: p75.id, liker_id: u8.id)

Like.create!(pic_id: p81.id, liker_id: u1.id)
Like.create!(pic_id: p81.id, liker_id: u2.id)
Like.create!(pic_id: p81.id, liker_id: u3.id)
Like.create!(pic_id: p81.id, liker_id: u4.id)
Like.create!(pic_id: p81.id, liker_id: u5.id)
Like.create!(pic_id: p81.id, liker_id: u6.id)
Like.create!(pic_id: p81.id, liker_id: u7.id)
Like.create!(pic_id: p81.id, liker_id: u8.id)

Like.create!(pic_id:  p82.id, liker_id: u1.id)
Like.create!(pic_id:  p82.id, liker_id: u2.id)
Like.create!(pic_id:  p82.id, liker_id: u3.id)
Like.create!(pic_id:  p82.id, liker_id: u4.id)
Like.create!(pic_id:  p82.id, liker_id: u5.id)
Like.create!(pic_id:  p82.id, liker_id: u6.id)
Like.create!(pic_id:  p82.id, liker_id: u7.id)
Like.create!(pic_id:  p82.id, liker_id: u8.id)

Like.create!(pic_id:  p83.id, liker_id: u1.id)
Like.create!(pic_id:  p83.id, liker_id: u2.id)
Like.create!(pic_id:  p83.id, liker_id: u3.id)
Like.create!(pic_id:  p83.id, liker_id: u4.id)
Like.create!(pic_id:  p83.id, liker_id: u5.id)
Like.create!(pic_id:  p83.id, liker_id: u6.id)
Like.create!(pic_id:  p83.id, liker_id: u7.id)
Like.create!(pic_id:  p83.id, liker_id: u8.id)



Comment.create!(user_id: u1.id, pic_id: p18.id, body: "too laser!")
Comment.create!(user_id: u1.id, pic_id: p28.id, body: "where is this?")
Comment.create!(user_id: u1.id, pic_id: p34.id, body: "who is the artist?!")
Comment.create!(user_id: u1.id, pic_id: p46.id, body: "i would ttly buy this art")
Comment.create!(user_id: u1.id, pic_id: p52.id, body: "going to be rad!!")
Comment.create!(user_id: u1.id, pic_id: p62.id, body: "great find!")
Comment.create!(user_id: u1.id, pic_id: p79.id, body: "WANT THIS")

Comment.create!(user_id: u2.id, pic_id: p22.id, body: "breathtaking!")
Comment.create!(user_id: u2.id, pic_id: p39.id, body: "such a great piece!")
Comment.create!(user_id: u2.id, pic_id: p41.id, body: "so so good")
Comment.create!(user_id: u2.id, pic_id: p57.id, body: "you look fantastic!")
Comment.create!(user_id: u2.id, pic_id: p63.id, body: "must b great")
Comment.create!(user_id: u2.id, pic_id: p76.id, body: "i had one of these!")

Comment.create!(user_id: u3.id, pic_id: p4.id, body: "homemade? looks amazing!")
Comment.create!(user_id: u3.id, pic_id: p28.id, body: "yosemite!")
Comment.create!(user_id: u3.id, pic_id: p38.id, body: "awesome artist")
Comment.create!(user_id: u3.id, pic_id: p49.id, body: "beautiful!")
Comment.create!(user_id: u3.id, pic_id: p51.id, body: "those were the days")
Comment.create!(user_id: u3.id, pic_id: p67.id, body: "a junonia?! so rare! congrats!")
Comment.create!(user_id: u3.id, pic_id: p71.id, body: "daaaaaang")

Comment.create!(user_id: u4.id, pic_id: p8.id, body: "blue lights!")
Comment.create!(user_id: u4.id, pic_id: p20.id, body: "omg!")
Comment.create!(user_id: u4.id, pic_id: p27.id, body: "you must have the best life")
Comment.create!(user_id: u4.id, pic_id: p44.id, body: "would hang in living room")
Comment.create!(user_id: u4.id, pic_id: p59.id, body: "your salads must be AMAZING")
Comment.create!(user_id: u4.id, pic_id: p64.id, body: "you found so many!")
Comment.create!(user_id: u4.id, pic_id: p72.id, body: "i need to go to their show")

Comment.create!(user_id: u5.id, pic_id: p10.id, body: "is it possible to be too glam?")
Comment.create!(user_id: u5.id, pic_id: p14.id, body: "got a hair cut!?!")
Comment.create!(user_id: u5.id, pic_id: p24.id, body: "i want to get a haircut now!")
Comment.create!(user_id: u5.id, pic_id: p40.id, body: "inspiring")
Comment.create!(user_id: u5.id, pic_id: p55.id, body: "looks delish!")
Comment.create!(user_id: u5.id, pic_id: p61.id, body: "beautiful!")
Comment.create!(user_id: u5.id, pic_id: p74.id, body: "love this pic")

Comment.create!(user_id: u6.id, pic_id: p1.id, body: "great!")
Comment.create!(user_id: u6.id, pic_id: p13.id, body: "this is the CUTEST")
Comment.create!(user_id: u6.id, pic_id: p21.id, body: "SO GLAM")
Comment.create!(user_id: u6.id, pic_id: p36.id, body: "i want a pocketwatch")
Comment.create!(user_id: u6.id, pic_id: p42.id, body: "people REALLY like stevie nix")
Comment.create!(user_id: u6.id, pic_id: p57.id, body: "shucks, thanks- i try!")
Comment.create!(user_id: u6.id, pic_id: p66.id, body: "he's found something...")
Comment.create!(user_id: u6.id, pic_id: p73.id, body: "still road-worthy imo!")

Comment.create!(user_id: u7.id, pic_id: p3.id, body: "billowy")
Comment.create!(user_id: u7.id, pic_id: p11.id, body: "scale of one to ten: GLAM...")
Comment.create!(user_id: u7.id, pic_id: p25.id, body: "Oh i wanna do that!")
Comment.create!(user_id: u7.id, pic_id: p32.id, body: "very nice work")
Comment.create!(user_id: u7.id, pic_id: p45.id, body: "horror on velvet")
Comment.create!(user_id: u7.id, pic_id: p53.id, body: "so cool!")
Comment.create!(user_id: u7.id, pic_id: p65.id, body: "this is one of my favorites")
Comment.create!(user_id: u7.id, pic_id: p77.id, body: "excellent ambiance")

Comment.create!(user_id: u8.id, pic_id: p5.id, body: "radical!")
Comment.create!(user_id: u8.id, pic_id: p12.id, body: "she could be a cat model!")
Comment.create!(user_id: u8.id, pic_id: p23.id, body: "fancy!")
Comment.create!(user_id: u8.id, pic_id: p31.id, body: "yeah!")
Comment.create!(user_id: u8.id, pic_id: p43.id, body: "who paints this stuff?")
Comment.create!(user_id: u8.id, pic_id: p54.id, body: "fab!")
Comment.create!(user_id: u8.id, pic_id: p68.id, body: "whoa... great find!")
Comment.create!(user_id: u8.id, pic_id: p72.id, body: "i just did!")

Comment.create!(user_id: u3.id, pic_id: p21.id, body: "it's pretty dang glam")

Comment.create!(user_id: u7.id, pic_id: p67.id, body: "yes! i've found 2 so far!")


Comment.create!(user_id: u7.id, pic_id: p81.id, body: "Hire this man!")
Comment.create!(user_id: u8.id, pic_id: p81.id, body: "yes! do it!")
