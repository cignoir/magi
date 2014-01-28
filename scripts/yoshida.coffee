# Description:
#   Yoshida Bot
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   None
#
# Author:
#   Shulla Cignoir

lot = (percent) -> Math.floor((Math.random 0) * 100) >= (100 - percent)
random_word = (array) -> array[Math.floor((Math.random 0) * array.length)]

module.exports = (robot) ->
  robot.hear /(吉田？|よしだ？|よしだあ|よしだぁ)/i, (msg) ->
    if (lot 100)
      msg.send random_word ["(爆笑)",
                            "そんなふうには考えていないです。",
                            "その疑問に対しても「別にいいんじゃないですか?」になりますね。",
                            "あはは",
                            "そうですか？",
                            "基本的にはそうです。",
                            "基本的にその質問に対しては「はい」とお答えします。",
                            "うーん、やっぱりこれも「いいんじゃないですか？」になってしまいますね。",
                            "その疑問に対しても「別にいいんじゃないですか？」になりますね。",
                            "１番いい遊び方をしていただいてますね。そのくらいのペースで遊んでいくのが、無理なく気持ちよく遊べるのかなあと思います。",
                            "本当にそうでしょうか？",
                            "うーん、そう思われてしまっても、お返しする言葉はなく、ご迷惑をおかけしたのは事実なので、平謝りするしかないです。",
                            "今の僕だと挫折してしまいます(笑)",
                            "のちに全貌を把握できた時点で、“いいパッチだったね”と言ってもらえればいいのかなと。",
                            "僕は投げられたボールは全力で打ち返す主義なので、こちらも何か考えたいですね。負けられないです(笑)",
                            "それに答えるのは難しいですね。",
                            "ちょっとご質問には答え辛いですね。",
                            "そこはご想像にお任せします（笑）",
                            "仰ることはよくわかります（笑）",
                            "んー、言ってしまうのがもったいないので、皆さんがお確かめください（笑）",
                            "そうですね。",
                            "はい。"
                          ]
  robot.hear /意味/i, (msg) -> if (lot 70) then msg.send random_word ["意味としてはそのままなのです。", "はい。"]
  robot.hear /(ところで|話変わる)/i, (msg) -> if (lot 70) then msg.send random_word ["話題が脱線しすぎですよね（笑）", "はい。"]
  robot.hear /吉魔/i, (msg) -> if (lot 70) then msg.send random_word ["お願いだから吉魔と呼ぶのは……というのは冗談で（笑）", "はい。"]
  robot.hear /ん？/i, (msg) -> if (lot 70) then msg.send random_word ["まず「ん？」とは思ってないです。", "はい。"]
  robot.hear /フラッシュ/i, (msg) -> if (lot 70) then msg.send random_word ["仕様上は、フラッシュの使用はとりあえず正解なんです。", "はい。"]
  
  robot.hear /(お願い|頼み|出来.+？|でき.+？)/i, (msg) ->
    if (lot 70) 
      msg.send random_word ["ムリです。死んでしまいます（笑）",
                            "何とかなるよう、もがいています（笑）",
                            "現時点でそれができていないことに、申し訳なさを感じます。",
                            "はい。"
                           ]

  robot.hear /(考えておきます|考えときます)/i, (msg) ->
    if (lot 70) 
      msg.send random_word ["僕は投げられたボールは全力で打ち返す主義なので、こちらも何か考えたいですね。負けられないです(笑)", "はい。"]

  robot.hear /ルーレット/i, (msg) ->
    if (lot 70) 
      msg.send random_word ["極まった遊びかたをされる方はコンテンツルーレットを毎日1回はやるのかなと。",
                            "効率派の方は、ガシガシとハイレベルを回してください（笑）",
                            "コンテンツルーレットの経験値がおいしいので、これを1日1回やり、残りはほかのいろいろなもので稼ぐ、というのがいちばん気軽なのかなと思います。",
                            "はい。"
                           ]

  robot.hear /デイリー/i, (msg) ->
    if (lot 70) 
      msg.send random_word ["デイリーはべつに毎日リセットされますし、1週1回の場合も月曜日以外は、それほど焦る必要はないでしょう。",
                            "理想は「気がついたら貯まっていた」です。",
                            "別にいいんじゃないですか？",
                            "はい。"
                           ]

  robot.hear /(どういうこと|どゆこと|どうゆうこと|なんで|なぜ|わからん|わからない)/i, (msg) ->
    if (lot 70)
      msg.send random_word ["(爆笑)",
                            "うーん、やっぱりこれも「いいんじゃないですか？」になってしまいますね。",
                            "その疑問に対しても「別にいいんじゃないですか？」になりますね。",
                            "それに答えるのは難しいですね。",
                            "ちょっとご質問には答え辛いですね。",
                            "そこはご想像にお任せします（笑）",
                            "基本的にはそうです。",
                            "のちに全貌を把握できた時点で、“いいパッチだったね”と言ってもらえればいいのかなと。",
                            "まだ内緒です（笑）",
                            "はい。"
                           ]

  robot.hear /(難し|むず|やばすぎ)/i, (msg) ->
    if (lot 70)
      msg.send random_word ["(爆笑)",
                            "避けて下さい(笑)",
                            "本当にそうでしょうか？",
                            "今の僕だと挫折してしまいます(笑)",
                            "そうですね。",
                            "はい。"
                           ]

  robot.hear /(おもしろ|面白)/i, (msg) ->
    if (lot 70)
      msg.send random_word ["あはは、それは確かに面白そうです(笑)",
                            "そうですね。",
                            "はい。"
                           ]

  robot.hear /ｗｗ/i, (msg) ->
    if (lot 70)
      msg.send random_word ["(爆笑)",
                            "あはは(笑)",
                            "はい。"
                           ]

  robot.hear /(思う|思ってる|思います)/i, (msg) ->
    if (lot 70)
      msg.send random_word ["本当にそうでしょうか？",
                            "そんなふうには考えていないです。",
                            "うーん、そう思われてしまっても、お返しする言葉はなく、ご迷惑をおかけしたのは事実なので、平謝りするしかないです。",
                            "そこはご想像にお任せします（笑）",
                            "基本的にはそうです。",
                            "別にいいんじゃないですか？",
                            "のちに全貌を把握できた時点で、“いいパッチだったね”と言ってもらえればいいのかなと。",
                            "はい。"
                           ]

  robot.hear /(ですか？|です？|じゃないの？|ですかね|でしょうか)/i, (msg) ->
    if (lot 70)
      msg.send random_word ["本当にそうでしょうか？",
                            "そんなふうには考えていないです。",
                            "基本的にその質問に対しては「はい」とお答えします。",
                            "その疑問に対しても「別にいいんじゃないですか？」になりますね。",
                            "それに答えるのは難しいですね。",
                            "ちょっとご質問には答え辛いですね。",
                            "そこはご想像にお任せします（笑）",
                            "基本的にはそうです。",
                            "んー、言ってしまうのがもったいないので、皆さんがお確かめください（笑）",
                            "まだ内緒です（笑）",
                            "そうですね。",
                            "はい。"
                           ]

  robot.hear /(暇|やることない|やることがない)/i, (msg) ->
    if (lot 80)
      msg.send random_word ["本当にそうでしょうか？",
                            "コンテンツを用意できなかった我々が悪い。",
                            "うーん、そう思われてしまっても、お返しする言葉はなく、ご迷惑をおかけしたのは事実なので、平謝りするしかないです。",
                            "仰ることはよくわかります（笑）",
                            "別にいいんじゃないですか？"
                            "そうですね。",
                            "はい。"
                           ]

  robot.hear /(決め.+？|決ま.+？)/i, (msg) ->
    if (lot 80)
      msg.send random_word ["まだ決めていません（笑）",
                            "時間がなくて申し訳なかったです（笑）",
                            "別にいいんじゃないですか？",
                            "はい。"
                           ]

