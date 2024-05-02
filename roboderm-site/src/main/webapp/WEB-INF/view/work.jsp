<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Roboderm: программа для распознавания</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href=${pageContext.request.contextPath}/styles/style.css >
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container">
        <a class="navbar-brand adapt_text" href="../">Roboderm</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">

            <li class="nav-item">
              <a class="nav-link active adapt_text" href="#">Распознавание заболеваний</a>
            </li>
            <li class="nav-item">
              <a class="nav-link adapt_text" href="../diagnoses/todownload">Загрузка изображений в набор данных</a>
            </li>

          </ul>
        </div>
    </div>
  </nav>
  </header>

  <div class="logotip">
    <img src = "${pageContext.request.contextPath}/images/logotip.png" class="image-fluid" style="max-width: 30%;" alt="logotip">
  </div>


  <div class="container">
    <div class="row">
      <div class="col-lg-7">
        <div class="container-form">
          <h5 class="adapt_text">Пожалуйста, загрузите изображение в формате <i>jpg</i>, на котором имеется кожное заболевание:</h5>
          <br>
          <br>
          <form action="checked" method="post" enctype="multipart/form-data">
            
              <input type="file" name="myfile1">
              <br><br>
              <button type="submit">Отправить</button>
          </form>
        </div>  
      </div>
      <div class="col-lg-5" >
        <div class="container_help py-4">
          <h4 class="adapt_text">Если вам необходимо определить кожное заболевние по фотографии, то следуйте инструкции:</h4>
          <br>
          <ol class="adapt_text">
            <li> Нажмите на кнопку "Выбор файла" и выберите нужное изображение в формате <i>jpg</i></li>
            <li> Нажмите кнопку "Отправить" и ожидайте результата </li>
          <ol>
        </div>
      </div>
    </div>
  


    <div class="row">
      <div class="col-lg-4"><img align="left" height="300" width="400" src =  "${imageSrc}" alt="sent photo"></div>
      <div class="col-lg-4">
          ${res1}
      <br>
      <br>
      <br>
      <br>
          ${res2}
      <br>
      <br>
      <br>
      <br>
          ${res3}
      <br>
    </div>
  </div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
