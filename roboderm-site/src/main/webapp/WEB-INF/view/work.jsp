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

  <div class="container-result">
    <div class="row">
      <div class="col-lg-4 img-result-container">
<%--        <img align="left" height="300" width="400" src =  "${imageSrc}" alt="sent photo">--%>
      <img class="img-result" src =  "${imageSrc}" alt="sent photo">
      </div>

      <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
      <div class="col-lg-4">
        <canvas id="myPieChart"></canvas>



<%--      ${res1}--%>
<%--        <br>--%>
<%--        <br>--%>
<%--        <br>--%>
<%--        <br>--%>
<%--        ${res2}--%>
<%--        <br>--%>
<%--        <br>--%>
<%--        <br>--%>
<%--        <br>--%>
<%--        ${res3}--%>
<%--        <br>--%>
      </div>
    </div>
  </div>
  <script>
      function parseData(str) {
          var match = str.match(/(.+?)\s*\(.*?\)\s*(\d+\.\d+)%/);
          return match ? { name: match[1], value: parseFloat(match[2]) } : null;
      }

      // Распарсить данные
      var parsedRes1 = parseData(${res1});
      var parsedRes2 = parseData(${res2});
      var parsedRes3 = parseData(${res3});

      // Создать массивы labels и data
      var labels = [parsedRes1.name, parsedRes2.name, parsedRes3.name, 'Остальные'];
      var data = [
          parsedRes1.value,
          parsedRes2.value,
          parsedRes3.value,
          100 - (parsedRes1.value + parsedRes2.value + parsedRes3.value)
      ];
    var ctx = document.getElementById('myPieChart').getContext('2d');
    var myPieChart = new Chart(ctx, {
      type: 'pie',
      data: {
        // labels: ['${res1}', '${res2}', '${res3}', 'Остальные'],
        labels: labels,
        datasets: [{
          label: 'Results',
          <%--data: [${res1}, ${res2}, ${res3}, 100-(${res1}+${res2}+${res3})], // замените res1, res2, res3 на ваши данные--%>
          data: data, // замените res1, res2, res3 на ваши данные

          backgroundColor: [
            'rgba(255, 99, 132, 0.5)',
            'rgba(169,54,235,0.5)',
            'rgba(255, 206, 86, 0.5)',
            'rgba(74,246,83,0.5)',
          ],
          borderColor: [
            'rgba(255, 99, 132, 1)',
            'rgba(152,0,255,0.5)',
            'rgba(255, 206, 86, 1)',
            'rgba(74,246,83,0.5)',
          ],
          borderWidth: 1
        }]
      },
      options: {
        responsive: true,
        legend: {
          position: 'right'
        },
        title: {
          display: true,
          text: 'Results Pie Chart'
        }
      }
    });
  </script>

  <div class="container">
    <div class="row">
      <div class="col-lg-7">
        <div class="container-form">
          <h5 class="adapt_text">Пожалуйста, загрузите изображение в формате <i>jpg</i>, на котором имеется кожное заболевание:</h5>
          <br>
          <br>
          <form action="checked" method="post" enctype="multipart/form-data">

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
                   </div>
            </div>
            <div class="img-preview-container">
                <img class="img-preview" alt="">
            </div>
              <br><br>
              <div class="btn-container">
                  <button type="submit" class="interactive-btn">Отправить</button>
              </div>

          </form>
        </div>  
      </div>
      <div class="col-lg-5" >
        <div class="container_help py-4">
          <h4 class="adapt_text">Если вам необходимо повторно определить кожное заболевние по фотографии, то следуйте инструкции:</h4>
          <br>
          <ol class="adapt_text">
            <li> Загрузите нужное изображение в формате jpg</li>
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
        <a href="mailto:04200620z@gmail.com" class="contact-email">04200620z@gmail.com</a>
        <p>Мы всегда рады помочь вам!</p>
      </div>
    </footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
