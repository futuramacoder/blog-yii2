<?php 
use yii\helpers\Html;
use yii\helpers\StringHelper;
use yii\helpers\Url;
use yii\widgets\LinkPager;
?>

<section class="posts">
    <div class="jumborton">
        <h1><?= $categories->title; ?><span>.</span></h1>
    </div>
<?php if($posts): ?>
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
<?php else: ?>
    Постов в этой категорий пока нет!
<?php endif; ?>
</section>
