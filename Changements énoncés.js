/** * Script pour ForumActif * Permet de changer les énoncés des citations/spoiler
 *
 * Placement : sur les sujets
 */

;$(function() {
 
  /* paramètres à régler */
  var spoiler_text = "Spoiler :";
  var a_ecrit_text = " a écrit :";
  /* fin des paramètres à régler */
 
  $(".postbody, #mpage-body-modern .post-content").find("dl.spoiler dt, div.spoiler div.spoiler_title, dl.codebox dt, div.codebox p, dl.codebox dt span.genmed b, blockquote cite").each(function() {
    if (!this.hasChildNodes() || this.firstChild.nodeType != 3) return;
 
    var c = this.firstChild, t = c.nodeValue.trim();
   
    t == "Spoiler:" && (c.nodeValue = spoiler_text) ||
    t == "Citation :" && (c.nodeValue = citation_text) ||
    t.substr(-9) == " a écrit:" && (c.nodeValue = t.substr(0, t.length - 9) + a_ecrit_text);
  }).filter('cite, dl.codebox dt span.genmed b').find('a[rel][href^="/u"]').each(function(){
    if($(this).text().substr(0,1)!="@")return;
    $(this.nextSibling).replaceWith(a_ecrit_text);
  });
});
