export const review_theory = () => {
  // const fake_post        = document.querySelector("#fake_post");
  
  document.querySelector("#fake_post").addEventListener('click', () => {
    const quentin_comments = document.querySelector("#quentin_comments");
    quentin_comments.classList.toggle("active_comment");
  });
  
}

