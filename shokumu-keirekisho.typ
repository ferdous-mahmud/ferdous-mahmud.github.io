// 職務経歴書 — Japanese work history / career summary format
#set page(
  paper: "a4",
  margin: (x: 20mm, y: 18mm),
)

#set text(
  font: ("Hiragino Kaku Gothic Pro", "Hiragino Sans"),
  size: 10pt,
  lang: "ja",
)

#set par(justify: true, leading: 0.62em, spacing: 0.55em)
#set list(indent: 1.2em, spacing: 0.35em)

#let border = 0.6pt + black
#let section-title(content) = {
  v(10pt)
  text(size: 11pt, weight: "bold", content)
  v(4pt)
  line(length: 100%, stroke: 1.2pt + black)
  v(6pt)
}

#let company-block(
  period: "",
  company: "",
  overview: "",
  role: "",
  team: "",
  body,
) = {
  block(breakable: true)[
    #grid(
      columns: (auto, 1fr),
      column-gutter: 8pt,
      align: (left, left),
      text(weight: "bold", period),
      text(weight: "bold", size: 11pt, company),
    )
    #v(3pt)
    #text(size: 9pt)[
      【事業内容】#overview \
      【配属・役割】#role \
      【プロジェクト／チーム】#team
    ]
    #v(4pt)
    #body
    #v(8pt)
  ]
}

// ── Header ──────────────────────────────────────────────────────────────────

#align(center)[
  #text(size: 18pt, weight: "bold")[職#h(0.35em)務#h(0.35em)経#h(0.35em)歴#h(0.35em)書]
]

#v(10pt)

#align(right)[
  2026年7月15日現在 \
  氏名：フェルドゥス・マームード・アカシ
]

#v(8pt)

// ── Career summary ──────────────────────────────────────────────────────────

#section-title[職務要約]

コンピュータサイエンス学士（CGPA 3.59/4.0）。2023年9月よりiOSエンジニアとして約2年の実務経験を持つ。\
サウジアラビアのライドシェア、バングラデシュ最大級のソーシャルメディア、企業向けドキュメント管理アプリなど、\
複数のプロダクション環境でSwift / SwiftUIを用いた設計・開発・リリースを担当。\
MVVM、Combine、async/awaitを中心としたアーキテクチャ設計、リアルタイム通信、メモリ・通信量の最適化、\
CI/CD（Fastlane）によるリリース自動化に強みがある。

// ── Skills ──────────────────────────────────────────────────────────────────

#section-title[活かせる経験・知識・技術]

#table(
  columns: (28mm, 1fr),
  stroke: border,
  inset: (x: 6pt, y: 5pt),
  align: (left + horizon, left + horizon),

  [*言語・\
  フレームワーク*], [
    Swift, SwiftUI, UIKit, Combine, async/await, Objective-C（読み書き可）
  ],
  [*アーキ\
  テクチャ*], [
    MVVM, Clean Architecture, SOLID原則, リアクティブプログラミング
  ],
  [*iOS\
  機能*], [
    MapKit, CoreLocation, PDFKit, WidgetKit, Live Activities, AVFoundation, \
    WebRTC, Socket.io, CoreData, SwiftData, Push通知（APNS / Firebase）
  ],
  [*ネット\
  ワーク*], [
    REST API, URLSession, Alamofire, キャッシュ・ページネーション・リトライ設計
  ],
  [*品質・\
  開発体制*], [
    XCTest, ユニットテスト, コードレビュー, Git/GitHub, Fastlane, CI/CD
  ],
  [*その他*], [
    CoreML, オンデバイスLLM, Razorpay / MyFatoorah / bKash 決済SDK連携, \
    TypeScript / React（フロントエンド学習・個人開発）
  ],
)

// ── Work history ────────────────────────────────────────────────────────────

#section-title[職務経歴]

#company-block(
  period: "2025年9月 – 現在",
  company: "FileSure（バングラデシュ・ダッカ）",
  overview: "企業向けドキュメント管理SaaS",
  role: "iOSデベロッパー",
  team: "FileSure iOSアプリ（新規開発）",
)[
  *【プロジェクト概要】*\
  企業向けドキュメント管理iOSアプリをゼロから設計・開発。PDF閲覧・注釈、バックグラウンドダウンロード、\
  検索、決済機能などフル機能セットを担当。

  *【担当業務】*
  - Swift / SwiftUI / UIKit、MVVM + Combineによるアプリ全体のアーキテクチャ設計と実装
  - PDFKitを用いたカスタムPDFリーダー（注釈・大容量ファイル向けメモリ最適化）
  - URLSessionによるバックグラウンドダウンロードエンジン（並列DL・一時停止/再開・自動リトライ）
  - Combineによるデバウンス検索、APIキャッシュ・圧縮・ページネーション（API呼び出し50%削減、通信量35%削減）
  - Razorpay決済SDK連携（エラーハンドリング・レシート検証・セキュアな取引フロー）

  *【使用技術】* Swift, SwiftUI, UIKit, Combine, PDFKit, URLSession, Razorpay, MVVM
]

#company-block(
  period: "2023年9月 – 2025年8月",
  company: "Appstick（バングラデシュ・クルナ）",
  overview: "モバイルアプリ開発会社（ライドシェア・ソーシャルメディア等）",
  role: "ソフトウェアエンジニア（iOS）",
  team: "Msar Amen（ライドシェア）/ Kotha（ソーシャルメディア）",
)[
  *【プロジェクト概要 — Msar Amen（サウジアラビア ライドシェア）】*\
  サウジアラビア向けライドシェアアプリのiOS開発。リアルタイム位置追跡、決済、プッシュ通知、\
  WidgetKit / Live Activitiesによるライド状況表示を担当。

  *【担当業務 — Msar Amen】*
  - Swift Concurrency + MapKit + Socket.ioによるリアルタイムドライバー追跡（メモリ使用量40%削減）
  - Apple Foundation Modelsを用いたオンデバイスLLM連携（ライド画面テキスト生成）
  - WidgetKit拡張・Live Activities（ホーム画面・ロック画面・Dynamic Island）
  - MyFatoorah決済SDK、Firebase/APNSプッシュ通知連携
  - 機能開発リード、コードレビュー、ジュニアエンジニアのメンタリング

  *【プロジェクト概要 — Kotha（バングラデシュ ソーシャルメディア）】*\
  バングラデシュ最大級の国産ソーシャルメディア・マーケットプレイス（National ICT Award受賞）。

  *【担当業務 — Kotha】*
  - TikTok型ショート動画フィード（AVFoundation）、FFMPEGによる音声処理・ノイズ除去
  - WebRTCによる音声/ビデオ通話、リアルタイムチャット（バックアップ・オフライン対応）
  - bKash決済連携、MVVM + Combineアーキテクチャ

  *【開発体制・品質】*
  - FastlaneベースCI/CD導入（リリース時間60%短縮）
  - テストカバレッジ70%達成、SOLID原則に基づくコード品質維持

  *【使用技術】* Swift, SwiftUI, Combine, MapKit, Socket.io, WebRTC, AVFoundation, \
  WidgetKit, Firebase, CoreLocation, Fastlane, XCTest
]

// ── Projects (supplementary) ────────────────────────────────────────────────

#section-title[関連プロジェクト]

- *Msar Amen*（App Store公開）— サウジアラビア ライドシェア。MVVM + Combine、リアルタイムMapKit追跡、決済SDK
- *Kotha*（App Store公開）— バングラデシュ ソーシャルメディア。動画フィード、WebRTC通話、EC決済
- *FileSure iOS* — 企業向けドキュメント管理。PDFリーダー、バックグラウンドDL、決済

// ── Education & achievements ────────────────────────────────────────────────

#section-title[学歴]

#table(
  columns: (32mm, 1fr),
  stroke: border,
  inset: (x: 6pt, y: 5pt),

  [2019年9月 – 2023年12月], [
    ノーザン大学ビジネス＆テクノロジー・クルナ \
    コンピュータサイエンス＆エンジニアリング学部 卒業（学士） \
    CGPA：3.59 / 4.0
  ],
)

#section-title[資格・受賞]

#list[
  Meta iOS Developer Professional Certificate（Coursera）
][
  SwiftUI Advanced Architecture（Swiftful Thinking）
][
  NUBTKプログラミングコンテスト2022 第1位
][
  ACM ICPC Dhaka予選 2022 出場
][
  iOS技術記事50本以上執筆（AppsDeveloperBlog）
]

#v(12pt)

#align(right)[
  以上
]
