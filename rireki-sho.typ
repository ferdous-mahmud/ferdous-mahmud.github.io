// 履歴書（写真付き）— Japanese standard resume format (1 page, full coverage)
#set page(
  paper: "a4",
  margin: (x: 15mm, y: 12mm),
)

#set text(
  font: ("Hiragino Kaku Gothic Pro", "Hiragino Sans"),
  size: 10pt,
  lang: "ja",
)

#set par(leading: 0.58em, spacing: 0.42em)

#let border = 0.6pt + black
#let cell-inset = (x: 6pt, y: 5pt)
#let label-width = 22mm
#let year-col = 14mm
#let month-col = 10mm

#let label-cell(content) = table.cell(
  fill: luma(240),
  inset: cell-inset,
  align: horizon,
  text(size: 9pt, content),
)

#let value-cell(content, colspan: 1, rowspan: 1, align: left + horizon) = table.cell(
  colspan: colspan,
  rowspan: rowspan,
  inset: cell-inset,
  align: align,
  content,
)

#let history-row(year, month, content) = (
  table.cell(inset: cell-inset, align: horizon + center, [#year]),
  table.cell(inset: cell-inset, align: horizon + center, month),
  table.cell(colspan: 2, inset: cell-inset, align: horizon, content),
)

#block(height: 100%)[
  #grid(
    rows: (auto, auto, auto, 1fr),
    row-gutter: 8pt,

    // ── Header ──────────────────────────────────────────────────────────────
    [
      #align(center)[
        #text(size: 20pt, weight: "bold")[履#h(0.35em)歴#h(0.35em)書]
      ]
      #v(3pt)
      #align(right)[
        #text(size: 9pt)[
          2026年7月15日現在 \
          （記入上の注意：1. 鉛筆以外で記入　2. 数字はアラビア数字で統一）
        ]
      ]
    ],

    // ── Personal information + photo ────────────────────────────────────────
    [
      #table(
        columns: (label-width, 1fr, 30mm),
        stroke: border,
        inset: 0pt,

        label-cell[ふりがな], value-cell(text(size: 9pt)[ふぇるどぅす　まーむーど　あかし]), value-cell(
          rowspan: 4,
          align: center + horizon,
          box(
            width: 30mm,
            height: 40mm,
            stroke: border,
            clip: true,
            image("MyPicWhiteBG.png", width: 30mm, height: 40mm, fit: "cover"),
          ),
        ),

        label-cell[氏　　名], value-cell(text(size: 14pt, weight: "bold")[フェルドゥス・マームード・アカシ]),

        label-cell[生年月日], value-cell[　　　　年　　月　　日生（満　　歳）],

        label-cell[性　　別], value-cell[男　・　女　（該当に○）],

        label-cell[現 住 所], value-cell(colspan: 2)[
          〒 \
          バングラデシュ人民共和国　ダッカ
        ],

        label-cell[電　　話], value-cell(colspan: 2)[(+88) 01401678150],

        label-cell[E-mail], value-cell(colspan: 2)[ferdous.webdev\@gmail.com],
      )
    ],

    // ── Education, work history, certifications ─────────────────────────────
    [
      #table(
        columns: (year-col, month-col, 1fr, 1fr),
        stroke: border,
        inset: 0pt,

        table.cell(colspan: 4, fill: luma(240), inset: cell-inset, align: center)[
          #text(weight: "bold")[学　　歴]
        ],

        ..history-row(2019, [9], [ノーザン大学ビジネス＆テクノロジー・クルナ \
          コンピュータサイエンス＆エンジニアリング学部　入学]),
        ..history-row(2023, [12], [ノーザン大学ビジネス＆テクノロジー・クルナ \
          コンピュータサイエンス＆エンジニアリング学部　卒業 \
          （学士・CGPA 3.59 / 4.0）]),

        table.cell(colspan: 4, fill: luma(240), inset: cell-inset, align: center)[
          #text(weight: "bold")[職　　歴]
        ],

        ..history-row(2023, [9], [株式会社 Appstick \
          ソフトウェアエンジニア（iOS）　入社]),
        ..history-row(2025, [8], [株式会社 Appstick \
          ソフトウェアエンジニア（iOS）　退社]),
        ..history-row(2025, [9], [FileSure \
          iOSデベロッパー　入社]),
        ..history-row([　], [　], [現在に至る]),

        table.cell(colspan: 4, fill: luma(240), inset: cell-inset, align: center)[
          #text(weight: "bold")[免 許 ・ 資 格]
        ],

        ..history-row([　], [　], [Meta iOS Developer Professional Certificate（Coursera）]),
        ..history-row([　], [　], [SwiftUI Advanced Architecture（Swiftful Thinking）]),
      )
    ],

    // ── Motivation & preferences (fills remaining page height) ───────────────
    [
      #block(height: 100%)[
        #grid(
          rows: (1.7fr, 1fr, auto),
          row-gutter: 8pt,

          table(
            columns: (label-width, 1fr),
            stroke: border,
            inset: 0pt,
            label-cell[志望の動機 \
              特技 \
              アピール \
              ポイントなど],
            value-cell(align: left + top)[
              #block(height: 100%)[
                コンピュータサイエンスを専攻し、2年以上にわたりiOSアプリの設計・開発・リリースに従事してきました。\
                サウジアラビアのライドシェア、バングラデシュのソーシャルメディア、企業向けドキュメント管理など、\
                実際のユーザー規模で動くプロダクト開発経験があります。\
                \
                日本企業への応募を通じて、高品質なソフトウェア開発文化のもとで技術力をさらに高め、\
                チームで価値を生み出すエンジニアとして貢献したいと考えています。\
                \
                【特技】Swift / SwiftUI によるiOS開発、リアルタイム通信、パフォーマンス最適化 \
                【語学】英語（ビジネス）、日本語（学習中）
              ]
            ],
          ),

          table(
            columns: (label-width, 1fr),
            stroke: border,
            inset: 0pt,
            label-cell[本人希望 \
              記入欄],
            value-cell(align: left + top)[
              #block(height: 100%)[
                勤務地：日本（東京を含む）への転居・就労可能 \
                職種：iOSエンジニア / ソフトウェアエンジニア \
                その他：貴社規定に従います \
                \
                ※給与・勤務時間・勤務地等の条件については、貴社の規定に従います。
              ]
            ],
          ),

          align(right)[#text(size: 9pt)[以上]],
        )
      ]
    ],
  )
]
