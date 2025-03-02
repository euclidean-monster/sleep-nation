// PLACEMENT : sur toutes les pages

$(function(){

  // BOUTON DE SUJET 
   $('.newtopic_button').replaceWith("Nouveau"); // Ouvrir un nouveau sujet
   $('.reply_button').replaceWith("Répondre"); // Répondre au sujet
  
   $('.newpm_button img').replaceWith("Nouveau message privé"); // Envoyer un nouveau MP
   $('.replypm_button img').replaceWith("Répondre au message"); // Répondre au MP
  
  // BOUTON EDITION DE MESSAGE
   $('.i_icon_quote').replaceWith("Citer"); // Bouton "citer"
   $('#i_icon_quote').replaceWith("Citer"); // Bouton "citer" dans les MP
   $('.i_icon_edit').replaceWith("Editer"); // Bouton "éditer"
   $('.i_icon_delete').replaceWith("Supprimer"); // Bouton "supprimer"
   $('#i_icon_delete').replaceWith("Supprimer"); // Bouton "supprimer" dans les MP et sondage
   $('.i_icon_ip').replaceWith("IP"); // Bouton "IP"
  
});
