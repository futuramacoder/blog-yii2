<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Url;
use yii\helpers\Html;
use app\assets\AdminAsset;
use app\components\RightbarWidget;

AdminAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="" />
    <meta name="description" content="">
    <meta name="author" content="">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:100,300,400,700" rel="stylesheet">
</head>
<body>
<?php $this->beginBody() ?>

<!-- Header -->

<header class="header">
    <nav class="navigation">
        <ul>
            <li><a href="<?= Url::to(['/admin/blog/index']) ?>">Главная</a></li>
            <li><a href="<?= Url::to(['/admin/article/index']) ?>">Статьи</a></li>
            <li><a href="<?= Url::to(['/admin/blog/index']) ?>">Блог</a></li>
            <li><a href="<?= Url::to(['/admin/category/index']) ?>">Категорий</a></li>
            <li><a href="<?= Url::to(['/admin/user/index']) ?>">Пользователи</a></li>
        </ul>
        <ul class="login">
            <li><a href="<?= Url::to(['/blog/index']) ?>">Вернуться на сайт</a></li>
            <?php if(!Yii::$app->user->isGuest): ?>
                <li><a href="#"><i class="fa fa-user"></i> <?= Yii::$app->user->identity['username']?></a>|</li>
                <li><?= Html::a("Выход", ['/user/security/logout'], [
                    'data' => [
                        'method' => 'post',
                    ],
                ]) ?></li>
            <?php else: ?>                
                <li><a href="<?= Url::to(['/user/security/login']) ?>">Вход</a>|</li>
                <li><a href="<?= Url::to(['/user/registration/register']) ?>">Регистация</a></li>
            <?php endif;?>
        </ul>
    </nav>
</header>

<!-- .Header -->

<!-- Main -->

<main class="container">
    <?= $content ?>
    <!-- Якорь наверх --><button class="top"><i class="fa fa-arrow-circle-o-up" aria-hidden="true"></i></button><!-- .Якорь наверх -->

</main>

<!-- .Main -->

<!-- Footer -->

<footer class="footer">
    <p>©2017 Все Права Защищены.</p>
</footer>

<!-- .Footer -->
<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
