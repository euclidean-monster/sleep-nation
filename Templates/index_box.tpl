<!-- CSS CATEGORIES ---------->
<style type="text/css">
  
  /* CSS ZONE REGLE/CONTEXTE/ETC */
/*suppression des éléments inutiles */
  #c1 .avatar_container, #c1 .forum_avatar, #c1 .forum_subbox, #c1 #subforum, #c1 .forum_stats {display: none;}
  
  #c1 .wrap_forum { display: grid; grid-auto-rows: 15px;width:100%; justify-content: space-between;margin-top: 0px; }
  #c1 .forum {width:700px;}
  
/*titre du forum*/
  #c1 .forumtitle display: inline-block;width:90%;padding: 0;border-bottom: none !important;
  text-transform: lowercase;float: left;line-height:10px;margin: 0;text-align: left;}
  #c1 .forumtitle a {display: inline-block;font-size: var(--title-size);font-family: var(--font2);}

/*placement des blocs*/
  #c1 .forum_content {padding:0;display:grid;gap:5px;grid-template-rows: 31px;grid-template-columns: 52px 125px auto;grid-template-areas:'a b c';}
  
/*mini-description*/
  #c1 .forum_desc {grid-area: b;display:flex;justify-content:left;height:auto;overflow:hidden;}
  #c1 .desc_display {display:none;}
  
/*image nouveau message*/  
  #c1 .forum-img {grid-area: a;justify-self: right;width:52px;height:30px;}
  #c1 .forum-img img {width:52px;height:30px;} 
  
/*dernier message*/
  #c1 .forum_lastpost {width:auto;height:30px;text-align: right;font-size: var(--little-size);
  display:flex;flex-wrap: wrap;align-content: center;justify-content:right;}
  #c1 .lastpost {border:none;margin-bottom:0;}
  #c1 .forum_lastpost br, #c3 .forum_lastpost br {display: none;}
  #c1 .lastpost_auteur {display:inline;}
  #c1 .lastpost_auteur::before {content:" par ";}
  #c1 .lastpost_date {display:inline;}
  #c1 .lastpost_date::before {content:" ";}
    
/*css liens annexes*/
  #c1 .forum_wrap {display:flex;}
  #c1 .quick_links {display: block;float: right;width: 210px; border: var(--border-cat);margin-left:10px;}
  #c1 .quick_links_style span {display:flex;font-size: var(--little-size);text-transform: uppercase;border-bottom: var(--border-cat);padding:7px 10px;} 
  #c1 .quick_links_style span a {color:var(--textEncadre);}
  #c1 .quick_links_style span a:hover {color:var(--textLinkhover);font-style: italic;}
  #c1 .quick_links_style span:last-child {border-bottom: none;}
  
  
  /* CSS GENERAL */
/* marge de la catégorie */
  .category {margin-bottom: 25px;}

/* Titre d'une catégorie */
  .cate_title h2 {display: block;text-align: center;font-size: var(--special-size);text-transform: uppercase;margin: 10px 0 20px;padding: 5px 0;
  font-family: var(--font2);font-weight: 400;font-style: normal;border-top: var(--border-cat);border-bottom: var(--border-cat);}
  
/*suppresion liens annexes*/
  .quick_links { display: none; }

/* conteneur d'un forum*/
  .forum {margin-bottom: 10px;padding: 10px 15px 15px;border: var(--border-cat);}
  .forum:last-child {margin-bottom: 0;}

/* titre d'un forum */
  a.forumtitle {font-size: var(--title-size);font-family: var(--font2);font-weight: 400;text-transform: uppercase;}

/* placement des blocs */
  .forum_content {display: flex;gap: 10px;align-items: center;padding: 10px;}

/*image statut du forum */
  .forum-img {width: 110px;height: 64px;background-color: var(--neutralDark);}
  .forum-img img {width: 110px;height: 64px;}

/*x sujets - x messages*/
  .forum_stats {border-top: var(--border-cat);margin-top: 5px;padding-top: 5px;font-weight: 600;
  font-size: var(--mini-size);text-transform: uppercase;text-align:center;}

/*description du forum*/
  .forum_desc {flex: 1;max-height: 92px;padding-right:3px;overflow: auto;align-self: center;text-align: justify;}

/*conteneur avatar du dernier posteur*/
  .forum_avatar {width: 57px;height: 92px;}
  .forum_avatar img {background: var(--neutralDark);width: 57px;height: 92px;object-fit: cover;object-position: center;}

/*dernier message*/
  .forum_lastpost {width: 135px;height:92px;text-align: center;font-size: var(--little-size);flex-wrap: wrap;align-content: center;}
  .forum_lastpost br { display: block; }
  .lastpost_auteur { display: block;text-align:center; }
  .lastpost_auteur::before { content:"  "; }
  .lastpost_date { display:block;text-transform:lowercase; }
  .lastpost_date::before { content:""; }

/* sous forums */
  .forum_subbox {border: var(--border-cat);width: 150px;height: 92px;overflow: auto;}
  #subforum a {display: flex;font-size: var(--little-size);text-transform: uppercase;border-bottom: var(--border-cat);padding: 5px 10px;}
  #subforum {font-size: 0; /*permet de retirer la virgule*/}
  #subforum a :last-child {border-bottom: none;}

</style>

<!----------------------------------------------->
<!-- CATEGORIES -------------->

<!-- Conteneur d'une catégorie -->
<!-- BEGIN catrow -->

<!-- BEGIN tablehead -->
<div class="category" id="{catrow.tablehead.ID}">

  <!-- Titre catégorie -->
  <div class="cate_title">{catrow.tablehead.L_FORUM}</div>
  
  <div class="forum_wrap">

    <!-- Conteneur liste des forums -->
    <div class="forums">

<!-- END tablehead -->


        <!-- BEGIN forumrow -->
        <!-- Affichage d'un forum -->
        <div class="forum row {catrow.forumrow.FOLDER_CLASSNAME}">
            <div class="forum_title">
              <!-- Titre forum -->
              <a href="{catrow.forumrow.U_VIEWFORUM}" class="forumtitle">{catrow.forumrow.FORUM_NAME}</a>
          </div>

          <div class="forum_content">
            
            <div class="content_img">
              <!-- Staut du forum : sans réponse, nouvelle réponse, vérouillé -->
              <img class="forum-img" src="{catrow.forumrow.FORUM_FOLDER_IMG}" />
            
              <!-- Compteur sujets et message -->
              <div class="forum_stats">{catrow.forumrow.TOPICS}&nbsp;suj&nbsp; • &nbsp;{catrow.forumrow.POSTS}&nbsp;mess</div>
            </div>

            <!-- Description -->
            <div class="forum_desc">{catrow.forumrow.FORUM_DESC}</div>
            
            <div class="forum_subbox">

              <!-- Liens de sous-forum -->
              <div id="subforum">{catrow.forumrow.L_LINKS}{catrow.forumrow.LINKS}</div>

            </div>
            
            <div class="forum_avatar lastpostavatar">
              <!-- Avatar du dernier posteur -->
              <!-- BEGIN avatar -->
              {catrow.forumrow.avatar.LAST_POST_AVATAR}
              <!-- END avatar -->
            </div>
            
            <!-- Conteneur du du dernier message -->
            <div class="forum_lastpost">
              <div class="lastpost">
                <!-- Tire du dernier message -->
                    <!-- BEGIN switch_topic_title -->
                    <a href="{catrow.forumrow.U_LATEST_TOPIC}" title="{catrow.forumrow.LATEST_TOPIC_TITLE}"
                    class="lastpost_link">{catrow.forumrow.LATEST_TOPIC_NAME}</a>
                    <!-- END switch_topic_title -->

                    <!-- Date et auteur -->
                    <div class="lastpost_auteurdate">{catrow.forumrow.USER_LAST_POST}</div>
              </div>
            </div>

            </div>

        </div>
        <!-- Fin affichage d'un forum -->
        <!-- END forumrow -->

        <!-- BEGIN tablefoot -->
    </div>
    <!-- Fin liste des forums -->
  
    <!-- Liens annexes -->
    <div class="quick_links">
      <div class="quick_links_style">
        <span><a href="#" target="_blank">règlement</a></span>
        <span><a href="#" target="_blank">contexte</a></span>
        <span><a href="#" target="_blank">beryl lake</a></span>
        <span><a href="#" target="_blank">folklore</a></span>
        <span><a href="#" target="_blank">troubles du sommeil</a></span>
        <span><a href="#" target="_blank">les 80's et 90's</a></span>
        <span><a href="#" target="_blank">requêtes</a></span>
        <span><a href="#" target="_blank">absences</a></span>
        <span><a href="#" target="_blank">partenariats</a></span>
      </div>
    </div>
    <!-- Fin liens annexes -->
    
  </div>

</div>
<!-- END tablefoot -->
<!-- END catrow -->
<!-- Fin du conteneur de catégorie -->


<!----------------------------------------------->
<!-- BARRE DE GESTION -------------->

<div class="links_bar1">
  <div class="links_background">
    <!-- BEGIN switch_on_index -->
    <a href="{U_TODAY_ACTIVE}">{L_TODAY_ACTIVE}</a>&nbsp;•&nbsp;
    
    <!-- BEGIN switch_delete_cookies -->
    <a class="right" href="{switch_on_index.switch_delete_cookies.U_DELETE_COOKIES}" rel="nofollow">{switch_on_index.switch_delete_cookies.L_DELETE_COOKIES}</a>
    <!-- END switch_delete_cookies -->
    <!-- END switch_on_index --> 
    
    <!-- BEGIN switch_user_logged_in -->
    <span>
      
      <!-- Voir ses messages -->
      <a href="{U_SEARCH_SELF}">Voir ses messages</a><br /> 
      <!-- Messages depuis la dernière visite -->
      <a id="lastvisit_posts" href="{U_SEARCH_NEW}">Messages depuis la dernière visite</a>&nbsp;•&nbsp;
      
      <!-- Messages sans réponses -->
      <a id="posts_unanswered" href="{U_SEARCH_UNANSWERED}">Message sans réponses</a> 

    </span>    
    
    <!-- Marquer les forums comme lus -->
    <a class="right" id="mark_read" href="{U_MARK_READ}" accesskey="m">Tout marquer comme lu</a>
  
    <!-- END switch_user_logged_in -->
  </div>
</div>
