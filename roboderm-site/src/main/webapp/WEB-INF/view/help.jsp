<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Roboderm: пополнение набора данных</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href=${pageContext.request.contextPath}/styles/style.css >
</head>
<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand" href="../">Roboderm</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">

        <li class="nav-item">
          <a class="nav-link" href="../analysis/tocheck">Распознавание заболеваний</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="#">Загрузка изображений в набор данных</a>
        </li>

      </ul>
    </div>
  </div>
  </nav>
  </header>

  <div class="logotip">
      <img src = "${pageContext.request.contextPath}/images/logotip.png" class="image-fluid" style="max-width: 30%;" alt="logotip">
  </div>


  <div class="help_info">
    <h5>Фотография загружена! Большое спасибо!</h5>
    </div>
  <div class="container">
    <div class="row">
      <div class="col-lg-7">
        <div class="container-form">
          <form method="post" enctype="multipart/form-data">
            <!-- {% csrf_token %} -->
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
            <input type="file" name="myfile1">
            <br>
            <br>
            <button type="submit">Отправить</button>
          </form>
        </div>
      </div>
      <div class="col-lg-5">
        <div class="container_help py-4">
          <h4>Инструкция по загрузке изображения в набор данных:</h4>
          <br>
          <ol>
            <li> Из выпадающегося списка выберите наименование заболевания</li>
            <li> Нажмите на кнопку "Выбор файла" и выберите нужное изображение в формате jpg</li>
            <li> Нажмите кнопку "Отправить"</li>
          </ol>
        </div>
      </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
