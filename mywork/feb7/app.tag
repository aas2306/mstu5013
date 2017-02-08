<app>
  <div style={"background-color:" + backgroundColor}>
    <div>
      <h1>PREVIEW</h1>
      <img src={ imageURL }>
      <h2>{ imageTitle }</h2>
      <p>{ imageBody }</p>
    </div>
  </div>

  <div>
    <h1>EDITOR</h1>
    <div> <!-- inputs -->
      <form>
        TITLE:
        <input type="text" ref="titleEl" placeholder="Title">
        <br>
        IMAGE:
        <input type="text" ref="urlEl" placeholder="Image URL">
        <br>
        BODY:
        <textarea ref="bodyEl" rows="8" cols="80" placeholder="Your Story"></textarea>
        <br>
        <input type="radio" ref="light" value="light">Light
        <input type="radio" ref="dark" onclick={ changeColor } value="dark">Dark
        <!-- can't get this to work -->
        <br>
        <button type="button" name="background" onclick={ resetCard }>Reset</button>
        <button type="button" name="background" onclick={ updateCard }>Update</button>
      </form>
    </div>
  </div>


<!-- SCRIPT -->

  <script>
    this.imageURL = "http://placehold.it/50x50"
    this.imageTitle = "Title";
    this.imageBody = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis fuga culpa corporis deserunt, perspiciatis totam expedita alias, adipisci sunt, dolorem quasi earum unde. Earum, consectetur? Tempora debitis porro, quibusdam eaque.";
    this.backgroundColor = "#EEE"

    this.changeColor = function() {
      this.backgroundColor = "#CCC";
    }

    this.updateCard = function() {
      this.imageURL = this.refs.urlEl.value;
      this.imageTitle = this.refs.titleEl.value;
      this.imageBody = this.refs.bodyEl.value;
    }


    this.resetCard = function() {
      this.imageURL = "http://placehold.it/100x100";
      this.imageTitle = "Title";
      this.imageBody = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis fuga culpa corporis deserunt, perspiciatis totam expedita alias, adipisci sunt, dolorem quasi earum unde. Earum, consectetur? Tempora debitis porro, quibusdam eaque.";
      this.refs.urlEl.value = "";
      this.refs.titleEl.value = "";
      this.refs.bodyEl.value = "";
      this.backgroundColor = "#EEE";
    }


  </script>

  <style>
    :scope {
      font-family: 'Helvetica';
    }
    /*.previewBox {
      background-color: #CCC;
    }*/
  </style>
</app>
