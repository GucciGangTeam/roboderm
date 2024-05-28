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
<%--      <section class="panel panel-default">--%>
      <div class="col-lg-7">

        <div class="container-form panel-body ">
<%--          <form class="form-horizontal adapt_text_less row" role="form" action="../diagnoses/downloaded" method="post" enctype="multipart/form-data">--%>
          <form class="form-horizontal adapt_text_less row" role="form" action="http://localhost/rest/v1/diagnosis" method="post" enctype="multipart/form-data">

            <div class="col-md-6 form-group">
              <label for="disease" class=" control-label">Диагноз</label>
              <select name="dir_name" class="form-select" required id="disease">
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
            <div class="col-md-6 form-group">
              <label for="skin_type" class=" control-label">Фототип кожи</label>
              <select name="dir_name" class="form-select" id="skin_type" required>
                <option selected disabled value="">Выберите фототип кожи</option>
                <option value="Nord">Нордический</option>
                <option value="Evro">Темный европейский</option>
                <option value="Sredizemn">Средиземноморский</option>
                <option value="Indonez">Индонезийский</option>
                <option value="Afro">Афроамериканский</option>
              </select>
            </div>
            <div class="col-md-6 form-group">
              <label for="age" class=" control-label">Возраст</label>
              <input type="number" class="form-control" id="age" name="age"  placeholder="Введите возраст" required>
            </div>
            <div class="col-md-6 form-group">
              <label for="diameter" class="control-label">Диаметр</label>
              <input type="number" class="form-control" id="diameter" name="diametr"  placeholder="Введите диаметр в мм" required>
            </div>
            <div class="col-md-6 form-group">
              <label for="desease_duration_day" class=" control-label">Длительность заболевания</label>
              <input type="number" class="form-control" id="desease_duration_day" name="days"  placeholder="Введите длительность в днях" required>
            </div>
            <div class="col-md-6 form-group">
              <label for="location" class=" control-label">Локализация заболевания</label>
              <input type="text" class="form-control" id="location" name="place"  placeholder="Введите часть тела" required>
            </div>
            <div class="col-md-12 form-group">
              <label for="subjective_feelings" class=" control-label">Субъективные ощущения</label>
<%--              <input type="text" class="form-control" id="feelingsInput" name="feelings"  placeholder="Зуд, жжение, боль..." required>--%>
              <textarea class="form-control" id="subjective_feelings" name="feelings"  placeholder="Зуд, жжение, боль..." required rows="3"></textarea>
            </div>


            <fieldset class="form-group">
              <label class="control-label ">Пол обследуемого</label>
<%--              <label class="control-label " for="gender">Пол обследуемого</label>--%>
              <div class="col-sm-10" id="gender">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="genderName" id="gridRadios1" value="0" required>
                  <label class="form-check-label" for="gridRadios1">
                    Женский
                  </label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="genderName" id="gridRadios2" value="1" >
                  <label class="form-check-label" for="gridRadios2">
                    Мужской
                  </label>
                </div>
              </div>
            </fieldset>
            <fieldset class="form-group">
              <label for="family_history" class="control-label ">Семейный анамнез</label>
              <div class="col-sm-10" id="family_history">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="anamnezName" id="gridRadios3" value="0" required>
                  <label class="form-check-label" for="gridRadios3">
                    Не отягощен
                  </label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="anamnezName" id="gridRadios4" value="1">
                  <label class="form-check-label" for="gridRadios4">
                    Отягощен
                  </label>
                </div>
              </div>
            </fieldset>

            <fieldset class="form-group">
              <label class="control-label " for="ulceleration">Наличие изъявления</label>
              <div class="col-sm-10" id="ulceleration">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="izyavlenieName" id="gridRadios5" value="0" required>
                  <label class="form-check-label" for="gridRadios5">
                    Не имеется
                  </label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="izyavlenieName" id="gridRadios6" value="1" >
                  <label class="form-check-label" for="gridRadios6">
                    Имеется
                  </label>
                </div>
              </div>
            </fieldset>
            <div class="form-group">
              <label class="control-label " for="increase">Было увеличение в течение года</label>
              <div class="col-sm-10" id="increase">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="uvelichenieName" id="gridRadios7" value="0" required>
                  <label class="form-check-label" for="gridRadios7">
                    Нет
                  </label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="uvelichenieName" id="gridRadios8" value="1" >
                  <label class="form-check-label" for="gridRadios8">
                    Да
                  </label>
                </div>
              </div>
            </div>

            <div class="form-group">
              <label class="control-label " for="sunburn">Наличие солнечных ожогов</label>
              <div class="col-sm-10" id="sunburn">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="burnName" id="gridRadios9" value="0" required>
                  <label class="form-check-label" for="gridRadios9">
                    Нет
                  </label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="burnName" id="gridRadios10" value="1" >
                  <label class="form-check-label" for="gridRadios10">
                    Да
                  </label>
                </div>
              </div>
            </div>
            <div class="form-group">
              <label class="control-label" for="prolonger_sun_exposure">Было ли длительное пребывание на солнце</label>
              <div class="col-sm-10" id="prolonger_sun_exposure">
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="stayOnSunName" id="gridRadios11" value="0" required>
                  <label class="form-check-label" for="gridRadios11">
                    Нет
                  </label>
                </div>
                <div class="form-check form-check-inline">
                  <input class="form-check-input" type="radio" name="stayOnSunName" id="gridRadios12" value="1" >
                  <label class="form-check-label" for="gridRadios12">
                    Да
                  </label>
                </div>
              </div>
            </div>
            <div class="image-upload-container ">
            <div class="image-upload-container2">
              <img src="${pageContext.request.contextPath}/images/download2.png" class="upload-image">

              <input type="file" name="myfile1" onchange="previewFile()" class="file-input" required>

              <script>function previewFile(){
                var preview = document.querySelector('.img-preview'); //selects the query named img
                var file    = document.querySelector('input[type=file]').files[0]; //sames as here
                var reader  = new FileReader();

                reader.onloadend = function () {
                  preview.src = reader.result;
                }

                if (file) {
                  reader.readAsDataURL(file); //reads the data as a URL
                } else {
                  preview.src = "";
                }
              }</script>
<%--              <input type="file" onchange="previewFile()"><br>--%>
            </div>
            </div>
            <script>
              document.getElementById('diagnosisForm').addEventListener('submit', function(event) {
                event.preventDefault();
                const formData = new FormData();
                formData.append('disease', document.getElementById('disease').value);
                formData.append('skin_type', document.getElementById('skin_type').value);
                formData.append('age', document.getElementById('age').value);
                formData.append('diameter', document.getElementById('diameter').value);
                formData.append('disease_duration_day', document.getElementById('disease_duration_day').value);
                formData.append('location', document.getElementById('location').value);
                formData.append('subjective_feelings', document.getElementById('subjective_feelings').value);
                formData.append('gender', document.getElementById('gender').value);
                formData.append('family_history', document.getElementById('family_history').value);
                formData.append('ulceration', document.getElementById('ulceration').value);
                formData.append('increase', document.getElementById('increase').value);
                formData.append('sunburn', document.getElementById('sunburn').value);
                formData.append('prolonged_sun_exposure', document.getElementById('prolonged_sun_exposure').value);
                formData.append('img_file', document.getElementById('img_file').files[0]);

                fetch('http://localhost/rest/v1/diagnosis', {
                  method: 'POST',
                  body: formData
                })
                        .then(response => response.json())
                        .then(data => {
                          alert('Success: ' + data.id);
                        })
                        .catch(error => {
                          console.error('Error:', error);
                          alert('An error occurred. Please try again.');
                        });
              });
            </script>
            <!-- скрипт, который обработает нажатие на кнопку и отправит данные на сервер -->
<%--            <script>--%>
<%--              // эта функция сработает при нажатии на кнопку--%>
<%--              function sendJSON() {--%>
<%--                // с помощью jQuery обращаемся к элементам на странице по их именам--%>
<%--                let desease = document.querySelector('#desease');--%>
<%--                let skin_type = document.querySelector('#skin_type');--%>
<%--                let age = document.querySelector('#age');--%>
<%--                let diameter = document.querySelector('#diameter');--%>
<%--                let desease_duration_day = document.querySelector('#desease_duration_day');--%>
<%--                let location = document.querySelector('#location');--%>
<%--                let gender = document.querySelector('#gender');--%>
<%--                let family_history = document.querySelector('#family_history');--%>
<%--                let ulceration = document.querySelector('#ulceration');--%>
<%--                let increase = document.querySelector('#increase');--%>
<%--                let sunburn = document.querySelector('#sunburn');--%>
<%--                let prolonger_sun_exposure = document.querySelector('#prolonger_sun_exposure');--%>

<%--                --%>

<%--                // а вот сюда мы поместим ответ от сервера--%>
<%--                let result = document.querySelector('.result');--%>
<%--                // создаём новый экземпляр запроса XHR--%>
<%--                let xhr = new XMLHttpRequest();--%>
<%--                // адрес, куда мы отправим нашу JSON-строку--%>
<%--                let url = "http://mihailmaximov.ru/projects/json/json.php";--%>
<%--                // открываем соединение--%>
<%--                xhr.open("POST", url, true);--%>
<%--                // устанавливаем заголовок — выбираем тип контента, который отправится на сервер, в нашем случае мы явно пишем, что это JSON--%>
<%--                xhr.setRequestHeader("Content-Type", "application/json");--%>
<%--                // когда придёт ответ на наше обращение к серверу, мы его обработаем здесь--%>
<%--                xhr.onreadystatechange = function () {--%>
<%--                  // если запрос принят и сервер ответил, что всё в порядке--%>
<%--                  if (xhr.readyState === 4 && xhr.status === 200) {--%>
<%--                    // выводим то, что ответил нам сервер — так мы убедимся, что данные он получил правильно--%>
<%--                    result.innerHTML = this.responseText;--%>
<%--                  }--%>
<%--                };--%>
<%--                // преобразуем наши данные JSON в строку--%>
<%--                var data = JSON.stringify({ "name": name.value, "lastname": lastname.value });--%>
<%--                // когда всё готово, отправляем JSON на сервер--%>
<%--                xhr.send(data);--%>
<%--              }--%>
<%--            </script>--%>

            <div class="img-preview-container">
              <img class="img-preview" alt="">
            </div>
            <br>
            <br>
            <div class="btn-container">
              <button type="submit" class="interactive-btn">Отправить</button>
            </div>
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





  <footer class="site-footer">
    <div class="footer-content">
      <h2>Свяжитесь с нами</h2>
      <p>Если у вас есть вопросы или предложения, пожалуйста, напишите нам:</p>
      <a href="mailto:roboderm@gmail.com" class="contact-email">roboderm@gmail.com</a>
      <p>Мы всегда рады помочь вам!</p>
    </div>
  </footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
