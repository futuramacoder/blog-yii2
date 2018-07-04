<?php

namespace app\controllers;

use Yii;
use app\models\Signup;
use app\models\Login;

class UserController extends AppController
{

    public function actionLogout()
    {
        Yii::$app->user->logout();
        return $this->goHome();
    }

    public function actionSignup()
    {
        $model = new Signup();
        if(isset($_POST['Signup']))
        {
            $model->attributes = Yii::$app->request->post('Signup');
            if($model->validate() && $model->signup())
            {
                return $this->goHome();
            }
        }
        $this->setMeta('SiteName | Регистрация');
        return $this->render('signup', compact('model'));
    }

    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }
        $login_model = new Login();
        if ($login_model->load(Yii::$app->request->post()) && $login_model->login()) {
            return $this->goBack();
        }
        
        $this->setMeta('SiteName | Вход');
        return $this->render('login', compact('login_model'));
    }
}
