<!DOCTYPE html>
<html>
<body>

<form action="/action_page.php" onsubmit="return myFunction()">
  Nome: <input type="text" id="fname" size="20" name="fname"><br>
  <!--Age (from 1 to 100): <input type="text" id="age" size="20" name="age"><br>-->
  E-mail: <input type="text" id="email" size="20" name="mail"><br><br>
  <input type="submit" value="Submit"> 
</form>

<script>
function myFunction() {
  var at = document.getElementById("email").value.indexOf("@");
  var age = document.getElementById("age").value;
  var fname = document.getElementById("fname").value;
  submitOK = "true";

  if (fname.length > 20) {
    alert("The name may have no more than 10 characters");
    submitOK = "false";
  } 

  if (isNaN(age) || age < 1 || age > 100) {
    alert("The age must be a number between 1 and 100");
    submitOK = "false";
  }

  if (at == -1) {
    alert("Not a valid e-mail!");
    submitOK = "false";
  }

  if (submitOK == "false") {
    return false;
  }
}
</script>

</body>
</html>
