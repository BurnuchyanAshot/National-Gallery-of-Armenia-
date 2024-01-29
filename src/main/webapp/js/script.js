function welcomeBoxHover() {
    let svg1 = document.getElementById("white-arrow")
    let svg2 = document.getElementById("black-arrow")
    svg1.style.display = "none"
    svg2.style.display = "block"
}
function welcomeBoxNoHover() {
    let svg1 = document.getElementById("white-arrow")
    let svg2 = document.getElementById("black-arrow")
    svg1.style.display = "block"
    svg2.style.display = "none"
}


// const animatedDiv = document.getElementById('collectionca');

// const observer = new IntersectionObserver(entries => {
//     entries.forEach(entry => {
//         if (entry.isIntersecting) {
//             animatedDiv.classList.add('appeared');
//         }
//     });
// }, {
//     threshold: 0.6
// });
// observer.observe(animatedDiv);


var copy = document.querySelector(".marque-content").cloneNode(true);
document.querySelector(".marque-animation").appendChild(copy);



const scrollToTopButton = document.getElementById('scrollicon');
scrollToTopButton.addEventListener('click', function () {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
});
