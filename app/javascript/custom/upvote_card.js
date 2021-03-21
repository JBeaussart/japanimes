export const upvote = () => {

  let counter = 99;
  const grandMaitre     = document.querySelector(".grand-maitre");
  const initie = document.querySelector(".initie")

  document.querySelector("#plus").addEventListener('click', () => {
    counter++;
    document.querySelector("#count").textContent = (counter);
    initie.classList.toggle("inite-show");
    grandMaitre.classList.toggle("active-show");
  });

  document.querySelector("#minus").addEventListener('click', () => {
    counter--;
    document.querySelector("#count").textContent = (counter);
  });
}
