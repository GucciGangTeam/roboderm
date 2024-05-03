<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Roboderm: пополнение набора данных</title>
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
          <a class="nav-link adapt_text" href="../analysis/tocheck">Распознавание заболеваний</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active adapt_text" href="#">Загрузка изображений в набор данных</a>
        </li>

      </ul>
    </div>
  </div>
  </nav>
  </header>


  <div class="logotip">
      <!-- <img src = "/robodermWeb/src/main/webapp/WEB-INF/viev/Image/logotip.png" alt="logotip"> -->
    <img src = "${pageContext.request.contextPath}/images/logotip.png" class="image-fluid" style="max-width: 30%;" alt="logotip">
  </div>

  <div class="help2_info adapt_text">
  <h5>На этой странице Вы можете пополнить набор данных, загрузив фотографию с указанным кожным заболеванием, тем самым 
    Вы помогаете проекту: нейросеть научится точнее определять кожные заболевания.</h5>
  </div>
  
  <div class="container">
    <div class="row">
      <div class="col-lg-7">
        <div class="container-form ">
          <form action="../diagnoses/downloaded" method="post" enctype="multipart/form-data">

            <select name="dir_name">
              <option value="Acne">Acne</option>
              <option value="Actinic Keratosis">Actinic Keratosis</option>
              <option value="Atopic Dermatit">Atopic Dermatit</option>
              <option value="Contact Dermatitis">Contact Dermatitis</option>
              <option value="Eczema">Eczema</option>
              <option value="Hemangioma">Hemangioma</option>
              <option value="Herpes">Herpes</option>
              <option value="Psoriasis">Psoriasis</option>
              <option value="Rosacea">Rosacea</option>
              <option value="Scabies">Scabies</option>
              <option value="Urticaria">Urticaria</option>
              <option value="Vasculitis">Vasculitis</option>
              <option value="Warts">Warts</option>
            </select>
            <br>
            <br>
<%--            <input type="file" name="myfile1">--%>
            <div class="image-upload-container">
              <img src="${pageContext.request.contextPath}/images/download2.png" class="upload-image">
              <input type="file" name="myfile1" class="file-input">
            </div>
            <br>
            <br>
            <button type="submit" class="form_btn">Отправить</button>
          </form>
        </div>  
      </div>
    <div class="col-lg-5" >
      <div class="container_help py-4">
        <h4 class="adapt_text">Инструкция по загрузке изображения в набор данных:</h4>
        <br>
        <ol class="adapt_text_less">
          <li> Из выпадающегося списка выберите наименование заболевания</li>
          <li> Нажмите на кнопку "Выбор файла" и выберите нужное изображение в формате jpg</li>
          <li> Нажмите кнопку "Отправить"</li>
        </ol>
      </div>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</div>
</body>
</html>
