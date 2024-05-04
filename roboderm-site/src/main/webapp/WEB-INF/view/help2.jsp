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
<%--          <form action="../diagnoses/downloaded" method="post" enctype="multipart/form-data">--%>

<%--            <select name="dir_name">--%>
<%--              <option value="Acne">Acne</option>--%>
<%--              <option value="Actinic Keratosis">Actinic Keratosis</option>--%>
<%--              <option value="Atopic Dermatit">Atopic Dermatit</option>--%>
<%--              <option value="Contact Dermatitis">Contact Dermatitis</option>--%>
<%--              <option value="Eczema">Eczema</option>--%>
<%--              <option value="Hemangioma">Hemangioma</option>--%>
<%--              <option value="Herpes">Herpes</option>--%>
<%--              <option value="Psoriasis">Psoriasis</option>--%>
<%--              <option value="Rosacea">Rosacea</option>--%>
<%--              <option value="Scabies">Scabies</option>--%>
<%--              <option value="Urticaria">Urticaria</option>--%>
<%--              <option value="Vasculitis">Vasculitis</option>--%>
<%--              <option value="Warts">Warts</option>--%>
<%--            </select>--%>
<%--            <br>--%>
<%--            <br>--%>

<%--            <div class="image-upload-container">--%>
<%--              <img src="${pageContext.request.contextPath}/images/download2.png" class="upload-image">--%>
<%--              <input type="file" name="myfile1" class="file-input">--%>
<%--            </div>--%>
<%--            <br>--%>
<%--            <br>--%>
<%--            <button type="submit" class="form_btn">Отправить</button>--%>
<%--          </form>--%>
  <form class="row g-3" action="../diagnoses/downloaded" method="post" enctype="multipart/form-data">
    <div class="col-md-4">
      <select name="dir_name" class="form-select" required>
        <option selected disabled value="">Выберите диагноз</option>
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
    </div>
    <fieldset class="col-md-4">
      <legend class="col-form-label col-sm-2 pt-0">Пол обследуемого</legend>
      <div class="col-sm-10">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="option1" required>
          <label class="form-check-label" for="gridRadios1">
            Женский
          </label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="option2" >
          <label class="form-check-label" for="gridRadios2">
            Мужской
          </label>
        </div>
      </div>
    </fieldset>
    <div class="col-md-4">
      <input type="number" class="form-control" id="ageInput" name="age"  placeholder="Введите возраст" required>
    </div>
    <fieldset class="col-md-4">
      <legend class="col-form-label col-sm-2 pt-0">Семейный анамнез</legend>
      <div class="col-sm-10">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="anamnez" id="gridRadios3" value="option1" required>
          <label class="form-check-label" for="gridRadios3">
            Отягощен
          </label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="anamnez" id="gridRadios4" value="option2">
          <label class="form-check-label" for="gridRadios4">
            Неотягощен
          </label>
        </div>
      </div>
    </fieldset>
    <div class="col-md-4">
      <input type="number" class="form-control" id="diametrInput" name="diametr"  placeholder="Введите диаметр в миллиметрах" required>
    </div>
    <div class="col-md-4">

      <input type="number" class="form-control" id="daysInput" name="days"  placeholder="Введите длительность заболевания в днях" required>
    </div>
    <fieldset class="col-md-4">
      <legend class="col-form-label col-sm-2 pt-0">Наличие изъявления</legend>
      <div class="col-sm-10">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios5" value="option1" required>
          <label class="form-check-label" for="gridRadios5">
            Имеется
          </label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios6" value="option2" >
          <label class="form-check-label" for="gridRadios2">
            Не имеется
          </label>
        </div>
      </div>
    </fieldset>
    <fieldset class="col-md-4">
      <legend class="col-form-label col-sm-2 pt-0">Было увеличение в течение года</legend>
      <div class="col-sm-10">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios7" value="option1" required>
          <label class="form-check-label" for="gridRadios7">
            Нет
          </label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios8" value="option2" >
          <label class="form-check-label" for="gridRadios8">
            Да
          </label>
        </div>
      </div>
    </fieldset>
    <div class="col-md-4">
      <label for="feelingsInput" class="form-label">Субъективные ощущения</label>
      <input type="text" class="form-control" id="feelingsInput" name="feelings"  placeholder="Зуд, жжение, боль..." required>
    </div>
    <div class="col-md-4">
      <label for="feelingsInput" class="form-label">Локализация</label>
      <input type="text" class="form-control" id="placeInput" name="place"  placeholder="Часть тела" required>
    </div>
    <fieldset class="col-md-4">
      <legend class="col-form-label col-sm-2 pt-0">Имеются солнечные ожоги</legend>
      <div class="col-sm-10">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios9" value="option1" required>
          <label class="form-check-label" for="gridRadios9">
            Нет
          </label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios10" value="option2" >
          <label class="form-check-label" for="gridRadios10">
            Да
          </label>
        </div>
      </div>
    </fieldset>
    <fieldset class="col-md-4">
      <legend class="col-form-label col-sm-2 pt-0">Было ли длительное пребывание на солнце</legend>
      <div class="col-sm-10">
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios11" value="option1" required>
          <label class="form-check-label" for="gridRadios11">
            Нет
          </label>
        </div>
        <div class="form-check form-check-inline">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios12" value="option2" >
          <label class="form-check-label" for="gridRadios12">
            Да
          </label>
        </div>
      </div>
    </fieldset>
    <div class="col-md-4">
      <select name="dir_name" class="form-select" required>
        <option selected disabled value="">Выберите фототип кожи</option>
        <option value="Nord">Нордический</option>
        <option value="Evro">Темный европейский</option>
        <option value="Sredizemn">Средиземноморский</option>
        <option value="Indonez">Индонезийский</option>
        <option value="Afro">Афроамериканский</option>
      </select>
    </div>
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
  </div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
