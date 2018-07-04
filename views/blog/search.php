<?php 
use yii\helpers\Html;
use yii\helpers\StringHelper;
use yii\helpers\Url;
use yii\widgets\LinkPager;
?>

<section class="posts">
    <div class="jumborton">
        <h1>Блог<span>.</span></h1>
        <div class="search-result">
            <div class="search-result-text">
                <h3 class="">Поиск по запросу: <?= Html::encode($q) ?></h3>
            </div>
        </div>
    </div>
<?php if(!empty($posts)): ?>
<?php foreach ($posts as $post): ?>
<?php $mainImg = $post->getImage(); ?>
    <article class="post">      
        <div class="post-img"><a href="<?= Url::to(['blog/view', 'id' => $post->id]) ?>"><?= Html::img($mainImg->getUrl())?></a></div>
        <div class="post-text">
            <h2><?= $post->title ?></h2>
            <p class="post-text-information"><span>Категория:</span> <a href="<?= Url::to(['blog/category', 'id' => $post->category_id]) ?>"><?= $post->category->title; ?></a>,<span>     Дата создания:     </span><?= Yii::$app->formatter->asDate($post->created_at, 'dd.MM.yyyy') ?></p>
            <div class="post-text-article">
                <?= StringHelper::truncate($post->content, 400) ?>
            </div>
        </div>
        <a class="btn" href="<?= Url::to(['blog/view', 'id' => $post->id]) ?>">Продолжить чтение</a>
    </article>
<?php endforeach; ?>
<div class="pagination">
    <?php
        echo LinkPager::widget([
            'pagination' => $pagination,
        ]);
    ?>
</div>
<?php else: ?>
    По вашему запросу ничего не найдено!
    <br>
    <br>
<?php endif; ?>
</section>
