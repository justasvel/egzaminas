<?php
    require '../U3_Justinas_Velička/comments.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
        integrity="undefined" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Exo&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
        integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
    <title>Document</title>
</head>

<body>
    <!-- Header -->

    <header id="header" class="container-fluid">
        <div class="row">
            <div class="col image-container">
                <img src="img/logo.png" alt="" class="float-start" id="logo">
            </div>
        </div>
    </header>
    <!-- Header -->

    <!-- Articles -->
    <section>
        <div class="container pt-5">
            <h2 class="heading">Naujausi Kursai</h2>
            <div class="row my-3 pt-4">
                <div class="col-lg-4 col-md-6 col-sm-12 py-2">
                    <div class="card">
                        <img src="img/php.jpg" alt="" class="img-fluid card-img-top">
                        <div class="card-body">
                            <a id="link" href="#">
                                <h5 class="card-title">PHP Pagrindai</h5>
                            </a>
                            <h6 class="card-subtitle my-2 text-muted">Autorius</h6>
                            <hr>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Perferendis
                                veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.
                            </p>
                            <hr>
                            <div class="d-flex">
                                <div class="me-auto">
                                    <span id="rating">5</span>
                                    <span class="px-3">
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                    </span>
                                </div>
                                <div id="comments">

                                    <i class="fas fa-comment"></i>
                                    <span class="comment-count mx-2"><?= $first['komentarai']; ?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 py-2">
                    <div class="card">
                        <img src="img/js.jpg" alt="" class="card-img-top img-fluid">
                        <div class="card-body">
                            <a id="link" href="#">
                                <h5 class="card-title">JavaScript Žaliems</h5>
                            </a>
                            <h6 class="card-subtitle my-2 text-muted">Autorius</h6>
                            <hr>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Perferendis
                                veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.
                            </p>
                            <hr>
                            <div class="d-flex">
                                <div class="me-auto">
                                    <span id="rating">3</span>
                                    <span class="px-3">
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </span>
                                </div>
                                <div id="comments">

                                    <i class="fas fa-comment"></i>
                                    <span class="comment-count mx-2"><?= $second['komentarai']; ?></span>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 py-2">
                    <div class="card">
                        <img src="img/git.jpg" alt="" class="card-img-top img-fluid">
                        <div class="card-body">
                            <a id="link" href="#">
                                <h5 class="card-title">Pažintis su GIT</h5>
                            </a>
                            <h6 class="card-subtitle my-2 text-muted">Autorius</h6>
                            <hr>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Perferendis
                                veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.
                            </p>
                            <hr>
                            <div class="d-flex">
                                <div class="me-auto">
                                    <span id="rating">3</span>
                                    <span class="px-3">
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </span>
                                </div>
                                <div id="comments">

                                    <i class="fas fa-comment"></i>
                                    <span class="comment-count mx-2"><?= $third['komentarai']; ?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12 py-2">
                    <div class="card">
                        <img src="img/git.jpg" alt="" class="card-img-top img-fluid">
                        <div class="card-body">
                            <a id="link" href="#">
                                <h5 class="card-title">HTML/CSS Įvadas</h5>
                            </a>
                            <h6 class="card-subtitle my-2 text-muted">Autorius</h6>
                            <hr>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                Perferendis
                                veritatis quaerat id, cum officiis maxime numquam voluptatem aliquam nihil optio.
                            </p>
                            <hr>
                            <div class="d-flex">
                                <div class="me-auto">
                                    <span id="rating">4</span>
                                    <span class="px-3">
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star checked"></i>
                                        <i class="fas fa-star"></i>
                                    </span>
                                </div>
                                <div id="comments">

                                    <i class="fas fa-comment"></i>
                                    <span class="comment-count mx-2"><?= $fourth['komentarai']; ?></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Articles -->
    <!-- contact -->
    <section>
        <div class="container py-5">
            <div class="row">
                <div class="col-lg-6">
                    <h2 class="heading">Sekite Naujienas</h2>
                    <p>Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų naujienlaiškį.</p>
                    <p id="newsletter"></p>
                    <form>
                        <div class="mb-3">
                            <label for="name" class="form-label">Vardas</label>
                            <input type="text" name="name" class="form-control" id="name">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">El. Paštas</label>
                            <input type="email" name="email" class="form-control" id="email">
                        </div>

                        <button type="submit" id="submit" name="submit" class="btn ">Užsisakyti</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- contact -->
    <!-- footer -->
    <div class="container-fluid" id="second-footer">
        <div class="container">
            <div class="row">
                <hr>
                <div class="col-lg-6 col-md-6">
                    <p class="d-block">&#169; 2021 Justinas Velička</p>
                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
    <script src="js/main.js"></script>
</body>

</html>