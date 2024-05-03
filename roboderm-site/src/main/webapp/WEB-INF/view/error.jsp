<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ERROR</title>
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
                        <a class="nav-link adapt_text " href="../diagnoses/todownload">Загрузка изображений в набор данных</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</header>


<div class="img404">
    <!-- <img src = "/robodermWeb/src/main/webapp/WEB-INF/viev/Image/logotip.png" alt="logotip"> -->
    <img src = "${pageContext.request.contextPath}/images/404.png" class="image-fluid" style="max-width: 30%;" alt="logotip">
</div>

<%--<div class="error_info adapt_text">--%>
<%--    <h5>ERROR</h5>--%>
<%--    <P>Похоже что-то пошло не так</P>--%>
<%--    <a class="btn btn-warning" href="../">Перейти на главную страницу</a></button>--%>
<%--</div>--%>

<div class="error-container ">
    <h1 class="errorh1">У-упс!</h1>
    <h2 class="errorh2">404 - Страница не найдена</h2>
    <p class="errorP">Возможно, страница, которую вы ищете, была удалена, ее имя было изменено, или она временно недоступна.</p>
    <a href="/" class="home-btn">Вернуться на Главную</a>

</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>
