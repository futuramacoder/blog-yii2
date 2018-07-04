<?php 
use yii\helpers\Html;
use yii\helpers\StringHelper;
use yii\helpers\Url;
use yii\widgets\LinkPager;
?>

<section class="posts">
		<div class="jumborton">
			<h1>Статьи<span>.</span></h1>
		</div>
<?php foreach($articles as $article): ?>
<?php $mainImg = $article->getImage(); ?>
		<article class="article">
			<div class="article-img"><?= Html::img($mainImg->getUrl())?></div>
			<div class="article-text">
				<h2><?= $article->title ?></h2>
				<p class="post-text-information"><span>Категория:</span> <a href="<?= Url::to(['blog/category', 'id' => $article->category_id]) ?>"><?= $article->category->title; ?></a>,<span>     Дата создания:     </span><?= Yii::$app->formatter->asDate($article->created_at, 'dd.MM.yyyy') ?></p>
				<?= $article->description ?>
				<br>
				<a class="btn" href="<?= Url::to(['article/form', 'id' => $article->id]) ?>"><?= $article->price ?>тг. Купить</a>
			</div>
		</article>
<?php endforeach; ?>
		<div class="pagination">
		    <?php
		        echo LinkPager::widget([
		            'pagination' => $pagination,
		        ]);
		    ?>
		</div>
	</section>