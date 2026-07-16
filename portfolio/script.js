const reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

// ===== Drifting night-sky star particles =====
const canvas = document.getElementById('sakura');

if (canvas && !reduceMotion) {
    const ctx = canvas.getContext('2d');
    const COLORS = ['#4cc9f0', '#8b7cf8', '#93c5fd', '#e0f2fe'];
    let stars = [];
    let w, h;

    function resize() {
        w = canvas.width = window.innerWidth;
        h = canvas.height = window.innerHeight;
        const count = Math.min(36, Math.floor(w / 42));
        stars = Array.from({ length: count }, () => spawn(true));
    }

    function spawn(anywhere) {
        const isStar = Math.random() < 0.3;
        return {
            x: Math.random() * w,
            y: anywhere ? Math.random() * h : -14,
            size: isStar ? 4 + Math.random() * 4 : 1.2 + Math.random() * 2.2,
            isStar,
            speedY: 0.25 + Math.random() * 0.55,
            drift: 0.15 + Math.random() * 0.4,
            phase: Math.random() * Math.PI * 2,
            twinkle: Math.random() * Math.PI * 2,
            color: COLORS[Math.floor(Math.random() * COLORS.length)],
        };
    }

    function drawStar(size) {
        // 4-point sparkle
        ctx.beginPath();
        ctx.moveTo(0, -size);
        ctx.quadraticCurveTo(0, 0, size, 0);
        ctx.quadraticCurveTo(0, 0, 0, size);
        ctx.quadraticCurveTo(0, 0, -size, 0);
        ctx.quadraticCurveTo(0, 0, 0, -size);
        ctx.fill();
    }

    function draw() {
        ctx.clearRect(0, 0, w, h);
        for (const p of stars) {
            p.phase += 0.01;
            p.twinkle += 0.04;
            p.x += Math.sin(p.phase) * p.drift;
            p.y += p.speedY;

            if (p.y > h + 16) Object.assign(p, spawn(false));

            ctx.save();
            ctx.translate(p.x, p.y);
            ctx.fillStyle = p.color;
            ctx.globalAlpha = 0.35 + Math.abs(Math.sin(p.twinkle)) * 0.5;
            ctx.shadowColor = p.color;
            ctx.shadowBlur = p.isStar ? 10 : 6;
            if (p.isStar) {
                drawStar(p.size);
            } else {
                ctx.beginPath();
                ctx.arc(0, 0, p.size, 0, Math.PI * 2);
                ctx.fill();
            }
            ctx.restore();
        }
        requestAnimationFrame(draw);
    }

    resize();
    window.addEventListener('resize', resize, { passive: true });
    requestAnimationFrame(draw);
}

// ===== Reveal-on-scroll animation =====
if (!reduceMotion) {
    const revealTargets = document.querySelectorAll(
        '.section-head, .tl-item, .project-card, .skill-card, .highlight-card, .contact-card, .stats-band'
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
