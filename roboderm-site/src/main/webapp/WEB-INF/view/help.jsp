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
          <a class="nav-link adapt_text " href="../analysis/tocheck">Распознавание заболеваний</a>
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
      <img src = "${pageContext.request.contextPath}/images/logotip.png" class="image-fluid" style="max-width: 30%;" alt="logotip">
  </div>


  <div class=" help_info adapt_text_less ">
      <h5>Фотография загружена! Большое спасибо!</h5>
  </div>
  <div class="container">
      <div class="row">
          <%--      <section class="panel panel-default">--%>
          <div class="col-lg-7">

              <div class="container-form panel-body ">
                  <form class="form-horizontal adapt_text_less row" role="form" action="../diagnoses/downloaded" method="post" enctype="multipart/form-data">

                      <div class="col-md-6 form-group">
                          <label for="diagnoz" class=" control-label">Диагноз</label>
                          <select name="dir_name" class="form-select" required id="diagnoz">
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
                          <label for="phototype" class=" control-label">Фототип кожи</label>
                          <select name="dir_name" class="form-select" id="phototype" required>
                              <option selected disabled value="">Выберите фототип кожи</option>
                              <option value="Nord">Нордический</option>
                              <option value="Evro">Темный европейский</option>
                              <option value="Sredizemn">Средиземноморский</option>
                              <option value="Indonez">Индонезийский</option>
                              <option value="Afro">Афроамериканский</option>
                          </select>
                      </div>
                      <div class="col-md-6 form-group">
                          <label for="ageInput" class=" control-label">Возраст</label>
                          <input type="number" class="form-control" id="ageInput" name="age"  placeholder="Введите возраст" required>
                      </div>
                      <div class="col-md-6 form-group">
                          <label for="diametrInput" class="control-label">Диаметр</label>
                          <input type="number" class="form-control" id="diametrInput" name="diametr"  placeholder="Введите диаметр в мм" required>
                      </div>
                      <div class="col-md-6 form-group">
                          <label for="daysInput" class=" control-label">Длительность заболевания</label>
                          <input type="number" class="form-control" id="daysInput" name="days"  placeholder="Введите длительность в днях" required>
                      </div>
                      <div class="col-md-6 form-group">
                          <label for="placeInput" class=" control-label">Локализация заболевания</label>
                          <input type="text" class="form-control" id="placeInput" name="place"  placeholder="Введите часть тела" required>
                      </div>
                      <div class="col-md-12 form-group">
                          <label for="feelingsInput" class=" control-label">Субъективные ощущения</label>
                          <%--              <input type="text" class="form-control" id="feelingsInput" name="feelings"  placeholder="Зуд, жжение, боль..." required>--%>
                          <textarea class="form-control" id="feelingsInput" name="feelings"  placeholder="Зуд, жжение, боль..." required rows="3"></textarea>
                      </div>


                      <fieldset class="form-group">
                          <label class="control-label ">Пол обследуемого</label>
                          <%--              <label class="control-label " for="gender">Пол обследуемого</label>--%>
                          <div class="col-sm-10" id="gender">
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="genderName" id="gridRadios1" value="option1" required>
                                  <label class="form-check-label" for="gridRadios1">
                                      Женский
                                  </label>
                              </div>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="genderName" id="gridRadios2" value="option2" >
                                  <label class="form-check-label" for="gridRadios2">
                                      Мужской
                                  </label>
                              </div>
                          </div>
                      </fieldset>
                      <fieldset class="form-group">
                          <label for="anamnez" class="control-label ">Семейный анамнез</label>
                          <div class="col-sm-10" id="anamnez">
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="anamnezName" id="gridRadios3" value="option3" required>
                                  <label class="form-check-label" for="gridRadios3">
                                      Не отягощен
                                  </label>
                              </div>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="anamnezName" id="gridRadios4" value="option4">
                                  <label class="form-check-label" for="gridRadios4">
                                      Отягощен
                                  </label>
                              </div>
                          </div>
                      </fieldset>

                      <fieldset class="form-group">
                          <label class="control-label " for="izyavlenie">Наличие изъявления</label>
                          <div class="col-sm-10" id="izyavlenie">
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="izyavlenieName" id="gridRadios5" value="option5" required>
                                  <label class="form-check-label" for="gridRadios5">
                                      Не имеется
                                  </label>
                              </div>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="izyavlenieName" id="gridRadios6" value="option6" >
                                  <label class="form-check-label" for="gridRadios6">
                                      Имеется
                                  </label>
                              </div>
                          </div>
                      </fieldset>
                      <div class="form-group">
                          <label class="control-label " for="uvelichenie">Было увеличение в течение года</label>
                          <div class="col-sm-10" id="uvelichenie">
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="uvelichenieName" id="gridRadios7" value="option7" required>
                                  <label class="form-check-label" for="gridRadios7">
                                      Нет
                                  </label>
                              </div>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="uvelichenieName" id="gridRadios8" value="option8" >
                                  <label class="form-check-label" for="gridRadios8">
                                      Да
                                  </label>
                              </div>
                          </div>
                      </div>

                      <div class="form-group">
                          <label class="control-label " for="burn">Наличие солнечных ожогов</label>
                          <div class="col-sm-10" id="burn">
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="burnName" id="gridRadios9" value="option9" required>
                                  <label class="form-check-label" for="gridRadios9">
                                      Нет
                                  </label>
                              </div>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="burnName" id="gridRadios10" value="option10" >
                                  <label class="form-check-label" for="gridRadios10">
                                      Да
                                  </label>
                              </div>
                          </div>
                      </div>
                      <div class="form-group">
                          <label class="control-label" for="stayOnSun">Было ли длительное пребывание на солнце</label>
                          <div class="col-sm-10" id="stayOnSun">
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="stayOnSunName" id="gridRadios11" value="option11" required>
                                  <label class="form-check-label" for="gridRadios11">
                                      Нет
                                  </label>
                              </div>
                              <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="radio" name="stayOnSunName" id="gridRadios12" value="option12" >
                                  <label class="form-check-label" for="gridRadios12">
                                      Да
                                  </label>
                              </div>
                          </div>
                      </div>
                      <div class="image-upload-container ">
                          <div class="image-upload-container2">
                              <img src="${pageContext.request.contextPath}/images/download2.png" class="upload-image">
                              <input type="file" name="myfile1" onchange="previewFile()" class="file-input">
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
                      <li> Заполните форму</li>
                      <li> Загрузите нужное изображение в формате jpg</li>
                      <li> Нажмите кнопку "Отправить"</li>
                  </ol>
              </div>
          </div>
          </section>
      </div>
  </div>
  <footer class="site-footer">
      <div class="footer-content">
          <h2>Свяжитесь с нами</h2>
          <p>Если у вас есть вопросы или предложения, пожалуйста, напишите нам:</p>
          <a href="mailto:04200620z@gmail.com" class="contact-email">04200620z@gmail.com</a>
          <p>Мы всегда рады помочь вам!</p>
      </div>
  </footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
