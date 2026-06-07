document.addEventListener("DOMContentLoaded", () => {
    const parole = ["Gratuiti", "Liberi", "Condivisibili", "Modificabili"];
    const target = document.getElementById("carousel-text");
    if (!target) return;

    let parolaIndex = 0;
    let charIndex = 0;
    let isDeleting = false;

    function gestisciCarousel() {
        const parolaCorrente = parole[parolaIndex];
        
        if (isDeleting) {
            target.textContent = parolaCorrente.substring(0, charIndex - 1);
            charIndex--;
        } else {
            target.textContent = parolaCorrente.substring(0, charIndex + 1);
            charIndex++;
        }

        let velocita = isDeleting ? 40 : 80;

        if (!isDeleting && charIndex === parolaCorrente.length) {
            velocita = 1500;
            isDeleting = true;
        } else if (isDeleting && charIndex === 0) {
            isDeleting = false;
            parolaIndex = (parolaIndex + 1) % parole.length;
            velocita = 400;
        }

        setTimeout(gestisciCarousel, velocita);
    }

    setTimeout(gestisciCarousel, 500);
});

const canvas = document.getElementById('constellation');
if (canvas) {
    const ctx = canvas.getContext('2d');
    let particles = [];
    const connectionDist = 130;

    function resize() {
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
    }
    window.addEventListener('resize', resize);
    resize();

    class Particle {
        constructor() {
            this.x = Math.random() * canvas.width;
            this.y = Math.random() * canvas.height;
            this.vx = (Math.random() - 0.5) * 0.3; // Velocità ridotta per un effetto rilassante
            this.vy = (Math.random() - 0.5) * 0.3;
        }
        update() {
            this.x += this.vx;
            this.y += this.vy;
            if (this.x < 0 || this.x > canvas.width) this.vx *= -1;
            if (this.y < 0 || this.y > canvas.height) this.vy *= -1;
        }
    }

    function init() {
        particles = [];
        const count = Math.floor((canvas.width * canvas.height) / 30000); // Quantità proporzionale allo schermo
        for (let i = 0; i < count; i++) {
            particles.push(new Particle());
        }
    }
    init();
    window.addEventListener('resize', init);

    function animate() {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        
        for (let i = 0; i < particles.length; i++) {
            particles[i].update();
            
            ctx.beginPath();
            ctx.arc(particles[i].x, particles[i].y, 2.5, 0, Math.PI * 2);
            ctx.fillStyle = '#CBD5E1';
            ctx.fill();

            for (let j = i + 1; j < particles.length; j++) {
                const dx = particles[i].x - particles[j].x;
                const dy = particles[i].y - particles[j].y;
                const dist = Math.sqrt(dx * dx + dy * dy);

                if (dist < connectionDist) {
                    ctx.beginPath();
                    ctx.moveTo(particles[i].x, particles[i].y);
                    ctx.lineTo(particles[j].x, particles[j].y);
                    ctx.strokeStyle = `rgba(203, 213, 225, ${1 - dist / connectionDist})`;
                    ctx.lineWidth = 0.7;
                    ctx.stroke();
                }
            }
        }
        requestAnimationFrame(animate);
    }
    animate();
}