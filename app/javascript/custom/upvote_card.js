export const upvote = () => {
 
  var counter = 0;
  
  $("#plus").click(function(){
    counter++;
    $("#count").text(counter);
  });
  
  $("#minus").click(function(){
    counter--;    
    $("#count").text(counter);
  });
}
