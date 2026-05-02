#import "template.typ": *

#set page(
  margin: (
    left: 8mm,
    right: 8mm,
    top: 8mm,
    bottom: 8mm
  ),
)

#set text(font: "Mulish")

#show: project.with(
  theme: rgb("#0F83C0"),
  name: "FERDOUS MAHMUD AKASH",
  photo: "MyPicWhiteBG.png",
  contact: (
    contact(text: "ferdous.webdev@gmail.com", link: "mailto:ferdous.webdev@gmail.com"),
    contact(text: "(+88) 01401678150", link: "tel:+8801401678150"),
    contact(text: "ferdous-mahmud.github.io", link: "https://ferdous-mahmud.github.io"),
    contact(text: "github.com/ferdous19", link: "https://github.com/ferdous19"),
    contact(text: "linkedin.com/in/ferdous19", link: "https://www.linkedin.com/in/ferdous19")
  ),
  main: (
    section(
      title: "Summary",
      content: (
        subSection(
          content: [iOS Engineer with 2+ years building production apps used across Saudi Arabia and Bangladesh — in ride-sharing, social media, and enterprise document management. I ship features that reduce memory, cut bandwidth, and survive real traffic.],
        ),
      ),
    ),
    section(
      title: "Experience",
      content: (
        subSection(
          title: "FileSure",
          titleEnd: "Dhaka, Bangladesh",
          subTitle: "iOS Developer",
          subTitleEnd: "(Sep 2025 – Current)",
          content: list(
            [Architected and shipped the FileSure iOS app from scratch using *Swift*, *SwiftUI*, and *UIKit* with MVVM and Combine — enabling a scalable, testable codebase across the full document management feature set.],
            [Built a custom PDF reader with *PDFKit* supporting annotation, smooth rendering, and optimized memory management for large enterprise documents.],
            [Engineered a background download engine using *URLSession* with concurrent multi-file downloads, pause/resume, and automatic retry — reducing failed download complaints to near zero.],
            [Implemented *Combine*-powered debounced search and optimized API layer with caching, compression, and pagination — cutting API calls by *50%* and bandwidth by *35%*.],
            [Integrated *Razorpay* payment gateway with full error handling, receipt validation, and secure transaction flow.],
          ),
        ),
        subSection(
          title: "Appstick",
          titleEnd: "Khulna, Bangladesh",
          subTitle: "Software Engineer (iOS)",
          subTitleEnd: "(Sep 2023 – Aug 2025)",
          content: list(
            [Built and optimized *Msar Amen* — a Saudi Arabia ride-sharing app — using *Swift Concurrency* and *MapKit* with Socket.io real-time tracking, reducing memory usage by *40%* through efficient caching and thread management.],
            [Integrated on-device *LLM* using Apple's foundation models for dynamic ride-screen text generation and personalized in-app experiences.],
            [Built *WidgetKit* extensions and *Live Activities* for real-time ride tracking across Home Screen, Lock Screen, and Dynamic Island.],
            [Led feature development, conducted code reviews, and mentored junior developers on iOS architecture and best practices.],
            [Automated deployments using *Fastlane*-based CI/CD, reducing release time by *60%* and driving *70%* test coverage with SOLID-first engineering practices.]
          ),
        ),
      ),
    ),
    section(
      title: "Projects",
      content: (
        subSection(
          title: link("https://apps.apple.com/sa/app/msar-%D9%85%D8%B3%D8%A7%D8%B1/id1639771181", [Msar Amen 🔗]),
          subTitle: "Swift, SwiftUI, Combine, MapKit, Socket.io, Firebase",
          subTitleEnd: "(Feb 2024 – Current)",
          content: list(
            [Led iOS architecture for a Saudi Arabia ride-sharing platform, implementing MVVM with Combine for reactive data flow and async/await for concurrent operations.],
            [Built real-time MapKit driver tracking via Socket.io, including route optimization and geofencing with CoreLocation.],
            [Integrated MyFatoorah payment SDK and Firebase/APNS push notifications for seamless transactions and engagement.]
          ),
        ),
        subSection(
          title: link("https://apps.apple.com/us/app/kotha/id1188060798", [Kotha 🔗]),
          subTitle: "Swift, SwiftUI, Combine, WebRTC, Firebase, AVFoundation",
          subTitleEnd: "(2024 – 2025)",
          content: list(
            [Engineered key features for Bangladesh's #1 homegrown social media and marketplace platform — a *National ICT Award* recipient featured by national media.],
            [Built TikTok-style short video feeds with *AVFoundation* and integrated FFMPEG for audio processing, background noise removal, and voice posts.],
            [Implemented real-time chat with backup, voice/video calling via *WebRTC*, and background-task support for offline scenarios.],
            [Integrated secure *bKash* payment for digital commerce with MVVM and Combine architecture.]
          ),
        ),
      ),
    ),
    section(
      title: "Skills",
      content: (
        subSection(
          title: "Technical",
          content: [
            *Core iOS:* Swift, SwiftUI, UIKit, Xcode, CocoaPods, SPM\
            *Architecture & Patterns:* Async/Await, Combine, MVVM, SOLID, Clean Architecture\
            *UI & Media:* MapKit, CoreLocation, PDFKit, WidgetKit, AVFoundation, WebRTC, Socket.io\
            *AI/ML:* CoreML, On-device LLM, Apple Intelligence, Natural Language\
            *Networking & Data:* REST API, URLSession, Alamofire, CoreData, SwiftData, Firebase\
            *Quality & Delivery:* XCTest, Unit Testing, Git/GitHub, Fastlane, CI/CD
          ],
        ),
      ),
    ),
    section(
      title: "Education",
      content: (
        subSection(
          title: "Northern University of Business & Technology Khulna",
          subTitle: "Bachelor's degree in Computer Science & Engineering",
          subTitleEnd: "(Sep 2019 – Dec 2023)",
          content: [*CGPA:* 3.59 out of 4],
        ),
      ),
    ),
    section(
      title: "Achievements",
      content: (
        subSection(
          title: "Highlights",
          content: list(
            [*1st Place* — NUBTK Programming Contest 2022 (university-wide competition)],
            [*ACM ICPC* Dhaka Qualifying Round 2022],
            [Published *50+* iOS technical articles on AppsDeveloperBlog, reaching a global developer audience],
            [Built a *2000+* LinkedIn following and *3000+* monthly blog readers through consistent iOS content],
          ),
        ),
      ),
    ),
    section(
      title: "Certification",
      content: (
        subSection(
          title: "Professional Development",
          content: list(
            [Meta iOS Developer Professional Certificate - Coursera],
            [SwiftUI Advanced Architecture - Swiftful Thinking],
          ),
        ),
      ),
    )
  ),
  sidebar: (),
)
