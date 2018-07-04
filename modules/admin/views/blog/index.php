<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Блог';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="blog-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Создать пост', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'title:html',
            'content:html',
            [
                'attribute' => 'status',
                'value' => function($data){
                    return !$data->status ? '<span class="text-danger">Не активен</span>' : '<span class="text-success">Активен</span>';
                },
                'format' => 'html',
            ],
            [
                'attribute' => 'category_id',
                'value' => function($data)
                {
                    return $data->category->title;
                },
            ],
            'created_at:date',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
