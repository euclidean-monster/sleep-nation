/**
 * Script de séparation de la date et du pseudo du dernier message posté sur les catégories
 * Par 'Christa Lostmindy, pour le Blank Theme
 */

document.addEventListener('DOMContentLoaded', () => {
    const CONFIG_LASTPOST = {
        selecteur: 'lastpost_auteurdate',
        classeDate : 'lastpost_date',
        classePseudo : 'lastpost_auteur'
    };

    document.querySelectorAll(`.${CONFIG_LASTPOST.selecteur}`).forEach(data => {
        const elements = data.innerHTML.split('<br>');
  
        const infoDate = document.createElement('div');
        infoDate.classList.add(CONFIG_LASTPOST.classeDate);

        const infoPseudo = document.createElement('div');
        infoPseudo.classList.add(CONFIG_LASTPOST.classePseudo);
        
        if (elements.length === 2) {
            infoDate.innerHTML = elements[0];
            infoPseudo.innerHTML = elements[1];
            data.replaceWith(infoDate, infoPseudo);
        }
    });
});
