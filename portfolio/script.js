// ===== Cursor spotlight =====
const spotlight = document.querySelector('.spotlight');
if (spotlight && window.matchMedia('(pointer: fine)').matches) {
    window.addEventListener('mousemove', (e) => {
        spotlight.style.setProperty('--mx', `${e.clientX}px`);
        spotlight.style.setProperty('--my', `${e.clientY}px`);
    }, { passive: true });
}

// ===== Scroll-spy: highlight sidebar nav for the section in view =====
const navLinks = document.querySelectorAll('.nav-link');
const sections = [...navLinks]
    .map((link) => document.querySelector(link.getAttribute('href')))
    .filter(Boolean);

if (sections.length) {
    const spy = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (!entry.isIntersecting) return;
            navLinks.forEach((link) => {
                link.classList.toggle('active', link.getAttribute('href') === `#${entry.target.id}`);
            });
        });
    }, { rootMargin: '-30% 0px -60% 0px' });

    sections.forEach((section) => spy.observe(section));
}

// ===== Reveal-on-scroll animation =====
const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

if (!reduceMotion) {
    const revealTargets = document.querySelectorAll('.panel, .footer');
    revealTargets.forEach((el) => el.classList.add('reveal'));

    const revealer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
                revealer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.08, rootMargin: '0px 0px -60px 0px' });

    revealTargets.forEach((el) => revealer.observe(el));
}
