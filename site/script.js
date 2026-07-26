// script.js — genera la griglia delle anteprime da AREAS (books.js) e gestisce
// il modale di dettaglio. Nessuna dipendenza esterna.

document.addEventListener("DOMContentLoaded", () => {
  const areasContainer = document.getElementById("areas");
  const modal = document.getElementById("book-modal");
  const modalCoverImg = document.getElementById("modal-cover-img");
  const modalTitle = document.getElementById("modal-title");
  const modalDescription = document.getElementById("modal-description");
  const modalPdfBtn = document.getElementById("modal-pdf-btn");
  const modalOnlineBtn = document.getElementById("modal-online-btn");
  const modalClose = document.getElementById("modal-close");

  // --- Genera la griglia ---
  for (const area of AREAS) {
    const areaTitle = document.createElement("div");
    areaTitle.className = "macro-area-title";
    areaTitle.textContent = area.title;
    areasContainer.appendChild(areaTitle);

    const grid = document.createElement("div");
    grid.className = "grid";

    for (const book of area.books) {
      const thumb = document.createElement("button");
      thumb.type = "button";
      thumb.className = `book-thumb ${book.slug}`;
      thumb.setAttribute("aria-label", `Apri dettagli: ${book.title}`);
      thumb.title = book.title;
      thumb.innerHTML = `
        <img src="${book.cover}" alt="Copertina ${book.title}" loading="lazy">
      `;
      thumb.addEventListener("click", () => openModal(book));
      grid.appendChild(thumb);
    }

    areasContainer.appendChild(grid);
  }

  // --- Modale ---
  function openModal(book) {
    modalCoverImg.src = book.cover;
    modalCoverImg.alt = `Copertina ${book.title}`;
    modalTitle.textContent = book.title;
    modalDescription.textContent = book.description;

    modalPdfBtn.href = book.pdfHref;

    // Riusa le classi .matematica/.fisica/.scienze-terra/... già definite in style.css
    // (impostano --materia-gradient e --hover-color). colorClass è distinto da slug:
    // vedi il commento in testa a books.js.
    modal.className = book.colorClass;

    const onlineActive = ONLINE_READING_ENABLED && !!book.onlineHref;

    if (onlineActive) {
      modalOnlineBtn.href = book.onlineHref;
      modalOnlineBtn.classList.remove("modal-btn-disabled");
      modalOnlineBtn.textContent = "Leggi online";
      modalOnlineBtn.removeAttribute("aria-disabled");
    } else {
      modalOnlineBtn.removeAttribute("href");
      modalOnlineBtn.classList.add("modal-btn-disabled");
      modalOnlineBtn.textContent = "Presto disponibile";
      modalOnlineBtn.setAttribute("aria-disabled", "true");
    }

    modal.dataset.subject = book.slug;
    modal.showModal();
  }

  modalClose.addEventListener("click", () => modal.close());

  // Chiudi cliccando sullo sfondo (fuori da .modal-content)
  modal.addEventListener("click", (e) => {
    if (e.target === modal) modal.close();
  });

  // <dialog> gestisce già Esc nativamente
});

//
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
    let lastWidth = window.innerWidth; // Memorizza la larghezza iniziale

    function setCanvasSize() {
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
    }

    class Particle {
        constructor() {
            this.x = Math.random() * canvas.width;
            this.y = Math.random() * canvas.height;
            this.vx = (Math.random() - 0.5) * 0.3;
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
        const count = Math.floor((canvas.width * canvas.height) / 30000);
        for (let i = 0; i < count; i++) {
            particles.push(new Particle());
        }
    }

    // Configurazione iniziale
    setCanvasSize();
    init();

    // Controlla il resize solo se cambia la larghezza (ignora lo scroll mobile)
    window.addEventListener('resize', () => {
        if (window.innerWidth === lastWidth) return; 
        lastWidth = window.innerWidth;
        setCanvasSize();
        init();
    });

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