<limerick>


  <p>I can see in my magic crystal ball that in <em>{ numberOfYears }</em> years you will live in a <em>{ home }</em> you will have <em>{ numberOfChildren }</em> children and you will be married to <em>{ famousPerson }</em>. You will be <em> { emotion ? "happy" : "sad"} </em>.</p>




<script>

this.numberOfYears = (Math.floor(Math.random()*30) + 1);

var number = (Math.floor(Math.random()*6));
var typeOfHome = ["house", "apartment", "mansion", "cardboad box", "penthouse", "castle"];

this.home = typeOfHome[number];



this.numberOfChildren = 4;
this.famousPerson = "Brad Pitt";
this.emotion = (Math.random() < 0.5);

</script>


<style>
</style>

</limerick>
