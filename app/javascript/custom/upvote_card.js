export const upvote = () => {

  let counter = 99;
  const grandMaitre     = document.querySelector(".grand-maitre");

  document.querySelector("#plus").addEventListener('click', () => {
    counter++;
    document.querySelector("#count").textContent = (counter);
    grandMaitre.classList.toggle("active-show");
  });

  document.querySelector("#minus").addEventListener('click', () => {
    counter--;
    document.querySelector("#count").textContent = (counter);
  });
}
