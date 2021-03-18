export const heart_animation = () => {
    const like = document.querySelectorAll('.like');
    like.forEach((element) => {
        let countLike = parseInt(element.dataset.likeState, 10);
        if (countLike === 1) element.classList.add('filled-like');
        element.addEventListener('click', () => {
        
            if(countLike === 0) {
                element.classList.add('anim-like');
                countLike = 1;
                element.style.backgroundPosition = 'right';
            } else {
                countLike = 0;
                element.style.backgroundPosition = 'left';
            }
        
        });
    })
};
