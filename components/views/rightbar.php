<?php 
use yii\helpers\Html;
use yii\helpers\Url;
?>
	<div class="category">
		<h3>Категорий</h3>
		<ul>
<?php if($categoryes): ?>
<?php foreach($categoryes as $category): ?>
			<li><a href="<?= Url::to(['blog/category', 'id' => $category->id]) ?>"><?= $category->title ?></a></li>
<?php endforeach; ?>
<?php else: ?>
			<li>Категорий пока нету</li>
<?php endif; ?>
		</ul>
	</div>
	<div class="latest-posts">
		<h3>Последние посты</h3>
<?php foreach ($parent_posts as $parent_post): ?>
<?php $mainImg = $parent_post->getImage(); ?>
		<div class="latest-post">
			<a href="<?= Url::to(['blog/view', 'id' => $parent_post->id]) ?>"><?= Html::img($mainImg->getUrl())?></a>
			<a href="<?= Url::to(['blog/view', 'id' => $parent_post->id]) ?>"><?= $parent_post->title ?><br><span>21.08.2017</span></a>
		</div>
<?php endforeach; ?>
	</div>
