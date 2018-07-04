<?php 
	use yii\widgets\ActiveForm;
?>

<?php 
	$form = ActiveForm::begin();
?>

<div class="login-container">
	<h1>Регистация</h1>
	<?= $form->field($model, 'name')->textInput(['class'=>'form-login-style']) ?>
	<?= $form->field($model, 'famale')->textInput(['class'=>'form-login-style']) ?>
	<?= $form->field($model, 'username')->textInput(['class'=>'form-login-style']) ?>
	<?= $form->field($model, 'email')->textInput(['class'=>'form-login-style']) ?>
	<?= $form->field($model, 'password')->passwordInput(['class'=>'form-login-style']) ?>
</div>

<div>
	<button type="submit" class="btn-primary">Регистация</button>
</div>

<?php 
	ActiveForm::end();
?>

