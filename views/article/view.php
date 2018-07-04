<?php 
use yii\helpers\Html;
use yii\helpers\StringHelper;
use yii\helpers\Url;
use yii\widgets\LinkPager;
?>
<?php 
    $mainImg = $articles->getImage();
?>
<section class="posts">
	<div class="jumborton">
		<h1>Блог<span>.</span></h1>
	</div>
	<article class="post">
		<div class="post-img"><?= Html::img($mainImg->getUrl())?></div>
		<div class="post-text">
			<h2><?= $articles->title ?></h2>
			<p class="post-text-information"><span>Категория:</span> <a href="<?= Url::to(['blog/category', 'id' => $posts->category_id]) ?>"><?= $articles->category->title; ?></a>,<span>     Дата создания:     </span><?= Yii::$app->formatter->asDate($articles->created_at, 'dd.MM.yyyy') ?></p>
			<div class="post-text-article">
                <?= $articles->content ?>
            </div>
		</div>
	</article>
	<!-- Put this div tag to the place, where the Comments block will be -->
	<div id="vk_comments"></div>
	<script type="text/javascript">
	VK.Widgets.Comments("vk_comments", {limit: 10, attach: "*"});
	</script>
</section> 
