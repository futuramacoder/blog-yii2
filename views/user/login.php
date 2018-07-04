<?php 
	use yii\widgets\ActiveForm;
?>

<?php 
	$form = ActiveForm::begin();
?>

<div class="login-container">
	<h1>Вход</h1>
	<?= $form->field($login_model, 'username')->textInput(['class'=>'form-login-style']) ?>
	<?= $form->field($login_model, 'password')->passwordInput(['class'=>'form-login-style']) ?>
	<?= $form->field($login_model, 'rememberMe')->checkbox() ?>
</div>

<div>
	<button type="submit" class="btn-primary">Вход</button>
</div>

<?php 
	ActiveForm::end();
?>