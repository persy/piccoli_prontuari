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