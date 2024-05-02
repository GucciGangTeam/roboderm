<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Roboderm: Главная страница</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href=${pageContext.request.contextPath}/styles/style.css >
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
            <a class="navbar-brand" href="#">Roboderm</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
              <ul class="navbar-nav">
        
                <li class="nav-item">
                  <a class="nav-link" href="analysis/tocheck">Распознавание заболеваний</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="diagnoses/todownload">Загрузка изображений в набор данных</a>
                </li>
        
              </ul>
            </div>
          </div>
        </nav>
    </header>

<!-- <center class="container">
  <br>
  <br>
<img src = "/robodermWeb/src/main/webapp/WEB-INF/viev/Image/logotip.png" alt="logotip">
    </center> -->
    <div class="logotip">
        <!-- <img src = "/robodermWeb/src/main/webapp/WEB-INF/viev/Image/logotip.png" alt="logotip"> -->
        <img src = "${pageContext.request.contextPath}/images/logotip.png" class="image-fluid" style="max-width: 30%;" alt="logotip">

        <!-- <div class="container">
            <div class="row">
                <div class="col">
                    <img src = "Image/logotip.png" class="image-fluid" style="max-width: 50%;" alt="logotip">
                </div>
            </div>
        </div> -->
        
    </div>

    <div class="conteiner_home" >
        <div class="row justify-content-center">
            
            <div class=" col-lg-8 ">
                <div class="accordion px-4" id="accord">
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="headingOne">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" 
                        aria-expanded="false" aria-controls="collapseOne">
                        Roboderm - основная информация
                        </button>
                    </h2>
                    <div id="collapseOne" class="accordion-collapse collapse " aria-labelledby="headingOne">
                        <div class="accordion-body">
                            <i> Roboderm</i> - это проект, целью которого являеться создание эффективной программы, способной распознавать ряд кожных заболеваний. В основе этой программы лежит принцип работы нейросети.                  
                        </div>
                    </div>
                    </div>
                    <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                        aria-expanded="false" aria-controls="collapseTwo">
                        Как определить кожное заболевание 
                        </button>
                    </h2>
                    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo">
                        <div class="accordion-body">
                            <ol>
                                <li> Перейдите во вкладку "Распознавание заболеваний".</li>
                                <li> Нажмите на кнопку "Обзор" и выберите нужное изображение в формате jpg</li>
                                <li> Нажмите кнопку "Отправить" и ожидайте результата </li>
                            </ol>
                        </div>
                    </div>
                    </div>
            
                </div>
            </div>
            <div class=" col-lg-4">
                <div class="container_home_2 py-4 "> 
                    <!-- <p>Результат представлен наименованием кожного заболевания и его вероятностью в процентах.</p> -->
                    <h4>Нейросеть может распознать 13 кожных заболеваний:</h4>
                    <ul class="list-unstyled"> 
                        <li>Акне</li>
                        <li>Актинический кератоз</li>
                        <li>Атопический дерматит</li>
                        <li>Контактный дерматит</li>
                        <li>Экзема</li>
                        <li>Гемангиома</li>
                        <li>Герпес</li>
                        <li>Псориаз</li>
                        <li>Розацеа</li>
                        <li>Чесотка</li>
                        <li>Крапивница</li>
                        <li>Васкулит</li>
                        <li>Бородавки</li>
                    </ul>
                </div>
                
            </div>

        </div>
    </div>
   




<div class="container justify-content-center">

  <!-- <br>
  <br>
    <i> Roboderm</i> - это проект, целью которого являеться создание эффективной программы, способной распознавать ряд кожных заболеваний. В основе этой программы лежит принцип работы нейросети.
    Если вам необходимо определить кожное заболевние по фотографии, то следуйте следующей инструкции:
    <br>
    <ol>
      <li> Перейдите во вкладку "Распознавание заболеваний".</li>
      <li> Нажмите на кнопку "Обзор" и выберите нужное изображение в формате jpg</li>
      <li> Нажмите кнопку "Отправить" и ожидайте результата </li>
    </ol>
      <br> -->




      <!-- Результат представлен наименованием кожного заболевания и его вероятностью в процентах.
     Нейросеть может распознать 13 кожных заболеваний:
     <ul class="container">
       <li>Акне</li>
       <li>Актинический кератоз</li>
       <li>Атопический дерматит</li>
       <li>Контактный дерматит</li>
       <li>Экзема</li>
       <li>Гемангиома</li>
       <li>Герпес</li>
       <li>Псориаз</li>
       <li>Розацеа</li>
       <li>Чесотка</li>
       <li>Крапивница</li>
       <li>Васкулит</li>
       <li>Бородавки</li>
     </ul> -->
    <br>
    <p>
        <h6>
            Roboderm продолжает развиваться, и если Вы являетесь специалистом в области дерматовенерологии, то Вы можете оказать нам большую поддержку, загрузив фотографии на сайт с указанием поставленного диагноза.
             Для этого перейдите во вкладку <strong>"Загрузка изображений в набор данных"</strong> и, следуя инструкции на странице, загрузите изображение. Благодаря Вашим действиям нейросеть научиться точнее определять кожные заболевния.
        </h6>
    </p>

    <br>

</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>
