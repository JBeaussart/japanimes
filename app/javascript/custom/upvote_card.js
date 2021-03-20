export const upvote = () => {
 
  var counter = 99;
  
  $("#plus").click(function(){
    counter++;
    $("#count").text(counter);
  });
  
  $("#minus").click(function(){
    counter--;    
    $("#count").text(counter);
  });
}
