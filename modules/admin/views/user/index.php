<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Users';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="user-index">

    <h1><?= Html::encode($this->title) ?></h1>
    
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'username',
            'email:email',
            // 'confirmed_at',
            // 'unconfirmed_email:email',
            // 'blocked_at',
            // 'registration_ip',
            'created_at:date',
            'updated_at:date',
            // 'flags',
            // 'last_login_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
