# Description:
#   kmb commands.
#
# Commands:
#   "kmb" - You reply with, then you will be killed.
#
# Notes:
#   kmb(YK)


image = [
  "http://25.media.tumblr.com/tumblr_m0z505bEmD1rrin2bo1_500.gif",
  "http://37.media.tumblr.com/tumblr_lyrn5qLM7g1qfsvizo1_500.gif",
  "http://24.media.tumblr.com/tumblr_lzium5wHFu1r6rbu5o1_500.gif",
  "http://img03.blogcu.com/images/a/v/a/avatarefleres/c1a093e3fce4f78a3243e0e493245a6c_1327488692.gif",
  "http://f.st-hatena.com/images/fotolife/p/pema/20130404/20130404202643.gif",
  "http://f.st-hatena.com/images/fotolife/p/pema/20120405/20120405155647_original.gif",
  "http://blogs.c.yimg.jp/res/blog-2a-28/xxharuhi0714xx/folder/269863/84/3877384/img_1?1331360115",
  "http://media.tumblr.com/tumblr_lykjd3jNQU1qkeoi6.gif",
  "http://38.media.tumblr.com/tumblr_m3j4dakgEZ1qjxztco1_500.gif",
  "http://38.media.tumblr.com/730025089ae5823dce0c3db6acff177a/tumblr_mqg054jp6x1sq9yswo1_500.gif",
  "http://f.st-hatena.com/images/fotolife/p/pema/20120405/20120405155647_original.gif"
]

module.exports = (robot) ->
  robot.hear /kmb/i, (msg) ->
    msg.send msg.random image
