<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>WebApp</title>
  <style>
    .container{
      width: 30%;
      border: 1px solid black;
      margin: auto;
      padding: 20px;
      font-size: 20px;
    }

    #myform table tr td input{
      font-size: 20px;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>Registration Form</h1>
  <form action="RegistrationServlet" method="post">
    <table>
      <tr>
        <td>Enter your name : </td>
        <td><input type="text" name="user_name" placeholder="Enter name" required></td>
      </tr>
      <tr>
        <td>Enter your email : </td>
        <td><input type="text" name="user_email" placeholder="Enter Email" required></td>
      </tr>
      <tr>
        <td>Enter your password: </td>
        <td><input type="password" name="user_password" placeholder="Enter password" required></td>
      </tr>
      <tr>
        <td>Select Gender : </td>
        <td><input type="radio" required name="user_gender" value="Male">Male &nbsp; &nbsp; <input type="radio" name="user_gender" value="Female">Female </td>
      </tr>

      <tr>
        <td>Select your course : </td>
        <td>
          <select required name="user_course">
            <option value="Java">Java</option>
            <option value="SpringBoot">SpringBoot</option>
            <option value="Python">Python</option>
            <option value="SQL">SQL</option>
            <option value="Php">Php</option>
          </select>
        </td>
      </tr>

      <tr>
        <td style="text-align: right"><input type="checkbox" value="checked" name="condition"></td>
        <td>I Agree to terms and conditions.</td>
      </tr>
      <tr>
        <td></td>
        <td>
          <button type="submit"> Register </button>
          <button type="reset"> Reset</button>
        </td>
      </tr>
    </table>


  </form>

</div>

</body>
</html>