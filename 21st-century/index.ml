(******************************************************************************
  Copyright (c) 2014 Pasberth
  https://github.com/fairytale/fairytale.github.io
 *****************************************************************************)

#default_quotation "fairytale";;

open Fairytale

let broadcast x =
  let open Html5.M in
  p ~a:[a_class ["broadcast"]]
    x

let page_link id txt = 
  Html5.M.
  (a ~a:[a_href ("#" ^ id)]
     [pcdata txt])
let r url txt =
  let open Html5.M in
  sup [ pcdata "["
      ; a ~a:[a_href url]
          [pcdata txt]
      ; pcdata "]"]
let ac url txt =
  let open Html5.M in
  a ~a:[a_href url]
    [pcdata txt]
let ach url =
  let open Html5.M in
  span [ pcdata "<"
       ; a ~a:[a_href url]
           [pcdata url]
       ; pcdata ">"
       ]
let earthquake = object (self)
                   method id = "earthquake"
                   method link = page_link self#id "東北地方太平洋沖地震"
                 end
let firefox_os = object (self)
                   method id = "firefox-os"
                   method link = page_link self#id "Firefox OS"
                 end
let ubuntu = object (self)
               method id = "ubuntu"
               method link = page_link self#id "Ubuntu"
             end
let ibe = object (self)
               method id = "ibe"
               method link = page_link self#id "いべ"
             end
let c85 = object (self)
               method id = "c83"
               method link = page_link self#id "C83"
             end
let c86 = object (self)
               method id = "c84"
               method link = page_link self#id "C84"
             end
let c87 = object (self)
               method id = "c85"
               method link = page_link self#id "C85"
             end
let c88 = object (self)
               method id = "c86"
               method link = page_link self#id "C86"
             end
let c89 = object (self)
               method id = "c87"
               method link = page_link self#id "C87"
             end
let star_wars_ep8 = object (self)
                      method id = "star-wars-ep8"
                      method link = page_link self#id "スター・ウォーズ エピソード8"
                    end
let jewel = object (self)
              method id = "jewel"
              method link = page_link self#id "宝石"
            end
let switch = object (self)
               method id = "switch"
               method link = page_link self#id "〈スイッチ〉"
             end
let contents =
  let open Html5.M in
  [
    h2 <<はじめに>>;
    h3 <<コーリ編について>>;
    p <<　コーリ編は2014年9月10日から2014年9月13日かけて
       書かれました。>>;
    p <<　コーリ編は約2万2000文字であり、もしあなたが
       1分につき500文字読むとすると、読み終わるまでに約44分かかります。>>;
    p <<　コーリ編は、2011年から2029年を舞台としています。
       前半のうちは2014年から見た現代を舞台としており、主に実際にあった
       歴史を扱います。
       後半はほんのちょっとのあり得そうな近未来を舞台としており、
       現実では起こらないはずの、架空の歴史を扱います。
       ただしこの小説が2014年9月に書かれたことに注意して、
       もしあなたが2015年以後にこの小説を読んでいるとしても、
       ちょっと頭を2014年までのあなたの思考をトレースした$jewel#link$に
       $switch#link$してから読んでください。>>;
    h3 <<テーリ編について>>;
    p <<Coming soon.>>;
    h3 <<ホヨ編について>>;
    p <<Coming soon.>>;
    h3 <<ならば編について>>;
    p <<Coming soon.>>;
    h2 <<コーリ編>>;
    h3 <<2011年>>;
    p <<
       　キーンコーンカーンコーン、
       6時間目の予鈴が鳴る。わたしは女子トイレのある個室の前で
       $rb "正弦" "さいん"$ちゃんを待っていたところだったけど、
       さいんちゃんが出て来ないので、個室の中へ向けて叫んだ。
       >>;
    p <<
       「さいんちゃん！　早くしないとチャイム鳴っちゃうよ！」
       >>;
    p <<
       　その直後に個室の中で水が流れる音がして、さいんちゃんが
       出てきて、手を洗いながら言った。
       >>;
    p <<
       「ごめんね、$rb "恋羽理" "こうり"$ちゃん」
       >>;
    p <<
       　わたしとさいんちゃんは慌てて5年2組へ戻った。でも走らないの。
       廊下で走るのはお行儀が悪いから。
       >>;
    div ~a:[a_class ["authentic"]]
        [
    p <<
       　6時間目は社会。すぐにプリントが配られて、わたしは時間内に
       それを解く。社会は得意なんだ。わたしはすらすら解いてゆく。>>;
    blockquote
      <<
       問題: 地図上にふられた番号に対応する都道府県を書きなさい。
       >>;
    p <<
       　都道府県なんて目をつむっててもぜんぶ言えるんだから。
       わたしはさらさら書く。>>;
    blockquote
      <<
       (1)宮城
       (2)北海道
       (3)大阪
       ……
       [その他6つの都道府県の名前]
       ……
       (10)茨城>>;
    p <<
       　北海道は特徴的だし、宮城はわたしの住んでいる県だから
       すぐにわかる。夏休みには、いつも
       茨城のお母さんの実家に遊びに行ってるし。
       >>;
    div ~a:[a_class ["basis"]]
        <<根拠:
         「$ac
         "http://www.mext.go.jp/a_menu/shotou/cs/1320019.htm"
         "第2章　各教科　第2節　社会：文部科学省"$」,
            2014年9月13日アクセス.
         >>
        ];
    p <<
       　そのとき、ゆっくりと床が揺れるような感じがした。
       最初は小さな地震かと思った。でもすぐに電灯がぐらぐら揺れているのに、
       みんなが気づいた。揺れが強くなってきたので、
       だれが言うでもなく、何度も避難訓練でそうしたように、
       みんなが机の下に隠れた。わたしもそうした。>>;
    p <<
       　ほどなくして、激しい揺れで、わたしは机ごと激しく揺られた。
       ガラスが割れる音がした。窓が割れたのだ。わたしの机の上に
       なにか重いものが降ってきて、わたしの真上で破裂音がした。
       わたしは心の底から恐怖を感じた。死んじゃうかもしれない。
       ほかのことは考えられなかった。>>;
    p <<
       　激しく、そして長い揺れが学校を襲った。まず、机のなかに入っていた
       お道具箱とか教科書が飛び出た。クラスのみんなで可愛がっていた
       お魚の水槽が倒れ、水がわたしの足下まで流れてきた。柱が折れ、
       天井が崩れそうなほど傾いた。本棚が倒れ、いろんな本が散らばった。
       ロッカーの中に入っていたみんなの荷物が行くあてもなく床を
       転がった。>>;
    p <<
       　堪え難いほどこわい時間だった。
       （神様……）
       わたしはただ祈るばかりだった。
       >>;
    p <<
       　しばらくして、そんな時間も終わった。揺れが収まったのだ。
       でも、次の揺れがくるかもしれないと思って、みんなしばらく
       机の下からは出なかった。>>;
    p <<
       　みんな不安がっていることが空気からわかった。
       でも、みんな高学年の大人だから、低学年の子供みたいにすぐ走り出す
       ということも、低学年の子供みたいに騒ぎだすということもせず、
       先生の指示を待っていた。>>;
    p <<　メガホンで廊下のほうから声がした。>>;
    broadcast
      <<〝先ほど震度5を超える地震が発生しました。停電しています。
       授業は中止。生徒は担任の先生の指示に従って校庭へ避難して
       ください〟>>;
    p <<　それを聞いた担任の先生が言う。>>;
    p <<「いまの通りです。みんな防災頭巾をつけて、慌てず、騒がず
       校庭へ避難してください」>>;
    p <<　わたしは防災頭巾を頭につけてさいんちゃんのもとまで駆け寄って
       言った。>>;
    div ~a:[a_class ["authentic"]]
        [
    p <<「一緒に$ibe#link$」>>;
    div ~a:[a_class ["basis"]]
        <<
         根拠:
         「$ac "http://www1.ocn.ne.jp/~konnok/katsuyou.html"
         "仙台弁の活用形"$」,
         2014年9月11日アクセス.>>;
        ];
    p <<　さいんちゃんは答えた。>>;
    p <<「なにがあっても一緒だよ」>>;
    p <<　こうしてわたしたちは校庭へ避難した。>>;
    p <<　校庭に避難したあと、先生が点呼をとっていた。
       わたしも答えた。そのあとしばらく、わたしたちは先生がなにか
       決めるのを待っていた。>>;
    p <<　校庭に避難してからしばらく、何度も大きな揺れがあって、
       そのたびに不安になったけど、何度かすると慣れてきて、
       自分の心配よりもむしろ、お父さんやお母さんの心配をしていた。>>;
    p <<　それから、わたしたちはまた別の場所へ避難することになった。
       わたしたちはある橋のほとりに向かうことになった。
       裏山よりは低いけど、裏山は坂が急なので避難には適さず、
       適度に小高いほとりが避難に適切らしい。
       それ以上詳しくは説明されなかったけど、とにかく先生について行けばいいとの
       ことだった。>>;
    p <<　さいんちゃんは不安げに言った。>>;
    p <<「$rb "余弦" "こさいん"$ちゃん平気かな」>>;
    p <<　こさいんちゃんは、さいんちゃんの妹なんだけど。
       わたしも家族を心配して不安でいっぱいだった。
       でも不安を口にするともっと不安になる気がして。>>;
    p <<「平気だよ！　こさいんちゃんもう1歳でしょ」>>;
    p <<「そうかな。だといいんだけど」>>;
    p <<　わたしたちはしばらく歩いてある橋のほとりに向かった。>>;
    p <<　移動中、とんでもないことが起こった。
       津波がわたしたちが避難している場所に入り込んできたのだ。>>;
    p <<
       　津波はゆっくりと地面を飲み込んでいて、わたしには地震よりは
       危険には思えなかった。流れるプールみたいで、面白そうだとさえ
       思った。>>;
    p <<
       　でも、すぐにその考えはまちがいだと気づいた。車が押し流されて
       きたのだ。それどころか、家まで流れてきた。それに飲み込まれたら
       とんでもないことになるってすぐにわかった。>>;
    p <<
       　先生たちも生徒に逃げろ逃げろと叫んでいた。
       わたしも津波に飲まれたら死んじゃうと思って、わたしとさいんちゃんは、
       一目散に裏山へ向かって走りだした。>>;
    p <<
       　でも間に合わなかった。わたしは津波に飲み込まれ、ものすごい勢いで
       流された。わたしの前を走っていたさいんちゃんは飲まれなかった。
       みるみる遠くへ引っ張られ、視界のなかでさいんちゃんが小さくなった。
       しゃべろうとすると水が口のなかに入り込んできて、助けも呼べなかった。>>;
    p <<　するとさいんちゃんは、わたしが流れて行く先の橋にまわりこんだ。
       水面がどんどん上昇してるから、手を伸ばせば橋に手が届きそうだ。
       さいんちゃんは橋から身を乗り出して手を伸ばし、叫んだ。>>;
    p <<「コーリちゃん、わたしの手に捕まって！」>>;
    p <<　橋の向こうに流されたらもう二度と掴まれる場所はないだろう。
       ここで捕まらないと確実に死ぬ。わたしは手を伸ばして流れに身を任せる。>>;
    p <<　わたしとさいんちゃんの手が触れ合い、さいんちゃんは力一杯引っ張って
       わたしを持ち上げる。わたしはさいんちゃんに任せるだけじゃなくて、
       橋を掴んで身を乗り上げる。なんとか橋の上に這い上がり、
       とりあえず助かった。わたしはお礼を述べた。>>;
    p <<「ありがとう」>>;
    p <<　わたしは走ってみんな合流しようと急いだ。
       でもどういうわけかさいんちゃんは走らなかった。>>;
    p <<「なにしてるの、さいんちゃん、いま逃げなくちゃ死んじゃうかも
       しれないんだよ！」>>;
    p <<　でも、さいんちゃんは走らなかった。>>;
    p <<　わたしは一度戻ってさいんちゃんの手をとり、連れて行こうと
       引っ張った。でも彼女は走らなかった。彼女は震える声で言った。>>;
    p <<「さっき急いで走ったとき
       足をくじいちゃって走れないの」>>;
    p <<　津波の水面はどんどんかさを増していた。>>;
    p <<　さいんちゃんを置いていきたくない。
       わたしはさいんちゃんの手を引っ張った。>>;
    p <<「なにがあっても一緒だって、言ったでしょ。
       助かるときも、死ぬときも一緒」>>;
    p <<「コーリちゃん……」>>;
    p <<　わたしとさいんちゃんは一緒に歩いた。しばらくは、大雨の日に長靴で
       歩くみたいな感じで歩いていた。でもどんどんかさがましているのが
       わかって、これ以上は歩いて逃げるのは無理だと、2人とも感じ始めていた。
       そこでさいんちゃんが言った。>>;
    p <<「やっぱり、まだ走れるうちにコーリちゃんだけで逃げて。
       コーリちゃんは走れるのに、わたしに合わせて2人とも死んじゃったら
       意味ないよ」>>;
    p <<「でも……」>>;
    p <<「だいじょうぶ、すぐに追いつくよ」>>;
    p <<
       　たしかに、ここで2人とも死んじゃったらそれがいちばん最悪の結末だ。
       わたしは、わたしを助けてくれたさいんちゃんのためにも、
       生きなくちゃいけない。
       わたしは手を離し、「信じてるから」と言って走り出した。>>;
    p <<
       　さいんちゃんを置いてきたという罪悪感に苛まれながら、
       わたしはとにかく必死に高いところへ向かって走った。
       振り向く勇気はなかった。さいんちゃんがどうなっているか
       知りたくはなかった。>>;
    p <<　どれだけ高い場所にのぼってもまだ不安だったから、いつまでも、
       とにかく高い場所へ向かった。>>;
    p <<　疲れ果てて動けなくなって、やっとわたしは振り向いた。
       町が完全に水没していて、家も車も、なにもかも津波に流されているのが
       見えた。わたしたちがさっき歩いていた場所も水に沈んでいた。
       山の上まで津波がのぼってくることはないように見えたから、
       わたしはひとまず安心したけど、さいんちゃんが無事だとはとうてい
       思えなかったし、この分だと家だって流されてそうだから、
       わたしはどうしようもないと思って、ただ崩れ落ちて、泣いた。>>;
    p <<　さいんちゃんを殺したのは、きっとわたしなんだと思った。
       わたしは「ごめんなさい、ごめんなさい」とだれにでもなく謝り続けた。>>;
    p <<　そのあと、わたしはなんとか先生たちと合流し、
       先生たちの指示ですこし遠くまで避難した。わたしは
       小学校とはすこし離れた学校の体育館に避難し、そこでしばらく過ごした。
       先生たちがお父さんやお母さんに連絡をとろうと試みてくれて、
       もし生きていたら迎えにきてもらえるらしかった。>>;
    p <<
       　それから1ヶ月ほど経った。お父さんやお母さんが迎えにきてくれることは
       なかった。わたしは絶望していた。たぶん、お父さんもお母さんも死ん
       じゃったんだ。>>;
    p <<
       　もう両親が迎えにくることはないと思って、わたしはすべてを投げ出して
       ふさぎ込みたくなった。でも、死んださいんちゃんのためにも、わたしは
       死ぬわけにはいかないと、強く思った。わたしの命はさいんちゃんが
       助けてくれた。せっかく生き残ったのに、諦めるのはさいんちゃんの
       ためにもできない。もうお父さんを頼ることはできないし、お母さんに
       甘えることもできない。わたしは、自分で考えて、自分で行動して、自分で
       自分の命を守らなくちゃいけないんだ。>>;
    p <<
       　そこで、わたしは、夏休みにはよく、茨城にあるお母さんの実家に
       遊びに行っていたことを思い出した。
       $rb "清" "せい"$爺ちゃんと$rb "節" "せつ"$婆ちゃんが住んでいる
       家だ。何度もひとりで行っているので住所は覚えてる。
       わたしはせい爺ちゃんの家へ行ってみることにした。>>;
    p <<　でも、まだいくつかの路線が復旧してなくて、行けなかった。
       わたしはせい爺ちゃんの家が残っていることを祈りつつ待った。>>;
    div ~a:[a_class ["authentic"]]
        [
          p <<　さらに1ヶ月ほど経って、2011年5月19日、石巻線が復旧した。
             調べてみると、これで茨城まで行けることがわかった。
             まず石巻線で小牛田駅に行き、そこから東北本線に乗り換えて
             茨城へ行くのだ。いつもは仙石線で仙台駅で乗り換えているから、
             それは初めて乗る路線で、ちゃんと行けるかちょっと不安だった。>>;
          div ~a:[a_class ["basis"]]
              <<根拠: 「$ac "http://ja.wikipedia.org/wiki/%E6%9D%B1%E6%97%A5%E6%9C%AC%E5%A4%A7%E9%9C%87%E7%81%BD%E3%81%AB%E3%82%88%E3%82%8B%E9%89%84%E9%81%93%E3%81%B8%E3%81%AE%E5%BD%B1%E9%9F%BF" "東日本大震災による鉄道への影響 - Wikipedia"$」, 2014年9月11日アクセス.>>;
        ];
    p <<　宮城と茨城はすごく離れているから、わたしは明日の
       朝早くに出発することにした。>>;
    p <<　こうしてわたしは5月20日の午後、茨城のせい爺ちゃんの家に
       着いた。せい爺ちゃんとせつ婆ちゃんはずっと連絡がとれないので
       心配していたらしく、わたしが現れると泣き崩れた。お父さんと
       お母さんのことを聞かれたので、わたしはことの次第を話した。
       せつ婆ちゃんは、「きっとどこかで生きているよ」という、子供の
       わたしでもわかる嘘で慰めてくれた。せい爺ちゃんはわたしのことを
       快く受け入れてくれた。こうして、わたしはせい爺ちゃんの家で
       暮らすことになった。>>;

    h3 <<2012年>>;

    p <<　2011年の6月、わたしは小学6年生として、
       茨城の小学校に転入した。それからの半年は、
       クラスにうまくなじめず、あまり楽しくなかった。
       友達がいないわけではなかった。転校生が珍しいのか、わたしに
       声をかけてくれる友達はたくさんいた。休み時間には、わたしの机の周りに
       女の子が集って、プロフィール帳を書かされたり、交換日記を
       渡されたりした。それは半分くらいは楽しかった。でも同じくらいわたしの
       ことを妬んだりいじめてくる奴もいた。交換日記に悪口を書かれているのを
       見たときはつらかった。いつかTVで見たような、上履きを隠すなんてことを
       されたときはほんとうに悲しかったし、先生にチクる気も失せて、その日は
       そのまま靴を履いて家に帰った。その次の日来ると上履きは元に戻っていて、
       とりあえず問題は解決した。犯人がだれかはついにわからなかったけど。>>;
    p <<　それに、なによりも、お母さんやお父さんが死んじゃったこと、
       さいんちゃんや、友達のほとんどが死んじゃったことが、ほんとうに
       ショックで、ずっと引きずっていて、毎日のように夢に見るし、
       すぐにそれをまったくなかったことのように忘れて新しい学校生活を
       楽しむなんて、できなかった。だから学校は休みがちだったし、
       自然と成績も悪くなったり、友達に悪口を言われたりして、あまり
       学校に行く気になれなかった。>>;
    p <<　もちろん学校に行きたくないわけではなかった。新しい友達には良い人も
       いっぱいいたし、わたしは彼女たちと話したかった。学校を休んでも、
       交換日記は付けて、後日は友達に届けるためにちゃんと学校へ行った。>>;
    div ~a:[a_class ["authentic"]]
        [
    p <<　ただ、
       小学生の頃はクラスの1/4くらいの友達が携帯電話を持っていて、
       その子たちは交換日記じゃなくてメールでコミュニケーションを
       とっているらしくて、わたしは羨ましかった。>>;
    div ~a:[a_class ["basis"]]
        <<根拠:
         「$ac "http://www8.cao.go.jp/youth/youth-harm/chousa/h24/net-jittai/pdf/kekka.pdf" "平成24年度 青少年のインターネット利用環境実態調査"$」,
         2014年9月12日アクセス.>>
        ];
    p <<
       　それから2012年の4月にわたしは茨城の中学校に上がった。
       初めての制服！　わたしは制服を着れたことがなによりも嬉しかった。
       茨城の小学校の半年でできた数少ない友達はみんな別の中学に
       行ってしまったので、わたしの交友関係はふたたびリセットされ、
       1から友達をつくらねばならなかった。>>;

    p <<
       　中学では転校生という属性も失っていたので、なにもせずとも
       みんなのほうから話しかけてくる、なんてことはなかった。入学式のあと、
       最初の数日で、みんな仲良くし始めているのを見て、わたしは焦った。
       早いとこ友達をつくらないと、1年間孤立して過ごすことになる。>>;
    p <<
       　ある日の昼食の時間、わたしは髪をお団子にしていてメガネをかけた
       大人しい子の机まで椅子を運んだ。彼女はいつもひとりでお弁当を食べていた。
       わたしは、特別彼女と話したいわけではなかった。
       ただひとりがこわくて、仲間が欲しかった。だから彼女に話しかけてみる
       ことにしたのだけど、内心、彼女の目の前に来るだけで心臓がばくばく
       言っていた。いきなり話しかけて嫌じゃないかな、とか、変に思われないかな
       、とかいろいろ考えて、血が頭にのぼって、たぶん、わたしの顔は
       真っ赤になっているだろうと思った。わたしは勇気を振り絞って、
       彼女に話しかけた。>>;
    p <<
       「ここで食べていい？」>>;
    p <<
       　女の子はぎょっとした。当然だ。わたしと彼女は話したこと
       どころか、名前も知らない。彼女はおどおどと言った。>>;
    p <<「ど、どうぞ。邪魔なら、わたし、別のとこに行きますけど」>>;
    p <<「いや、そんなことはしなくていいから」>>;
    p <<　それからしばらくの沈黙。わたしはべつになにか話があったわけじゃない。
       わたしはお弁当を広げようとしたけど、机が狭くてうまく広げられなかった。
       彼女はお弁当を端のほうに移動してくれた。わたしはお弁当を広げ、
       食べ始めた。>>;
    p <<　まだ胸がどきどきしてて、わたしは彼女と目を合わせることなんて
       とうていできそうになかった。>>;
    p <<　どうでもいいけど、せつ婆ちゃんのお弁当はお母さんのご飯より
       数倍美味しい気がする。なんて思ったら罰があたりそうだけど。>>;
    p <<　しばらく黙々と食べたあと、彼女は箸を止めて自己紹介してきた。>>;
    p <<「わたし、大野$rb "香薇夢" "からむ"$……っていいます。
       香りの香、薔薇の薇、それと夢っていう字。あなたは？」>>;
    p <<「新田$rb "恋羽理" "こうり"$。$rb "恋" "こい"$、$rb "羽" "はね"$、
       理論の理」>>;
    p <<「あの、新田さん、なんていうか……」>>;
    p <<　そこで会話は中断される。自己紹介だけして、黙々と食べる
       2人。>>;
    p <<　食べ終わって、昼休みも終わりが近づいてきた。わたしは
       「それじゃ、もう行くね」と言ってその場を離れた。>>;
    p <<　息ができない時間だった。わたしはなにを言えばいいのかわからなかった
       し、どう思われているのかもわからなかった。もしかしたら、
       もう来ないでほしいと思われているかもしれない。去ってくれて
       せいせいしたと思われてるかも。そんな結論の出ない無意味なことに
       考えを巡らせながら、わたしは掃除を始めた。>>;
    p <<　掃除中、箒で廊下を掃いていると、大野さんが箒を抱えて
       わたしのところまで来た。>>;
    p <<　大野さんは目を逸らしつつ言った。>>;
    p <<「新田さん、お昼は、ありがとうございました。嬉しかったです。
       まだ、だれとも、話せてなかったので……」>>;
    p <<　その言葉を聞いて、わたしも嬉しかった。彼女はわたしを
       拒否してはいなかったのだ！　それでわたしはほっとして、言った。>>;
    p <<「ううん、大野さん、わたしも、この先ずっと友達ができなかったら
       どうしようかって不安になっていたところだったの。だからお互い様よ」>>;
    p <<　こうしてわたしと大野さんは出会った。>>;
    p <<
       　大野さんは大人しい子で、インドア派であり、
       いつも図書館で小説を借りて読んでいるらしかった。
       恋愛小説とのことだった。わたしは小学生の頃は少女漫画を
       読んでいたけど、中学生にもなって少女漫画を読むのは恥ずかしいこと
       だと思ったので、わたしも恋愛小説を借りて読んでみた。
       すると、わたしと大野さんは趣味が合うらしく、わたしは
       それにハマってしまい、それから何度も借りては読ませてもらった。
       漫画に比べて小説は、想像力を使って読まないといけないので、
       大人の読み物だと思った。
       最初はNLやTLを読んでいたけど、あるときBLやGLを知ってしまって、
       戻れない感じがした。>>;
    p <<
       　2012年8月、なにか大きなイベントがあるということで、
       わたしは彼女に連れられて東京に行った。これがわたしとコミケの初めての
       出会いだった。
       >>;
    p <<
       　コミケにはわたしの知らない世界が広がっていた。
       東京に行くのも初めてだったので、それだけでも楽しみだったし、
       たくさんのアマチュア作家が同人誌や同人グッズを出しているようすは、
       なんだか、わたしでもできそうという気にさせてくれて、わたしも
       小説を書いてみたくなった。>>;
    p <<　からむちゃんはひょっとしたら小説とか書くんじゃないのかと思って、
       たずねてみたけど、からむちゃんは小説を読むだけと答えた。>>;
    p <<　ある日、からむちゃんがわたしにたずねてきた。>>;
    p <<「ねえ、コーリちゃんのお誕生日っていつ？　お祝いしたいな」>>;
    p <<「ごめんね。わたし閏日生まれだから、中学のあいだは誕生日来ないの。
       次の誕生日は2016年2月29日。高校に入ってからだよ。
       そのときにお祝いしてほしいな」>>;
    p <<　2012年12月もわたしは$c85#link$に行った。>>;
    p <<
       　わたしは常にからむちゃんと一緒だった。わたしの中学時代の思い出には
       常にからむちゃんが関わっていた。$c86#link$で、内容に自信があるわけ
       じゃなかったけど、わたしはからむちゃんと一緒に小説をだした。
       ノートに20ページの小説を書き、せい爺ちゃんにコピー機を買ってもらって、
       500枚入りのB5コピー用紙と
       インクを買って、両面印刷で1枚に4ページ印刷し、それを半分に切って
       ホチキスで止めて本をつくった。表紙と裏表紙合わせて1冊につき
       6枚のコピー用紙で
       つくれた。ぜんぶで80部刷った。それでコミケに参加したのだけど、
       けっきょく、からむちゃんが買ってくれた1冊とだれか男の人が買ってくれた
       1冊で計2冊しか売れなかった。でも、それで満足だった。
       からむちゃんと一緒にやったということが重要だった。
       $c87#link$にも、$c88#link$にも、わたしたちは一緒に参加した。
       中学3年生になる頃には、小学生のときの
       不幸なんてどうでもいいと思えるくらい、わたしは充実していた。>>;

    h3 <<2014年>>;

    p <<
       　2014年の後期、わたしとからむちゃんは受験生で、
       同じ高校に行くため受験勉強で忙しかった。放課後はいつも残って
       一緒に勉強していたし、休みの日はどちらかの家に招いて晩まで
       勉強した。>>;
    p <<
       　あの日の放課後、わたしとからむちゃんは夕日を背に
       教室で勉強していた。>>;
    p <<　からむちゃんは恥ずかしそうに言った。>>;
    p <<「勉強しないと一緒の高校に行けないかも。
       わたし、しっかり勉強して、一緒の高校に入って、
       はやくコーリちゃんのお誕生日をお祝いしてあげたいんだ」>>;
    p <<
       　からむちゃんは小説を読むので国語とかが得意そうだったけど、
       意外なことに、この2年間で数学の本をいろいろ読んだらしく、
       似合わない数学が得意な少女に成長しており、
       わたしはいつも教えてもらっていた。>>;
    p <<
       　わたしが展開と因数分解がわからないということを言うと、
       からむちゃんはノートに式を書いた。>>;
    blockquote
      <<
       $img ~a:[a_height 24] ~src:"factorization.png" ~alt:"" ()$
       >>;
    p <<「これだけだよ。なにが難しい？」>>;
    p <<「えーっと……ぜんぶ？」>>;
    p <<「この式の左辺から右辺を求めることが展開。
       右辺から左辺を求めることが因数分解」>>;
    p <<「そんな説明じゃちっともわかった感じがしないよ。
       そもそもaやbになにが入るのかわからないし……」>>;
    p <<「aやbになにが入るのかわからない？　aやbはいろんな数字を代表してる
       もので、どんなものでも入れていいんだよ。
       1でも2でも3でも……65536でも、もっと大きな数でもなんでも」>>;
    p <<「でもこれって2次方程式の場合だけだよね。3次方程式とかあるじゃない。
       ひょっとして高校では4次方程式とか5次方程式とかあるんじゃないの？　
       そんなに覚えられない」>>;
    p <<　するとからむちゃんは別の式を書いた。>>;
    div ~a:[a_class ["authentic"]]
        [
    blockquote
      <<
       $img ~a:[a_height 24] ~src:"binomial-theorem.png" ~alt:"" ()$
       >>;
    p <<　からむちゃんは意地悪そうにニヤッとした。>>;
    p <<「二項定理。n次方程式をこれだけで展開と因数分解のどちらもできる
       よ。これだけ覚えておけばいいんじゃない？」>>;
    div ~a:[a_class ["basis"]]
        <<根拠: 結城浩 『数学ガール』 （2007）
            ソフトバンククリエイティブ.>>;
        ];
    p <<「そんなの学校で習わないよ！　冗談きついってば」>>;
    p <<「とりあえずパスカルの三角形を書いてみようよ。やり方は教えて
       あげるから」>>;
    p <<「いい！　無理！　わかんないから」>>;
    p <<「数学ガールって本に書いてあるよ。図書館で借りてみて」>>;
    p <<「からむちゃんが読むような数学の本をわたしが読んで理解できるとは
       思えないんだけど……」>>;
    p <<
       　反対に、からむちゃんは地理や歴史や公民は大の苦手で、
       都道府県の名前さえ、茨城と北海道以外は言えない有様だった。
       こっちはわたしが教えていた。>>;
    p <<
       　でも、わたしたちには、勉強より重要なことがあった。そう、$c89#link$だ。
       夏コミと冬コミには毎年参加している。だから、わたしたちのあいだでは、
       もはや恒例行事で、友情の確認のような意味を持ってさえいた。
       わたしは切り出した。>>;
    p <<「そんなことより、今年の冬コミどうする？　参加する？　しない？」>>;
    p <<「その質問、何度目？　まだ決められないよ」>>;
    p <<「重要なことなんだよ。中学最後のコミケなんだから。
       思い出より勉強が大事？」>>;
    p <<「3年間一緒に過ごすことより3日間一緒に過ごすことのほうが大事？　受験
       勉強に余裕があったら行くよ」>>;
    p <<「はやく決めてよね」>>;
    p <<
       　けっきょく、わたしたちはその冬の12月に、冬コミに参加した。
       わたしは数学がぜんぜんダメだったし、からむちゃんも苦手な科目は
       ダメダメだったけど、どうせ3日間勉強した程度で成績に大きく影響する
       ことはないだろうし。>>;
    p <<
       　夏コミに比べて冬コミはすこぶる快適だ。寒いのは厚着すればいい。
       暑くなってきたら脱げばいい。夏は本当に生死にかかわるレベルの暑さだ。>>;
    p <<
       　わたしとからむちゃんは揃って列に並んでいた。この寒いなか
       露出度の高いコスプレをしている人を見るのも3年目。からむちゃんは
       5年目らしい。>>;
    p <<
       　並んでいるとき、からむちゃんの手がわたしの指に触れた。
       最初は事故だと思った。でも彼女は指を絡めるようにしてわたしの
       手を握ってきたのだ。わたしはびっくりして思わず手を離して叫んだ。>>;
    p <<「ちょ、さすがにそれはまずいって！　恋人じゃあるまいし」>>;
    p <<　からむちゃんはなにも言わずそっぽを向いた。>>;
    p <<　わたしも目を逸らしつつ言った。>>;
    p <<「まあその、わたしたちの仲がいいというのは、お互いの認識だと
       思うけど？　でもさすがに同性でそういうことをするのは、きしょいって
       言うか……」>>;
    p <<　わたしはちらっとからむちゃんを見た。>>;
    p <<　からむちゃんは悲しそうにうつむいていた。>>;
    p <<　わたしはどうしたものかと思った。気まずい。ここでなにもしないわけには
       いかないだろう。わたしは思い切ってからむちゃんの手を握った。>>;
    p <<　顔をあげて満足そうに笑うからむちゃん。>>;
    p <<　わたしはそっぽを向いてこそばゆい感じで言った。>>;
    p <<「まあ嫌じゃないもの。からむちゃんがしたいっていうなら」>>;
    p <<「ありがと。じつは、わたしも楽しみにしてたんだ。中学で最後のコミケ
       だもの。最後にとびきりの思い出をつくりたいの」>>;
    p <<　嬉しかった。そう言ってくれて。わたしは大声で言った。>>;
    p <<「でも、恋人つなぎはダメだから。それはさすがに倫理的にほとんど厳しい
       から」>>;
    p <<
       　それから、わたしたちは買いたいものを買い、
       帰りにビッグサイトのアニメキャラクターがプリントされた
       自動販売機の前で一休みしていた。
       からむちゃんが水筒を家に忘れてきてしまったらしく、
       ウーロン茶を買いにきたのだ。わたしは自分の水筒があった。
       わたしは優しく叱った。>>;
    p <<「最後のコミケでこんなドジをするなんて」>>;
    p <<　からむちゃんは嬉しそうに答えた。>>;
    p <<「でも、これも思い出だよ」>>;
    p <<　そこで、からむちゃんはウーロン茶を買って、ごくごく飲んだ。
       するとからむちゃんは飲んだものをぜんぶ吹出してしまった。
       わたしはくすくす笑った。>>;
    p <<「どうしたの？」>>;
    p <<「なんかすごい変な味がする。腐ってるみたいな」>>;
    p <<　その直後、館内放送が流れた。>>;
    broadcast
      <<〝ここ10分以内で館内で男女合わせて3名が食中毒のような症状を
       起こしました。3名とも館内でコーラ、三ツ矢サイダー、ウーロン茶を
       購入していたことから、館内の飲食物が原因と考えられています。
       館内で購入した飲食物にはぜったいに口をつけないよう
       お願い申し上げます〟>>;
    p <<
       　ついいましがたウーロン茶を買ったばかりだ。
       わたしとからむちゃんは目を合わせて汗を流した。>>;
    p <<　からむちゃんが青ざめて言った。>>;
    p <<「飲んじゃったんだけど」>>;
    p <<「って言っても、食中毒だからって死ぬわけじゃないし。
       でもそれは捨てたほうがいいかもね」>>;
    p <<
       　そのときいきなり、からむちゃんは
       ぐらりと揺れ、その場に倒れてしまった。何事かと思って、
       わたしはしゃがみ、からむちゃんに呼びかけた。>>;
    p <<「からむちゃん？　気分でも悪いの？」>>;
    p <<　からむちゃんは過呼吸になり、しゃべれそうになかった。>>;
    p <<　わたしはこわくなった。食中毒にしては急過ぎる。>>;
    p <<　わたしは大声で叫んだ。>>;
    p <<「だれか！　だれか助けて！　友達が気分が悪いみたいなんです」>>;
    p <<　わたしはからむちゃんの手を握り、離さなかった。
       「だいじょうぶだからね」と何度も言った。>>;
    p <<　それからしばらくして、過呼吸が収まったみたいだった。
       眠ったように目を閉じ、安静になった。
       わたしはちょっとほっとして、彼女に話しかけた。>>;
    p <<「からむちゃん？　だいじょうぶ？」>>;
    p <<　でも、真逆だった。不安になって唇に指をあててみると、
       からむちゃんは息をしていなかった。まぶたを開けると、
       目がぐるんとまわっていて、わたしはぞっとした。>>;
    p <<　わたしはからむちゃんの指に指をからませ、その手をぎゅっと握った。>>;
    p <<「恋人つなぎ、したよ。どう？　感想は？　女同士で……なんて……
       答えてよ、からむちゃん」>>;
    p <<　それから連絡を受けたスタッフが駆けつけてくれた。>>;
    p <<　わたしはただ友人の無事を祈って待っていた。>>;
    p <<　でも、からむちゃんが帰ってくることは、なかった。>>;
    p <<　わたしはからむちゃんの葬式に参加した。
       葬式は年末までに終わった。とてもあっけなかった。
       楽しい思い出をつくるつもりが、最悪の思い出になってしまった。>>;
    p <<　TVで見て知った。これは愉快犯による無差別殺人で、
       犯人はシアン化合物をビッグサイト内の自動販売機内のペットボトルに
       いれたらしい。当然、自販機の補充係が真っ先に疑われたけど、
       証拠が見つからなかったとのことだった。シアン化合物のようなもの
       を自販機の補充係が買ったり盗んだり、所有したりしていたという
       記録や証拠はいっさい見つからなかった。こうして犯人は捕まらず、
       事件は迷宮入りとなるかに思われた。>>;
    p <<　わたしは、どうせその自販機の補給係が犯人なのに、なぜもっと深く
       捜査しないのか、どうして証拠がないというくらいで逃がしてしまうのか、
       強い怒りを感じた。犯人は、その自販機の補給係だ！　それ以外考えようが
       ない。>>;
    p <<　この事件はコミケシアン化合物無差別殺人事件と呼ばれた。
       合計で4人の男女が犠牲になった事件だった。>>;
    p <<　わたしは犯人が許せなかった。からむちゃんを奪った殺人犯をわたしは
       殺したかった。わたしは激しい憎悪にかられ、いつか必ず犯人に復讐して
       やると心に誓った。かといって、わたしはなにをできるでもなく、なにをする
       でもなく、ただ落ち込むだけだった。>>;

    h3 <<2017年>>;

    p <<　2015年の4月には茨城の高校に入学した。>>;
    p <<
       　なにか部活に入りたいわけじゃなかったし、
       からむちゃんの死からまだ立ち直れていなくて、
       とても部活なんて気分じゃなかったので、わたしは
       部活には入らなかった。>>;
    p <<
       　高校に入ってすぐ、6月に進路希望の調査があった。
       理系の勉強は苦手だったので文系に進むことは前から決めていた。
       >>;
    p <<　自分で言うのもなんだけど、わたしはまじめで、
       わたしの成績はおおむね良かった。数学以外は。
       先生に、わたしの成績なら、数学さえなんとかすれば
       東京大学も狙えると言われた。
       それでわたしは自信を持って、わたしは東京大学の法学部を目指して
       勉強を始めた。>>;
    p <<　からむちゃんを殺した犯人を、わたしは一生許すことはないだろう。
       犯人を直接捕まえることはできないかもしれない。でも、世の中には、
       からむちゃんを殺した犯人と同じくらいの極悪人がたくさんいるのだ。
       からむちゃんのような被害者がもう二度とでないように、
       犯罪者をぜったいに逃がさないために、いつか検事になるんだぞと、
       わたしは強く誓った。>>;
    div ~a:[a_class ["authentic"]]
        [
    p <<
       　高校に入って半年もすると、友達のほとんどがだれかと
       デートをしたりキスをしたりその先をしたり、恋愛経験を積む
       ようになっていた。わたしも、友達に恋バナを聞かされるようになった。
       わたしはだれかと付き合いたいわけじゃなかったけど、だれとも
       付き合わないのも恥ずかしかった。かといって、わたしはなにか行動
       するわけでもなかった。
       >>;
    div ~a:[a_class ["basis"]]
        <<根拠: 「$ac "http://www.jase.faje.or.jp/jigyo/youth.html"
         "第7回青少年の性行動調査"$」,
            2014年9月10日アクセス.>>
        ];
    (*p <<
       　夏休みが明けたあと、後期、わたしは部活を変えて料理部に入った。
       料理がうまいとモテると思ったからだ。>>;*)
    p <<　2016年2月29日、誕生日に、わたしはお婆ちゃんに
       $firefox_os#link$搭載のスマホを買ってもらった。>>;
    p <<　けっきょく、からむちゃんにお祝いしてもらうことはできなかったな。
       わたしはそれを思い出すと気分がどん底に落ちる気分だった。
       わたしはこのスマホをからむちゃんだと思って、大切にすることにした。>>;
    p <<　ともあれ、わたしはスマホを手に入れ、はじめてインターネットというもの
       を使った。これがわたしのインターネットとの初めての出会いだった。>>;
    p <<
       　スマホを買って、インターネットをはじめたけど、
       わたしはインターネットよりTVを見ている時間のほうが多かった。>>;
    p <<
       　この頃、WindowsやMacといった
       メジャーなOSではなく、$ubuntu#link$という聞いたこともないOSを搭載した
       パソコンのCMを見ることが多かった。聞くところによるとUbuntuを
       搭載したパソコンはすごく安いらしい。安物は粗悪品で、値段が高いものは
       高品質だとわたしは考えていたので、わたしは自分で買うなら
       Macがいいなと思っていた。>>;
    p <<　2017年2月、情報処理の授業で必要だったので、
       Ubuntu搭載のラップトップを買ってもらった。
       Ubuntuにした理由は、それがいちばん安いからだった。
       わたしはすこしばかり残念に思いつつも、自分でお金を払っている
       わけではないので我慢することにした。この頃から、わたしは
       自分でバイトしてお金を稼ぎたいと思うようになった。>>;
    p <<　2017年の4月、わたしは高校3年生になった。
       進級と同時にわたしは飲食店でウェイトレスとしてバイトを始めた。
       せい爺ちゃんやせつ婆ちゃんに頼らず、
       自分でお金を稼ぎたいという思いがあった。
       また、高校3年生で、料理部に入った。
       理由はもしかしたらバイトで役に立つかもしれない
       というのと、男子にモテたいからだった。クラスの8割か、
       もしかしたら9割くらいの女子は一度はだれかに告白された経験が
       あるらしく、わたしは少数派であることをはっきりと認識して
       焦っていた。>>;
    p <<　料理部で不思議な年下の男の子に出会った。
       料理部はほとんど女子なのだけど、唯一男子が入部してきたのだ。
       かれはわたしより2つ年下の高校1年生だった。
       だけど、かれは料理部のだれよりも料理がうまくて、
       見事に盛りつけた、味も見た目も完璧な、お店でだされるみたいな
       料理をつくって、部の人気者になった。>>;
    p <<
       　一方で、わたしは女なのに料理がまったく下手だった。
       オムライスは何度つくってもきれいには盛りつけられないし、
       お好み焼きもぐちゃぐちゃになっちゃうし、
       卵焼きもうまく巻けたためしがなかった。
       わたしにつくれた料理は唯一そうめんとかけうどんだけだった。>>;
    p <<　文化祭では炊き込みご飯とパウンドケーキをつくって販売するらしい
       のだけど、これではとても売れるものがつくれるとは思えない。
       だれかに教えてもらわないと。
       背に腹は変えられず、4月のある日、わたしは
       かれに話しかけた。>>;
    p <<「あっ、あの……」>>;
    p <<　かれはぶっきらぼうに答えた。>>;
    p <<「なに、ていうかだれ」>>;
    p <<「わっ、わたし、新田恋羽理……。
       恋、羽、理論の理」>>;
    p <<「冬野$rb "夏花" "なつばな"$。夏の花」>>;
    p <<「オムライスの作り方、教えてほしいんだけど。
       ほら、前にきれいに盛りつけてたじゃない。
       あれってどうやるの」>>;
    p <<　かれは不機嫌そうにそっぽを向いた。>>;
    p <<「ほかの人に教えてもらえよ」>>;
    p <<「いちばんうまいのがきみなんだよ」>>;
    p <<　こうして、わたしは冬野くんにオムライスの作り方や、
       ほかのいろいろな料理の作り方を教わることになった。>>;
    p <<　冬野くんは無口だけど教え方はていねいで、わかりやすく教えてくれた。
       おかげで1週間もするとわたしはオムライスの作り方をほとんど
       マスターしたと言ってよかった。>>;
    p <<　それから、文化祭に向けて、わたしと冬野くんの特訓が始まった。
       お好み焼きをつくったり、卵焼きをつくったり、
       ほかにもペペロンチーノをつくったり、肉じゃがをつくってみたり、
       ピラフをつくってみたり、ドリアやグラタンをつくってみたり……。
       うまくつくれて嬉しいことはもちろん、思い切り焦がして笑い合ったり、
       見た目はとんでもないけど味はよかったことに驚いたり、
       逆にうまくつくれたと思ったら口に運んだとたん2人で我先にとトイレに
       かけ込んで吐き出したり。>>;
    p <<　いつしか、わたしとなつばなくんの仲は切っても切れないものになって
       いた。わたしは、からむちゃんとはじめて出会ったときのことを思い出して
       いた。からむちゃんとの出会いも、最初はなんでもないことで、でも
       だんだん、彼女はいなくてはならない存在になっていた。>>;
    p <<　2017年5月、文化祭当日は全体としてうまくいった。
       やり遂げたという感じがして、わたしは嬉しかった。
       終わってみると、あっけなかったとも思った。>>;
    p <<　文化祭が終わってからは、受験勉強のために、部活はやめた。
       なつばなくんとは個人的に電話番号やメールアドレスを交換していたので、
       連絡はとれる状態だった。>>;
    p <<　それから秋頃に、LINEに登録していると個人情報が盗まれている
       だとかいうニュースが、TVとネットの両方で流れた。わたしはLINEが
       流行っているということは知っていたけど、なんだか悪口を簡単に
       書けそうなシステムが好きになれなくて、ツイートがみんなに見れることで
       悪口を書きにくいシステムになってるTwitterが好きだったので、
       LINEは敵視していたから、なんとなく勝った気になった。>>;
    p <<　夏休みに、わたしとなつばなくんは一緒に映画を見に行った。
       $star_wars_ep8#link$という映画だ。エピソード7より以前のものは
       見ていなかったから内容はよくわからなかったけど、それでもよかった。
       なつばなくんと一緒に行ったということが重要だった。>>;
    p <<　そのあと、わたしは勉強のため、なつばなくんとの連絡は絶った。
       なんたって東大の法学部を受験するのだ。滑り止めもいくつか受ける
       つもりだったけど、かといって第一志望を手を抜いて受験するわけが
       なかった。>>;
    p <<　それから半年間の勉強。2018年2月に入試試験。入試試験を追えてから
       数週間は時間が余ったので、わたしはなつばなくんにメールした。>>;
    blockquote
      <<［入試終わった！　あとは発表を待つだけ。うう〜、緊張する。
       今度の土曜日と日曜日、うちに来ない？　スター・ウォーズのエピソード1
       からエピソード7までレンタルして見ようよ］>>;
    p <<　それから2018年3月、合格発表。わたしは心臓をばくばくさせて見に行った。
       番号を探す。受かってる自信はなかった。自己採点して何度も落ち込んでいた
       から。>>;
    p <<　杞憂だった。わたしは受かっていた！　こうしてわたし東大の法学部に
       受かり、わたしは喜びをメールでなつばなくんに伝えた。>>;
    h3 <<2019年>>;

    p <<　2018年4月、わたしは大学に入学した。>>;
    p <<　入学式の朝、わたしは部屋の棚にかけてある
       お父さんとお母さんとさいんちゃんと
       からむちゃんの写真の前で、
       正座をして、目をつむって手を合わせて
       小さな声で言った。>>;
    p <<「お父さん、お母さん、
       さいんちゃん、からむちゃん、わたしもついに大学生になったよ。
       東京大学の法学部。わたしは文系の大学に来たけど、
       もし生きていたら、からむちゃんは理系に行ってたかもね。
       じゃ、行ってくるね」>>;
    p <<　18歳になったいまでも、からむちゃんのことは忘れていない。
       まだ捕まっていないコミケシアン化合物無差別殺人事件の犯人、
       つまりからむちゃんを殺した殺人犯のことをわたしは許していない。
       もし犯人が逮捕されたら面会して謝らせてやる。もし謝らなかったら
       何度でも、謝るまで行く。それくらいには憎しみを抱いている。>>;
    p <<　法学部に入ったわけは、からむちゃんのためだ。からむちゃんとは
       もう4年も話していないし、これからも話すことはないだろうけど、
       わたしの人生は、からむちゃんのおかげでここまで来れた。>>;
    p <<　さいんちゃんのことは、正直言うと、あまり覚えていないのだけど、
       さいんちゃんのことをさっぱり忘れたというわけでもなく、わたしは、
       彼女にずっと感謝している。記憶は薄れてしまっていて、正直彼女の
       しゃべりかたは思い出せそうにないのだけど、彼女に対する感謝は、
       むしろ日に日に増えている。毎日毎日、年齢と一緒に彼女に対する
       敬愛は深くなってゆく。>>;
    p <<　わたしの命がいまここにあるのは、さいんちゃんのおかげだ。
       もしさいんちゃんがいなかったら、わたしは、いまここにいなかった。>>;
    p <<　入学式を終え、何度か講義を経験した。>>;
    p <<　2019年の春頃、新しくできた女友達から、
       どうやら最近はLINEよりもUSSMが流行っているらしいということを
       聞いた。>>;
    p <<　USSMは、UnSealed Social Mailingの略らしい。
       2017年の秋頃に、LINEに登録していると個人情報が盗まれるとかいう
       ニュースが流れたときに、たくさんの人がLINEをやめてUSSMに
       移ったとのこと。>>;
    p <<　LINEをしてる人がやってるSNSなんて、どうせろくでもないものなんだろう
       と思いながら、ちょっと気の迷いでアプリをダウンロードし、
       起動してみると、ログインもなしにいきなりホームが表示されて、
       フィルタと呼ばれる、Twitterのフォローみたいな機能でタイムラインを
       つくれたので、わたしはいつの間にかいろいろ試してハマっていた。>>;
    p <<　USSMではツイートという言葉ではなく、メールという言葉で
       投稿の単位を表す。>>;
    p <<　USSMには、アカウントやユーザという概念が存在しない。
       簡単に言えば完全に匿名な掲示板のようなものだ。
       記名はできるけど、他人の名前を記名することもできるし、かつ
       それを判別する手段はないので、なりすましは簡単にできる。>>;
    p <<　それで、フィルタというのは、本文に含まれるキーワードや、
       タグ、投稿者の記名した名前でメールを絞って、それに該当する
       メールが投稿されたときにメールボックスに受信する、という機能。>>;
    p <<　それで投稿者の名前をフィルタでメールボックスに受信すれば、
       Twitterのタイムラインみたいなものができあがる、というわけだ。>>;
    p <<　もちろん、USSMの名前はなりすましが簡単だから、
       それが本当に本人のものであるという保証は、ほとんどない。>>;
    p <<　つまりUSSMは完全に人間の良心に任せて運営されているのだけど、
       どういうわけか、それでだいたいうまく動いている。>>;
    p <<　なりすましっぽいメールは、本文を見ればだいたいわかる。
       メールが本人のものであるかどうかというのは、その人はこんな
       投稿しないだろうな、という直感で、だいたいわかってしまう。>>;
    p <<　そういうものを見つけたときのために、メール単位でスパム報告
       というものがあり、報告すると点数がつく。点数がつくだけで、
       それで運営がどうのこうのするわけじゃない。点数が高いとそれは
       なりすましというわけだ。
       これでなりすまし認定することができる。
       もちろん報告するほうも何度も報告したりできるから
       その報告自体も偽装できるのだけど、そんなことをする人はあんまり
       いないので、だいたいうまく動いている。>>;
    p <<　ふだん温和な人が急に過激な右派の発言をしたときなんかは、
       だいたいなりすましなので、報告する。>>;
    p <<　だいたいなんとか動いているとか、使っている人の良心で
       動いている感じが、なんとなく自由な気がして、わたしはUSSMが
       好きになった。>>;
    p <<　わたしはUSSMで、見かけた名前を片っ端からフィルタしまくった。>>;
    p <<　2019年12月、TVやネットで、
       コミケシアン化合物無差別殺人事件の話題が盛り上がっていた。
       あの4人が死んだ事件からちょうど5年ということで、1日だけだけど、
       だれもがあの事件を思い出していた。>>;
    p <<　その日、わたしはひどく気分が悪くなった。
       あの事件についてよく知りもしないくせに上っ面を見ただけで
       知ったかぶった自称知識人が、あの事件の原因や今後の展開について、
       さまざまな根拠と検証をもとに、持論を展開しているようすが、
       大量にリメールされてきたのだ。>>;
    p <<　わたしは当事者として、大量に罵倒のメールを送りたかったけど、
       我慢した。ネットでそういうことをすれば、炎上してもっと気分が
       悪くなる。ネットはストレス発散の道具にはならない。
       わたしはからむちゃんと一緒にコミケで買った同人誌を読んで
       心を落ち着けた。>>;
    p <<　その日、USSMで気になるメールを目にした。
       なんと、コミケシアン化合物無差別殺人事件のとき、
       ビッグサイトで自販機の補給係をしていたという男性が、
       自分の経験を声高に自慢していたのだ。>>;
    p <<　最初はなりすましかと思った。でもよく読んでみると、
       内容があまりにリアルだったし、
       たとえばアニメのキャラがプリントされた、
       からむちゃんがウーロン茶を買った自販機を開いた状態の写真を証拠として
       アップロードしていたりして、本人としか思えなかった。>>;
    p <<　わたしは自販機の補給係が犯人だと思っていたから、こう思った。
       ついに会えたね、からむちゃんの仇、と。わたしは激しい怒りを感じ、
       すぐさまメールでかれを軽蔑したかったけど、何度かメールを書いては
       消し、書いては消しを繰り返したあと、やめた。実際には送信しなくても、
       怒りの言葉をフォームに入力しただけでだいぶ落ち着いた気がしたし、
       ここで怒りをぶつけたって、なんにもならない。>>;
    p <<　わたしはどうすべきなのか考えた。落ち着いて。
       それから、わたし自身がどうしたいのかも。わたしは、かれを捕まえたい。
       命を奪いたいとまでは思わない。その気持ちは5年前にはあったけど、
       いまはだいぶ薄れて、そこまでではない。でも有罪にはしたい。
       どうにかかれを捕まえる証拠を探して、かれを刑務所に送ってやりたい。>>;
    p <<　わたしは何度か深呼吸をして、考えた。これはチャンスだ。かれと
       連絡先を交換して、オフで会い、酒にでも酔わせて、
       かれに自白をさせられないだろうか？　ボイスレコーダーでそれを
       録音すれば、もしかしたら、証拠として裁判所で使ってもらえるかも
       しれない。>>;
    p <<　わたしは、かれ宛にUSSMでメールを送った。かれの
       名前は$rb "晴" "はる"$とかいった。>>;
    blockquote
      <<［晴さん、コミケシアン化合物無差別殺人事件のとき、
       自販機の補充係をしていたんですってね！　リメールで見ました。
       じつは、わたし、あの事件を起こした人の大ファンなんです。
       だって、4人も殺しておいて、いまだ捕まっていないんですよ？　なんて
       クールなんでしょう。カッコいいと思いませんか？］>>;
    p <<　わたしは、その前後でいかにも女子大生らしいメールを書いた。
       ふだんはしないけど、わざとカレンダーを写して、
       顔を隠した自分の写真を撮ってアップロードした。
       なんとなく、わたしは晴さんのことを初老の男性だと思っていた。もし
       そうなら、このいかにも女子大生らしいメールを見て、かれは
       うまく釣られてくれるはずだ。>>;
    p <<　思ったとおり、かれはわたしのメールに反応した。>>;
    blockquote
      <<［まあ殺したのはおれじゃないけどな。でも間接的にあの事件に関与
       したことは自分でも面白い経験だったと思っているよ］>>;
    p <<　白々しいことを。犯人はだれでもそう言うんだ。でも、ここで
       悪い印象を持たれるわけにはいかない。>>;
    blockquote
      <<［そうなんですか？　残念です。でも、わたし、あの事件について
       いろいろ知りたいんです。当事者たちの話を］>>;
    p <<　かれはすぐ返信をくれた。>>;
    blockquote
      <<［じゃあ会う？　おれはどっちでもいいけど、うまいイタリアンを
       知ってるんだ。そこでなにか話せるかもしれないな］>>;
    p <<　いるいる、こういう奴。ふだんなら楽しみです、とか適当に答えてまあ
       放置決めるタイプだ。>>;
    blockquote
      <<［本当ですか？　嬉しいです！　楽しみにしています！　日程はいつに
       します？　わたしは大学生なので、冬休みのあいだだったらいつでも
       おっけーです！］>>;
    blockquote
      <<［USSMではプライベートな情報は送信できない。
       メールアドレスを教えて。そっちで教えるから］>>;
    p <<　こうして、わたしと晴さんは埼玉で会う約束を立てた。>>;
    p <<　冬休み、わたしは埼玉へ行き、晴さんと会った。
       晴さんはやせ細った華奢な男性で、髪にはすこし白髪が混じっており、
       人相は思ったより悪くなく、悪人には見えなかった。
       実際に会ってみると、敵には見えなかった。
       ううん、人は見た目では判断できないって
       いうのよ、コーリ。こういう奴が事件を起こすんだから。>>;
    p <<　わたしと晴さんは前に話していたとおりイタリアンへ行った。
       そこで食べながら、わたしたちはいろいろ話した。実際に会ってはいるものの
       、かれだってわたしを完全には信用していないだろう。わたしは
       じっくり行くことにして、その日は事件についてはあまり踏み込まなかった。
       代わりに、次の約束を立てた。>>;
    p <<　その次も、わたしは約束を立てるだけに踏みとどまった。その
       次も。そしてついに年中には事件については話さず、信用を勝ち取る
       ことにのみ注力した。>>;

    h3 <<2020年>>;

    p <<　冬休みは、わたしは晴さんのご機嫌を伺うだけしかしなかった。
       それから1月と2月にちょっと大学へ通い、
       そして2月、春休みに入って、わたしはまた晴さんと約束して
       埼玉へ行くことになった。そして今日、ついに決行するのだ。
       ボイスレコーダーでかれとの会話を記録し、自白させる
       ことを。>>;
    (*p <<　行く前に、わたしはからむちゃんの写真の前で懺悔した。>>;
    p <<「からむちゃん、わたしにはどうしてもあの人が悪い人には思えません。
       でも、やらなくちゃいけないの。あなたのために。
       そう信じていたわ。でも気づいたの。本当は自分の恨みを晴らしたくて、
       あなたのためにと自分を偽っていたのよ。
       わたしはけっきょく、自分のことしか考えていなかったんだわ」>>;
    p <<　そう。死者のためなんて大義名分を掲げているけど、それは
       口をきかない都合のいい理由を見つけたから喜び勇んで飛びついてる
       だけで、ほんとうは、わたし自身のためだったのだ。>>;
    p <<　かといって、わたしは晴さんを許すことはできなかった。
       でも、何度もデートするうちに、わたしはかれに同情し始めてしまっていた。
       これでいいのかどうか、よくわからなくなっていた。>>;*)
    p <<　行く前に、わたしはからむちゃんの写真の前で、からむちゃんに
       報告した。>>;
    p <<「からむちゃん、ついに犯人を捕まえられるわ。わたしは成し遂げてみせる。
       あなたのために」>>;
    p <<　あなたのために？　わたしは自分の発言におかしくなった。>>;
    p <<
       　これはからむちゃんのための復讐だ。そう信じていた。
       でも気づいた。本当は自分の恨みを晴らしたくて、
       からむちゃんのためにと自分を偽っていたのだ。
       わたしはけっきょく、自分のことしか考えていなかったんだ。>>;
    p <<　そう。死者のためなんて大義名分を掲げているけど、それは
       口をきかない都合のいい理由を見つけたから喜び勇んで飛びついてる
       だけで、ほんとうは、わたし自身のためだったのだ。>>;
    p <<　かといって、わたしは晴さんを許すことはできなかった。>>;
    p <<　わたしは湘南新宿ライン籠原行きで30分ほど揺られる。>>;
    p <<　また埼玉でかれとデート。もちろんボイスレコーダー付きで。>>;
    p <<　奥まった場所にある静かなイタリアンで、わたしとかれは
       食事をしつつ話していた。>>;
    p <<　フォークを置いて、わたしは思い切ってたずねた。>>;
    p <<「ぶっちゃけあなたは犯人なんですか？　だれにも言わないので
       教えてほしいんですけど」>>;
    p <<　かれはわたしをすっかり信用しているらしく、
       ゆっくりと話し始めた。>>;
    p <<「そうだ。おれがやった」>>;
    p <<　わたしはそれを聞いて、激しい憎悪を煮えたぎらせ、
       ぜったいに捕まえてやるという気持ちを強くした。>>;
    p <<「ほんとうに！　やっぱり、そうだったんですね！　尊敬します！」
       わたしは、かれとのあいだでは犯人のファンだということになっている。
       「こんなに長いあいだ隠し通せるなんて。これからも捕まらないんでしょう
       ね」>>;
    p <<「まあ、ひとりじゃ無理だったけどね」>>;
    p <<　ひとり？　共犯者がいたということなのだろうか。
       だとしたらそいつも許せない。わたしは
       たずねた。>>;
    p <<「あなたを手伝った人がいるんですか？」>>;
    p <<「むしろ、おれが手伝ったのさ」>>;
    p <<「真犯人は、別にいるということですか？」>>;
    p <<「ああ」>>;
    p <<「それってだれですか？　わたし、ぜひお会いしてみたいです！　こんな
       偉大な事件を計画したのは、いったいだれなんですか？」>>;
    p <<「残念ながらそれは無理だ。奴はもう死んだ」>>;
    p <<「えっ……なぜです？」>>;
    p <<「シアン化合物中毒で死んだ」>>;
    p <<　シアン化合物中毒で死んだ？　それってまさか、死んだ4人のなかに
       犯人がいたってこと？>>;
    p <<「それって……」>>;
    p <<「奴は2014年12月に死んだ。きみにだから言うが……
       ぜったいに、ここだけの秘密だぞ。
       奴はシアン化合物入りのコーラを飲んで、
       奥さんに大量の保険金を与えて、死んだ」>>;
    p <<　なにもかもが繋がってきた気がした。事件の真相を、わたしは知りつつ
       あった。つまり、こういうことだ。>>;
    p <<　事件の犯人は3人いる。ひとりは晴さん、そしてもうひとりは首謀者として
       の謎の人物と、もうひとりはその奥さん。
       首謀者の狙いは保険金詐欺だった。首謀者は自殺して
       保険金を妻に与えようとした。でも、自殺では保険金はおりない。
       そこで殺人事件を起こす必要があった。でも、単純な殺人事件ではダメだ。
       完全犯罪を成立させる必要があった。そこで首謀者は、
       ビッグサイトの自販機の補充係を買収した。保険金の何割かを分けると
       でも言ったのだろう。首謀者は補充係に
       シアン化合物をペットボトルにいれて自販機に入れるように
       言った。そして首謀者はシアン化合物入りのコーラを飲んで、
       自殺した。ほかの3人の人を巻き添えにして、無差別殺人を装って。>>;
    p <<　保険金詐欺。首謀者にもそうとうの事情があったのだろう。
       でも、それで同情する気にはなれない。そんなの、
       からむちゃんを殺してもいい理由にはならない。>>;
    p <<　まだわからないことがいくつかある。
       シアン化合物の出所。なぜ晴さんは協力しようと思ったのか。>>;
    p <<「シアン化合物を手に入れたのは、晴さんじゃないんですよね？　あなたは
       調べられたはずです。だれが手に入れたんですか？」>>;
    p <<「奴だ。奴はメッキ会社の社員を金で買収して、シアン化合物を
       手に入れたと言っていた。おれはそいつと会ったこともない」>>;
    p <<「まだわからないことがあります。なぜ晴さんはそんなことに協力しようと
       思ったんですか？　あなたは、そんなに悪い人には……見えない……」
       わたしは思わず口を抑えた。わたしはなにを言おうとしているんだ。>>;
    p <<「金が必要だったからだ。妻とおれがしている仕事だけでは息子を
       大学に行かせられなかったし、両親を介護できなかった。
       計画はすべてがうまくいき、
       何事もなく金が分配された。唯一の問題は妻がおれに愛想を尽かした
       ことだった」>>;
    (*p <<　わたしは最後にひとつだけたずねた。>>;
    p <<「どうして、あなたはわたしにこんなにいろいろ話してくれるんですか？　
       もしわたしがこれを録音していて、警察に届けたらとか、
       思わないんですか」>>;
    p <<　かれはフッと笑った。>>;
    p <<「さあな。愛が欲しかったのかもしれん。
       すべてを話したうえで得られる真実の愛が」>>;*)
    p <<　帰りの電車のなかで、わたしはいろいろと考えていた。わたしはどうすべき
       なのだろう。録音した内容を届けるべきなのだろうか。それとも、
       奥さんを助けるためとかいう、首謀者の事情や、
       息子を大学に行かせるべきだとかいう、晴さんの事情に同情して
       見逃すべきなのだろうか。>>;
    p <<　同情？　そんなことはあり得ない。お金がなかった？　そんなことで
       からむちゃんが殺されていいはずがない！>>;
    p <<　もしわたしがこれを提出すれば、晴さんはたぶん捕まる。
       これを証拠に再捜査がされて、もしかしたら保険金詐欺が発覚し、
       保険金は取り上げられるかも。>>;
    p <<　そう。それでいいんだ。それが、わたしにとっていちばんすっきり
       解決する手段だ。>>;
    p <<　一方で、晴さんや首謀者に対する同情も、なかったわけではない。
       かれらにはかれらなりの過去があった。たとえそれが3人の犠牲者を
       だすことの理由にはなりえないとしても、かれらにとっては必要な
       ことだったのだ。>>;
    p <<　でも、でも、でも、でも。わたしはからむちゃんを殺した
       かれらが許せない。>>;
    p <<　やつらは悪人だ！　からむちゃんと、C87に参加していた2人を殺した
       極悪人だ！　かれらは悪いことをしたんだ！　かれらは裁かれるべきなんだ！
       >>;
    p <<　でも、一方で、復讐することが完全に良いことにも、わたしは思えなかった
       。わたしは合法的に晴さんや首謀者の人生を奪おうとしている。それが
       果たして正しいことなのだろうか。>>;
    p <<　わたしは帰宅して、からむちゃんの写真の前にボイスレコーダーを
       置いて、正座し、話し始めた。>>;
    p <<「からむちゃん、すべてを話すよ。あなたが殺された日のことを。
       あなたには知る権利がある。話したうえで、からむちゃん、あなたが
       どうしたいか教えてくれないかな。復讐したい？　それとも、
       かれらに同情して、忘れて上げてもいいかなって思う？」>>;
    p <<　もしからむちゃんが答えてくれたら、どんなに楽だっただろう。
       選択も、考えることも人任せにできたら、わたしはどれだけ
       迷わずに行動できただろうか。>>;
    p <<　でも、いまは違う。からむちゃんが答えてくれることは決してない。>>; 
    p <<　わたしは、自分で考えて、自分で行動しなくちゃいけないのだ。>>;
    p <<　その翌日、いろいろ悩んでから、わたしは録音を警察に届けた。
       わたしは決断した。かれらは悪い奴だ。たとえ同情できる過去があったと
       しても、だからといって、かれらが事件を起こしていいはずがない。
       かれらは、裁かれるべきなのだ。>>;
    p <<　その録音が直接証拠になることはなかった。その録音がきっかけで、
       事件の再捜査が始まり、被害者4人が調べられた。そのうち1人、コーラを
       飲んで死んだ人の身元からメッキ会社の社員が辿られ、そこから
       事件は解決へ向かった。メッキ会社では、事件の数週間後に
       シアン化合物の盗難が発覚していたが、それを明らかにすることによる
       営業への悪影響をおそれ、秘密にしていたとのことだった。>>;
    p <<　こうしてコミケシアン化合物無差別殺人事件は解決した。>>;
    p <<　それから2028年、なつばなくんと同棲をはじめて2年になるのだけど、
       わたしは28歳で、そろそろ結婚しないとまずいと思っていた。>>;
    p <<　でも、わたしのほうから言い出すのはなんだか気が引けた。
       かれのほうからプロポーズしてほしい、という気持ちがあった。
       1年前から。>>;
    p <<　もしかれがプロポーズしてくれたら、どんなに楽だっただろう。
       選択も、考えることも人任せにできたら、わたしはどれだけ
       悩まずに済んだだろう。>>;
    p <<　でも、いまは違う。なつばなくんはそういうことを自分から言い出す
       タイプではない。>>;
    p <<　わたしは、自分で考えて、自分で行動しなくちゃいけないのだ。>>;
    h2 <<テーリ編>>;
    p <<Coming soon.>>;
    h2 <<ホヨ編>>;
    p <<Coming soon.>>;
    h2 <<ならば編>>;
    p <<Coming soon.>>;
    h2 <<実在の用語集>>;
    dl
      [ dt ~a:[a_id jewel#id]
           <<宝石>>
      ; dd <<グレッグ・イーガンの短編『ぼくになることを』に登場する
            ガジェット。>>
      ; dt ~a:[a_id switch#id]
           <<〈スイッチ〉>>
      ; dd <<グレッグ・イーガンの短編『ぼくになることを』に登場する
            用語。>>
      ; dt ~a:[a_id ibe#id]
           <<いべ>>
      ; dd <<仙台弁で「行こうよ」という勧誘を表す言葉。
            See also: $ach "http://www1.ocn.ne.jp/~konnok/katsuyou.html"$>>
      ; dt ~a:[a_id c85#id]
           <<C83>>
      ; dd <<2012年の冬コミ。>>
      ; dt ~a:[a_id c86#id]
           <<C84>>
      ; dd <<2013年の夏コミ。>>
      ; dt ~a:[a_id c87#id]
           <<C85>>
      ; dd <<2013年の冬コミ。>>
      ; dt ~a:[a_id c88#id]
           <<C86>>
      ; dd <<2014年の夏コミ。>>
      ; dt ~a:[a_id c89#id]
           <<C87>>
      ; dd <<2014年の冬コミ。>>
      ; dt ~a:[a_id firefox_os#id]
           <<Firefox OS>>
      ; dd <<See also: $ach "http://www.mozilla.jp/firefoxos/"$>>
      ; dt ~a:[a_id ubuntu#id]
           <<Ubuntu>>
      ; dd <<See also: $ach "http://www.ubuntu.com/"$>>
      ; dt ~a:[a_id star_wars_ep8#id]
           <<スター・ウォーズ エピソード8>>
      ; dd <<2017年公開予定の映画。>>
      ];
    h2 <<参考文献>>;
    ul
      [ li <<「小学校学習指導要領（平成10年12月告示、15年12月一部改正）：文部科学省」,
            $ach "http://www.mext.go.jp/a_menu/shotou/cs/1320008.htm"$
            2014年9月13日アクセス.>>
      ; li <<「第7回青少年の性行動調査」,
            $ach "http://www.jase.faje.or.jp/jigyo/youth.html"$
            2014年9月10日アクセス.>>
      ; li <<「石巻市立大川小学校 - Wikipedia」,
            $ach "http://ja.wikipedia.org/wiki/%E7%9F%B3%E5%B7%BB%E5%B8%82%E7%AB%8B%E5%A4%A7%E5%B7%9D%E5%B0%8F%E5%AD%A6%E6%A0%A1"$
            2014年9月10日アクセス.>>
      ; li <<「宮城の方言：仙台弁メモ（名取市近辺版）」,
            $ach "http://www1.ocn.ne.jp/~konnok/dialect.html"$
            2014年9月11日アクセス.>>
      ; li <<「東日本大震災による鉄道への影響 - Wikipedia」,
            $ach "http://ja.wikipedia.org/wiki/%E6%9D%B1%E6%97%A5%E6%9C%AC%E5%A4%A7%E9%9C%87%E7%81%BD%E3%81%AB%E3%82%88%E3%82%8B%E9%89%84%E9%81%93%E3%81%B8%E3%81%AE%E5%BD%B1%E9%9F%BF"$
            2014年9月11日アクセス.
            >>
      ; li <<「平成24年度 青少年のインターネット利用環境実態調査」,
            $ach "http://www8.cao.go.jp/youth/youth-harm/chousa/h24/net-jittai/pdf/kekka.pdf"$
            2014年9月12日アクセス.>>
      ; li <<結城浩 『数学ガール』 （2007）
            ソフトバンククリエイティブ.>>
      ]
  ]

let html = Fairytale.make
            ~title:"fairytale.github.io/21st-century"
            ~contents:contents
            ~css_path:"../fairytale.css"
            ()
let () = Html5.P.print ~output:print_string html

