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
  contact: (
    contact(text: "iOS Developer"),
    contact(text: "ferdous.webdev@gmail.com", link: "mailto:ferdous.webdev@gmail.com"),
    contact(text: "(+88) 01401678150", link: "tel:+8801401678150"),
    contact(text: "ferdousmahmud.co", link: "https://ferdousmahmud.co"),
    contact(text: "github.com/ferdous19", link: "https://github.com/ferdous19"),
    contact(text: "linkedin.com/in/ferdous-mahmud", link: "https://www.linkedin.com/in/ferdous-mahmud")
  ),
  main: (
    section(
      title: "Experience",
      content: (
        subSection(
          title: "Appstick",
          titleEnd: "Khulna, Bangladesh",
          subTitle: "Software Engineer (iOS)",
          subTitleEnd: "(Sep 2023 – Current)",
          content: list(
            [Optimized an iOS ride-sharing app using Swift Concurrency and MapKit with real-time tracking via Socket.io, reducing memory usage by *40%* through efficient caching and thread management.],
            [Integrated on-device LLM capabilities using Apple's foundation models for dynamic ride-screen text generation and personalized user experiences.],
            [Built WidgetKit extensions and Live Activities for real-time ride tracking across Home Screen, Lock Screen, and Dynamic Island.],
            [Led feature development, conducted code reviews, and mentored junior developers on iOS best practices.],
            [Automated deployments using Fastlane-based CI/CD, reducing release time by *60%* and helping drive *70%* test coverage with SOLID-first engineering practices.]
          ),
        ),
      ),
    ),
    section(
      title: "Projects",
      content: (
        subSection(
          title: "Msar Amen",
          subTitle: "Swift, SwiftUI, Combine, MapKit, Socket.io, Firebase",
          subTitleEnd: "(Feb 2024 – Current)",
          content: list(
            [Led iOS architecture for a Saudi Arabia ride-sharing platform, implementing MVVM with Combine for reactive data flow and async/await for concurrent operations.],
            [Built real-time MapKit driver tracking via Socket.io, including route optimization and geofencing with CoreLocation.],
            [Integrated MyFatoorah payment SDK and Firebase/APNS push notifications for seamless transactions and engagement.]
          ),
        ),
        subSection(
          title: "Kotha",
          subTitle: "Swift, SwiftUI, Combine, WebRTC, Firebase",
          subTitleEnd: "(2024 – 2025)",
          content: list(
            [Contributed to Bangladesh's leading homegrown social media and marketplace platform used by millions across web and mobile.],
            [Built TikTok-style short video feeds with AVFoundation and integrated FFMPEG for audio processing, background noise removal, and voice posts.],
            [Implemented real-time chat with backup, voice/video calling via WebRTC, and background-task support for offline scenarios.],
            [Integrated secure bKash payment for digital commerce with MVVM and Combine architecture.] 
          ),
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
      title: "Skills",
      content: (
        subSection(
          title: "Technical",
          content: [
            *Core iOS:* Swift, SwiftUI, UIKit, Xcode, CocoaPods, SPM\
            *Architecture & Patterns:* Async/Await, Combine, MVVM, MVC, SOLID\
            *AI/ML:* CoreML, On-device LLM, Apple Intelligence, Natural Language\
            *Networking & Data:* REST API, URLSession, Alamofire, CoreData, SwiftData, Firebase\
            *Quality & Delivery:* XCTest, Unit Testing, Git/GitHub, Fastlane, CI/CD
          ],
        ),
      ),
    ),
    section(
      title: "Achievements",
      content: (
        subSection(
          title: "Highlights",
          content: list(
            [1st Place - NUBTK Programming Contest],
            [ACM ICPC Dhaka Qualifying Round 2022],
            [Published *50+* iOS technical articles on AppsDeveloperBlog for a global audience],
            [Solved *250+* algorithmic problems on LeetCode and Codeforces],
            [Built a *2000+* LinkedIn following by sharing iOS development insights],
            [Reached *3000+* monthly visitors on an iOS development blog],
            [Event Head - NUBTK CSE Fest 2022]
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
            [Intro to Linux Shell Scripting - Udemy]
          ),
        ),
      ),
    )
  ),
  sidebar: (),
)
