const like = document.querySelectorAll('.like');


like.forEach((element) => {
    let countLike = 0;
    element.addEventListener('click', () => {
    
        if(countLike === 0) {
            element.classList.toggle('anim-like');
            countLike = 1;
            element.style.backgroundPosition = 'right';
        } else {
            countLike = 0;
            element.style.backgroundPosition = 'left';
        }
    
    });
    
    element.addEventListener('animationend', () => {
        element.classList.toggle('anim-like');
    })
})
