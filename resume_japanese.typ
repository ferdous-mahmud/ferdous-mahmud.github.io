// 日本語版 開発者向け履歴書（Japan Dev ガイド準拠）
// Output: resume_japanese.pdf
#set page(
  paper: "a4",
  margin: (x: 16mm, y: 12mm),
)

#set text(
  font: ("Hiragino Kaku Gothic Pro", "Hiragino Sans", "Mulish"),
  size: 9.5pt,
  lang: "ja",
)

#set par(justify: true, leading: 0.52em, spacing: 0.35em)
#set list(indent: 1em, spacing: 0.22em, marker: [•])

#let accent = rgb("#1a1a1a")
#let muted = rgb("#444444")

#let section-heading(title) = {
  v(6pt)
  text(size: 10.5pt, weight: "bold", fill: accent, title)
  v(1pt)
  line(length: 100%, stroke: 0.8pt + accent)
  v(4pt)
}

#let role-header(company, title, location, dates) = [
  #grid(
    columns: (1fr, auto),
    align: (left, right),
    [
      #text(weight: "bold", size: 10.5pt, company) \
      #text(style: "italic", fill: muted, [#title · #location])
    ],
    text(fill: muted, size: 9pt, dates),
  )
  #v(3pt)
]

// ── ヘッダー ──────────────────────────────────────────────────────────────────

#grid(
  columns: (1fr, auto),
  column-gutter: 12pt,
  align: (left, right + horizon),
  [
    #text(size: 18pt, weight: "bold", accent)[フェルドゥス・マームード・アカシ]
    #v(1pt)
    #text(size: 9pt, fill: muted)[Ferdous Mahmud Akash]
    #v(2pt)
    #text(size: 10.5pt, weight: "medium", fill: muted)[スマートフォンエンジニア · iOSデベロッパー]
    #v(4pt)
    #text(size: 9pt)[
      バングラデシュ・ダッカ　／　日本への転居可能 \
      #link("mailto:ferdous.webdev@gmail.com")[ferdous.webdev\@gmail.com] · (+88) 01401678150 \
      #link("https://github.com/ferdous-mahmud")[github.com/ferdous-mahmud] ·
      #link("https://www.linkedin.com/in/ferdous19")[linkedin.com/in/ferdous19] ·
      #link("https://ferdous-mahmud.github.io")[ferdous-mahmud.github.io]
    ]
  ],
  box(
    stroke: 1pt + accent.lighten(70%),
    radius: 4pt,
    clip: true,
    width: 64pt,
    height: 64pt,
    image("MyPicWhiteBG.png", width: 64pt, height: 64pt, fit: "cover"),
  ),
)

#section-heading[概要]

2年以上の実務経験を持つスマートフォン（iOS）エンジニア。サウジアラビア・バングラデシュ向けのライドシェア、\
ソーシャルメディア、企業向けドキュメント管理アプリを本番環境で開発・リリース。Swift、SwiftUI、\
リアルタイムシステム、パフォーマンス最適化に強み（メモリ使用量40%削減、API呼び出し50%削減）。\
現在バングラデシュ在住、日本への転居可能（ビザサポート要）。日本語：JLPT N5相当。

#section-heading[職務経歴]

#role-header(
  [FileSure],
  [iOSデベロッパー],
  [バングラデシュ・ダッカ],
  [2025年9月 – 現在],
)
#list[
  [Swift、SwiftUI、UIKit、MVVM、Combineを用い、FileSure iOSアプリをゼロから設計・開発・リリース。]
  [PDFKitによるカスタムPDFリーダー（注釈機能、大容量ファイル向けメモリ最適化）を実装。]
  [URLSessionによるバックグラウンドダウンロードエンジン（並列DL、一時停止/再開、自動リトライ）を構築し、ダウンロード失敗をほぼゼロに。]
  [*成果：* デバウンス検索とAPIキャッシュ・ページネーションにより、API呼び出し*50%*・通信量*35%*を削減。]
  [Razorpay決済SDK連携（エラーハンドリング、レシート検証、セキュアな取引フロー）を実装。]
]

#v(4pt)

#role-header(
  [Appstick],
  [ソフトウェアエンジニア（iOS）],
  [バングラデシュ・クルナ],
  [2023年9月 – 2025年8月],
)
#list[
  [*Msar Amen*（サウジアラビア ライドシェア）をSwift Concurrency、MapKit、Socket.ioで開発・最適化。]
  [*成果：* 効率的なキャッシュとスレッド管理により、メモリ使用量を*40%*削減。]
  [*Kotha*（National ICT Award受賞ソーシャルプラットフォーム）のショート動画、WebRTC通話、bKash決済機能を実装。]
  [オンデバイスLLM連携、WidgetKit / Live Activitiesによるリアルタイムライド状況表示を構築。]
  [機能開発リード、コードレビュー、ジュニアエンジニアのメンタリングを担当。]
  [*成果：* Fastlane CI/CD導入でリリース時間*60%*短縮、テストカバレッジ*70%*達成。]
]

#section-heading[学歴]

#role-header(
  [ノーザン大学ビジネス＆テクノロジー・クルナ],
  [コンピュータサイエンス＆エンジニアリング学士],
  [バングラデシュ・クルナ],
  [2019年9月 – 2023年12月],
)
CGPA：3.59 / 4.0

#section-heading[スキル]

#grid(
  columns: (auto, 1fr),
  row-gutter: 4pt,
  column-gutter: 10pt,
  text(weight: "bold", size: 9pt)[*言語・iOS：*],
  [Swift, SwiftUI, UIKit, Objective-C, Xcode, CocoaPods, Swift Package Manager],
  text(weight: "bold", size: 9pt)[*アーキテクチャ：*],
  [MVVM, Clean Architecture, SOLID, Combine, async/await, リアクティブプログラミング],
  text(weight: "bold", size: 9pt)[*モバイル・メディア：*],
  [MapKit, CoreLocation, PDFKit, WidgetKit, Live Activities, AVFoundation, WebRTC, Socket.io],
  text(weight: "bold", size: 9pt)[*ネットワーク・データ：*],
  [REST API, URLSession, Alamofire, CoreData, SwiftData, Firebase, キャッシュ, ページネーション],
  text(weight: "bold", size: 9pt)[*品質・開発体制：*],
  [XCTest, ユニットテスト, Git, GitHub, Fastlane, CI/CD],
  text(weight: "bold", size: 9pt)[*その他：*],
  [CoreML, オンデバイスLLM, TypeScript, React（個人開発）],
)

#section-heading[語学力]

#grid(
  columns: (auto, 1fr),
  row-gutter: 4pt,
  column-gutter: 10pt,
  text(weight: "bold", size: 9pt)[*英語：*],
  [ビジネスレベル（読み書き・会話可能）],
  text(weight: "bold", size: 9pt)[*日本語：*],
  [JLPT N5相当 — 基礎的な読み書き・日常会話可能、N4取得に向けて学習中],
  text(weight: "bold", size: 9pt)[*ベンガル語：*],
  [ネイティブ],
)

#section-heading[資格・実績・趣味]

#list[
  [Meta iOS Developer Professional Certificate（Coursera）· SwiftUI Advanced Architecture（Swiftful Thinking）]
  [NUBTKプログラミングコンテスト2022 第1位 · ACM ICPC Dhaka 2022 · iOS技術記事50本以上執筆]
  [日本のエンジニアリング文化に関心、モバイルパフォーマンス最適化とエンジニアメンタリングに積極的]
]
