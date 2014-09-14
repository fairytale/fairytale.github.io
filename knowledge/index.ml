(******************************************************************************
  Copyright (c) 2014 Pasberth
  https://github.com/fairytale/fairytale.github.io
 *****************************************************************************)

#default_quotation "fairytale";;

let contents =
  let open Fairytale in
  let open Html5.M in
  [
  h2 <<コーリ編>>;

  dl
    [ dt <<新田$rb "恋羽理" "こうり"$>>
    ; dd <<コーリ編の主人公。2000年2月29日生まれ。女性。
          2011年までは宮城の父方の実家で暮らしていたが、
          同年3月11日の東北地方太平洋沖地震で家族と友達を失い、
          茨城の母方の実家に逃れる。茨城の中学では大野$rb "香薇夢" "からむ"$
          と仲良くなるが、2014年、C87においてコミケシアン化合物無差別殺人
          事件で死別する。2017年茨城の高校で冬野$rb "夏花" "なつばな"$
          と知り合い、のちに結婚し、一人娘として
          $rb "輝射理" "ていり"$をもうける。>>
    ; dt <<立花$rb "正弦" "さいん"$>>
    ; dd <<コーリの小学生時代の親友。小学4年生のとき、東北地方太平洋
          沖地震で津波に飲まれて死亡する。>>
    ; dt <<立花$rb "余弦" "こさいん"$>>
    ; dd <<さいんの10歳離れた妹。>>
    ; dt <<大野$rb "香薇夢" "からむ"$>>
    ; dd <<コーリの中学時代の親友。子供の頃から本を読むのが好きで、
          小説などの文芸から、漫画、絵本、童話、図鑑、数学書まで、
          読めるものならなんでも読む。数学ガールを好んで読んだため
          中学3年生のときはクラスでいちばん数学ができたが、
          2014年、C87においてコミケシアン化合物無差別殺人事件で死亡する。>>
    ; dt <<冬野$rb "夏花" "なつばな"$>>
    ; dd <<コーリの高校時代の後輩で、夫。料理が得意で、家庭ではいつも
          ご飯をつくっている。>>
    ; dt <<冬野$rb "春香" "はるか"$>>
    ; dd <<なつばなの妹。ガンダムシリーズの熱狂的なファン。
          コーリとはUSSMを通じて知り合う。
          兄のなつばなを強く慕っており、コーリのことを恋敵とさえ
          思っている。>>
    ; dt <<Ubuntu>>
    ; dd <<Linuxディストリビューションのひとつ。
          2016年に大規模な商用展開を開始し、大成功をおさめ、
          2020年までにOSのシェアの70%を獲得した。
          この成功にはGoogle Docsも深く関わっていた。
          Google DocsとMS Officeの互換性が向上し、
          2016年までにMS OfficeからGoogle Officeへほとんどの人が
          移行したことは、WindowsからUbuntuへの移行をしやすくした。>>
    ; dt <<Firefox OS>>
    ; dd <<スマートフォンとタブレット向けのOS。
          日本では2015年8月に一般的に販売され、低価格なゆえに
          大人気となりiPhoneやAndroidに並んだ。>>
    ; dt <<コミケシアン化合物無差別殺人事件>>
    ; dd <<2014年12月のC87で起きた事件。からむ含む計4人が死亡した。>>
    ; dt <<晴>>
    ; dd <<コミケシアン化合物無差別殺人事件の実行犯のひとり。>>
    ];

  h2 <<テーリ編>>;
  p <<Coming soon.>>;

  (*dl
    [ dt <<冬野$rb "輝射理" "ていり"$>>
    ; dd <<Coming soon.>>
    ; dt <<長谷川$rb "論時様" "ろじよ"$>>
    ; dd <<Coming soon.>>
    ];*)
  h2 <<ホヨ編>>;
  p <<Coming soon.>>;
  (*dl
    [ dt <<長谷川$rb "焰代" "ほよ"$>>
    ; dd <<Coming soon.>>
    ; dt <<後藤$rb "行列" "まとり"$>>
    ; dd <<Coming soon.>>
    ];*)
]

let html = Fairytale.make
            ~title:"fairytale.github.io/knowledge"
            ~contents:contents
            ~css_path:"../fairytale.css"
            ()
let () = Html5.P.print ~output:print_string html

