<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Blog */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Blogs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="blog-view">

    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?= Html::a('Обновить', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Удалить', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Вы действительно хотите удалить этот пост?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <?php $img = $model->getImage(); ?>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'title:html',
            'content:html',
            [
                'attribute' => 'image',
                'value' => "<img src='{$img->getUrl()}'>",
                'format' => 'html',
            ],
            [
                'attribute' => 'status',
                'value' => function($data){
                    return !$data->status ? '<span class="text-danger">Не активен</span>' : '<span class="text-success">Активен</span>';
                },
                'format' => 'html',
            ],
            'created_at:date',
            [
                'attribute' => 'category_id',
                'value' => function($data)
                {
                    return $data->category->title;
                },
            ],
        ],
    ]) ?>

</div>
