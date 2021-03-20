export const upvote = () => {
  const upvote = document.querySelector('.upvote_card');
  
  let counter = 0;
  
  upvote.addEventListener('click', () => {
    console.log(counter += 1)
  })

}
