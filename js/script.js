function glowna() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
      document.getElementById("main").innerHTML = this.responseText;
      }
    xhttp.open("GET", "js/ajax/glowna.txt", true);
    xhttp.send();
  }
  function lista() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
      document.getElementById("main").innerHTML = this.responseText;
      }
    xhttp.open("GET", "js/ajax/lista.php", true);
    xhttp.send();
  }
  function koszyk() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
      document.getElementById("main").innerHTML = this.responseText;
      }
    xhttp.open("GET", "js/ajax/koszyk.txt", true);
    xhttp.send();
  }
  function kontakt() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
      document.getElementById("main").innerHTML = this.responseText;
      }
    xhttp.open("GET", "js/ajax/kontakt.txt", true);
    xhttp.send();
  }
  function faq() {
    const xhttp = new XMLHttpRequest();
    xhttp.onload = function() {
      document.getElementById("main").innerHTML = this.responseText;
      }
    xhttp.open("GET", "js/ajax/faq.txt", true);
    xhttp.send();
  }