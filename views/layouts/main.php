<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Url;
use yii\helpers\Html;
use app\assets\AppAsset;
use app\components\RightbarWidget;

AppAsset::register($this);
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
    <!-- Put this script tag to the <head> of your page -->
    <script type="text/javascript" src="//vk.com/js/api/openapi.js?146"></script>

    <script type="text/javascript">
        VK.init({apiId: 6165611, onlyWidgets: true});
    </script>
</head>
<body>
<?php $this->beginBody() ?>

<!-- Header -->

<header class="header">
    <nav class="navigation">
        <ul>
            <!-- <li><a href="">Главная</a></li> -->
            <li><a href="<?= Url::to(['article/index']) ?>">Статьи</a></li>
            <li><a href="<?= Url::to(['blog/index']) ?>">Блог</a></li>
            <li><a href="#">О нас</a></li>
            <?php if(\Yii::$app->user->can('moderator')): ?>
            <li>
                <a href="<?= Url::to(['/admin/blog/index']) ?>">Админка</a>
            </li>
            <?php endif; ?>
        </ul>
        <ul class="login">
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
            <form method="get" action="<?= Url::to(['blog/search']) ?>" class="search-form">
                <i class="fa fa-search search-btn" aria-hidden="true"></i>
                <input type="text" class="search" name="q" placeholder="Поиск">
            </form>
        </ul>
    </nav>
</header>

<!-- .Header -->

<!-- Main -->

<main class="wrapper">
    <?= $content ?>
    <!-- Якорь наверх --><button class="top"><i class="fa fa-arrow-circle-o-up" aria-hidden="true"></i></button><!-- .Якорь наверх -->
<aside class="rightbar">
<?php echo RightbarWidget::widget(); ?>
</aside>
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
