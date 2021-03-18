export const ongletsAnimeShow = () => {
  const onglets = document.querySelectorAll('.onglets');
  const contenu = document.querySelectorAll('.container-contenu-com-pred-section-anime-show');
  
  let index = 0;
  
  onglets.forEach(onglet => {
    onglet.addEventListener('click', () => {
      if(onglet.classList.contains('activeOnglet')){
        return;
      } else {
        onglet.classList.add('activeOnglet');
      }
  
      index = onglet.getAttribute('data-anim');
      console.log(index);
  
      for(let i = 0; i < onglets.length; i++) {
        if(onglets[i].getAttribute('data-anim')
        != index) {
          onglets[i].classList.remove('activeOnglet');
        }
      }
  
      for(let j = 0; j < contenu.length; j++) {
        if(contenu[j].getAttribute('data-anim') == index) {
          contenu[j].classList.add('activeContenu');
        } else {
          contenu[j].classList.remove('activeContenu');
        }
      }
    });
  });
}
