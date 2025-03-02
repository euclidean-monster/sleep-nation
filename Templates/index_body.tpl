{JAVASCRIPT}

<!----------------------------------------------->
<!-- CONNEXION RAPIDE (haut) -------------->


<!-- BEGIN switch_user_login_form_header -->
<div class="panel">
    <form action="{S_LOGIN_ACTION}" method="post" name="form_login">
        <div class="user_login_form center">
            <!-- Nom utilisateur -->
            <label>{L_USERNAME} : <input class="post" type="text" size="10" name="username" /></label> &nbsp;

            <!-- Mot de passe -->
            <label>{L_PASSWORD} : <input class="post" type="password" size="10" name="password" /></label> &nbsp;

            <!-- Check : connexion automatique -->
            <label>{L_AUTO_LOGIN} : <input class="radio" type="checkbox" name="autologin" {AUTOLOGIN_CHECKED} /></label> &nbsp;

            <!-- Bouton connexion -->
            {S_HIDDEN_FIELDS}<input class="mainoption button1" type="submit" name="login" value="{L_LOGIN}" />


        </div>
    </form>
</div>
<!-- END switch_user_login_form_header -->


<!----------------------------------------------->
<!-- PAGE D'ACCUEIL -------------->


<!-- BEGIN message_admin_index -->

    <!-- Titre de la PA -->
    <!-- BEGIN message_admin_titre -->
    {message_admin_index.message_admin_titre.MES_TITRE}
    <!-- END message_admin_titre -->

    <!-- Contenu de la PA -->
    <!-- BEGIN message_admin_txt -->
    {message_admin_index.message_admin_txt.MES_TXT}
    <!-- END message_admin_txt -->

<!-- END message_admin_index -->


<!----------------------------------------------->
<!-- CB (si affichée en haut) -------------->

{CHATBOX_TOP}


<!----------------------------------------------->
<!-- CATEGORIES -------------->
<!-- (template : index_box) -->

{BOARD_INDEX}


<!----------------------------------------------->
<!-- QUI EST EN LIGNE -------------->

<!-- BEGIN disable_viewonline -->
<div class="qeel">
  <div class="qeel-left"> 
    <!-- Derniers connectés 48h -->
    <div class="last_connected" id="last_connected">
      {L_CONNECTED_MEMBERS}
    </div>
    <!-- x membres / x messages -->
    <div class="qeel-stats">
      <span id="qeel_posts">{TOTAL_POSTS}</span>&nbsp; • &nbsp;<span id="qeel_members">{TOTAL_USERS}</span>
    </div>
  </div>

        
  <div class="qeel-middle">
    <!-- Groupes -->
    <div class="group-bloc">
      <a class="groups">Alpha</a>
      <a class="groups">Bêta</a>
      <a class="groups">Charlie</a>
      <a class="groups">Delta</a>
    </div>
    <!-- Crédits -->
    <div class="credits">Ici crédits de ce qui qui l’a fait et qui qui l’admistre avec l’optimisation qui va bien. Et encore un peu plus de blabla. Du blabla en plus pour tester le scroll des crédits et voir comment ça coupe le texte, toussa toussa quoi.</div>
  </div>
  
  <div class="qeel-right">
    <!-- Nouveau membre -->
    <div id="last_user">
      <span id="newest_user">
        {NEWEST_USER}<br /> vient d'arriver à Beryl Lake
      </span>
      <span id="lastuser_avatar"></span>
    </div>
    <!-- Connectés -->
    <div id="online_users">{LOGGED_IN_USER_LIST}</div>
    <!-- X connectés :: 1 membre, 0 invisible, 0 invité -->
    <div id="total_users">{TOTAL_USERS_ONLINE}</div>
  </div>
</div>



<!-- Changement de texte des informations du QEEL -->
<script type="text/javascript">
  $("#last_user").html($("#last_user").html().replace("L'utilisateur enregistré le plus récent est", ""));
  
  $("#qeel_posts").html($("#qeel_posts").html().replace("Nos membres ont posté un total de", ""));
  
  $("#qeel_members").html($("#qeel_members").html().replace("Nous avons", ""));
  $("#qeel_members").html($("#qeel_members").html().replace("enregistrés", ""));
  
  $("#total_users").html($("#total_users").html().replace("Il y a en tout", ""));
  $("#total_users").html($("#total_users").html().replace("utilisateur en ligne", "connecté"));
  $("#total_users").html($("#total_users").html().replace("utilisateurs en ligne", "connectés"));
  
  $("#online_users").html($("#online_users").html().replace("Utilisateurs enregistrés :", "Connecté.e.s •"));
  
  $("#last_connected").html($("#last_connected").html().replace("Membres connectés au cours des 48 dernières heures :", "Connecté.e.s dernièrement •"));
</script>


<!-- Conteneur des infos CB -->
<!-- BEGIN switch_chatbox_activate -->
  
  <div class="panel">
      <!-- Nom de la CB -->
      <div class="h3"><a href="{S_JOIN_CHAT}" target="ChatBox">{CHATBOX_NAME}</a></div>
  
      <!-- Nombre et liste des connectés sur la CB -->
      {TOTAL_CHATTERS_ONLINE}&nbsp;:&nbsp;{CHATTERS_LIST}<br />
  
      <!-- BEGIN switch_chatbox_popup -->
      <!-- Lien pour rejoindre la CB -->
      <div id="chatbox_popup"></div>
      <script type="text/javascript">
          insertChatBoxPopup('{disable_viewonline.switch_chatbox_activate.switch_chatbox_popup.U_FRAME_CHATBOX}', '{L_CLICK_TO_JOIN_CHAT}');
  
      </script>
      <!-- END switch_chatbox_popup -->
    
  </div>
<!-- END switch_chatbox_activate -->
<!-- Fin des infos CB -->


<!-- END disable_viewonline -->
<!-- Fin du QEEL -->


<!----------------------------------------------->
<!-- CB (si affichée en bas) -------------->
{CHATBOX_BOTTOM}



{AUTO_DST}
        
