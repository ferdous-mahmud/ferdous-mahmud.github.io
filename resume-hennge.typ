#import "template.typ": *

#set page(
  margin: (
    left: 7mm,
    right: 7mm,
    top: 6mm,
    bottom: 6mm,
  ),
)

#set text(font: "Mulish", size: 9pt)
#set list(indent: 0.6em, spacing: 0.25em)

#show: project.with(
  theme: rgb("#0F83C0"),
  name: "FERDOUS MAHMUD AKASH",
  title: "Front-End Developer · React & TypeScript",
  photo: none,
  contact: (
    contact(text: "ferdousm.de@gmail.com", link: "mailto:ferdousm.de@gmail.com"),
    contact(text: "Dhaka, Bangladesh · Open to relocation (Tokyo, Japan)", link: none),
    contact(text: "github.com/ferdous-mahmud", link: "https://github.com/ferdous-mahmud"),
    contact(text: "linkedin.com/in/ferdous19", link: "https://www.linkedin.com/in/ferdous19"),
  ),
  main: (
    section(
      title: "Technical Skills",
      content: (
        subSection(
          title: "Front-End",
          content: [
            *Languages & UI:* TypeScript, JavaScript, React, HTML, CSS\
            *Patterns:* Form validation, controlled components, client/server error handling\
            *Accessibility:* Semantic HTML, ARIA attributes, label/input association\
            *Layout:* Responsive design, component-based UI structure
          ],
        ),
        subSection(
          title: "Tools & Workflow",
          content: [
            *Build & Version Control:* Git/GitHub, Vite, npm\
            *APIs & Data:* REST APIs, fetch, JSON\
            *Development:* VS Code, Cursor, browser DevTools, CI/CD (Fastlane)
          ],
        ),
      ),
    ),
    section(
      title: "Selected Projects",
      content: (
        subSection(
          title: link("https://apps.apple.com/us/app/kotha/id1188060798", [Kotha — Social Media Platform]),
          subTitle: "Swift, SwiftUI, REST APIs, WebRTC",
          subTitleEnd: "(2024 – 2025)",
          content: list(
            [Shipped user-facing feed, chat, and commerce flows for a National ICT Award–winning social platform serving users across Bangladesh.],
            [Integrated REST APIs and real-time messaging with error handling, offline-aware UI states, and secure checkout.],
          ),
        ),
        subSection(
          title: link("https://ferdous-mahmud.github.io/", [Developer Portfolio Website]),
          subTitle: "HTML, CSS, JavaScript",
          subTitleEnd: "(2024 – 2025)",
          content: list(
            [Built and deployed a responsive portfolio with semantic HTML, mobile-first CSS, and scroll-driven section animations.],
            [Implemented smooth in-page navigation and intersection-observer effects for accessible, polished UX.],
          ),
        ),
        subSection(
          title: link("https://apps.apple.com/sa/app/msar-%D9%85%D8%B3%D8%A7%D8%B1/id1639771181", [Msar Amen — Ride-Sharing App]),
          subTitle: "Swift, SwiftUI, Combine, MapKit, Socket.io",
          subTitleEnd: "(Feb 2024 – Aug 2025)",
          content: list(
            [Built real-time driver tracking UI with MapKit and Socket.io, including route updates and geofencing with CoreLocation.],
            [Integrated payment SDK and push notifications for seamless transactions and live ride status updates.],
          ),
        ),
      ),
    ),
    section(
      title: "Experience",
      content: (
        subSection(
          title: link("https://www.filesure.in/", [FileSure]),
          titleEnd: "Dhaka, Bangladesh",
          subTitle: "Software Engineer (iOS)",
          subTitleEnd: "(Sep 2025 – Current)",
          content: list(
            [Built API layer with caching, pagination, and debounced search — cutting API calls by *50%* and bandwidth by *35%*.],
            [Shipped payment and document workflows with validation, error recovery, and clear user-facing status feedback.],
          ),
        ),
        subSection(
          title: link("https://appstick.com.bd/", [Appstick]),
          titleEnd: "Khulna, Bangladesh",
          subTitle: "Software Engineer (iOS)",
          subTitleEnd: "(Sep 2023 – Aug 2025)",
          content: list(
            [Delivered real-time ride-tracking UI with live map updates; reduced memory usage by *40%* via efficient state handling.],
            [Led feature development, code reviews, and CI/CD automation — reducing release time by *60%* with *70%* test coverage.],
          ),
        ),
      ),
    ),
    section(
      title: "Education",
      content: (
        subSection(
          title: "Northern University of Business & Technology Khulna",
          subTitle: "B.Sc., Computer Science & Engineering",
          subTitleEnd: "(Sep 2019 – Dec 2023)",
          content: [
            *CGPA:* 3.59 / 4.0 · *Coursework:* Web Development, Data Structures, Software Engineering, Human-Computer Interaction
          ],
        ),
      ),
    ),
  ),
  sidebar: (),
)
