// ===== Reveal-on-scroll animation =====
const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

if (!reduceMotion) {
    const revealTargets = document.querySelectorAll(
        '.section-head, .tl-item, .project-card, .skill-card, .highlight-card, .contact, .stats-band'
    );
    revealTargets.forEach((el) => el.classList.add('reveal'));

    const revealer = new IntersectionObserver((entries) => {
        entries.forEach((entry) => {
            if (entry.isIntersecting) {
                entry.target.classList.add('visible');
                revealer.unobserve(entry.target);
            }
        });
    }, { threshold: 0.1, rootMargin: '0px 0px -40px 0px' });

    revealTargets.forEach((el) => revealer.observe(el));

    // Stagger cards within the same grid for a nicer cascade
    document.querySelectorAll('.project-grid, .skills-grid, .highlight-row').forEach((grid) => {
        [...grid.children].forEach((card, i) => {
            card.style.transitionDelay = `${i * 70}ms`;
        });
    });
}
