<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use \yii\jui\DatePicker;
use mihaildev\ckeditor\CKEditor;
use mihaildev\elfinder\ElFinder;
use yii\helpers\ArrayHelper;
use app\models\Category;
mihaildev\elfinder\Assets::noConflict($this);
/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Blog */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="blog-form">
    <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

    <?php
        echo $form->field($model, 'title')->widget(CKEditor::className(),[
            'editorOptions' => [
                'preset' => 'full',
                'inline' => false, 
            ],
        ]);
    ?>

    <?php
        echo $form->field($model, 'content')->widget(CKEditor::className(), [
          'editorOptions' => ElFinder::ckeditorOptions(['elfinder', 'path' => ''],[]),
        ]);
    ?>

     <?= $form->field($model, 'image')->fileInput() ?>

    <?= $form->field($model, 'status')->radioList([ '0' => 'Не активен ', '1' => ' Активен', ]) ?>

    <?= $form->field($model, 'created_at')->widget(DatePicker::classname(), [
        'language' => 'ru',
        'dateFormat' => 'dd.MM.yyyy',
    ]) ?>
    <?= $form->field($model, 'category_id')->dropDownList(ArrayHelper::map(Category::find()->all(), 'id', 'title')) ?>
    
    <br>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Создать' : 'Обновить', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
