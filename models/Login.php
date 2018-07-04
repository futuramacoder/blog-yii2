<?php

namespace app\models;

use Yii;
use yii\base\Model;

class Login extends Model
{
	public $username;
	public $password;
	public $rememberMe = true;

	public function rules()
	{
		return [
			[['username', 'password'], 'required'],
			['rememberMe', 'boolean'],
			['password', 'validatePassword'],
		];
	}

	public function attributeLabels(){
        return [
            'username' => 'Логин',
            'password' => 'Пароль',
            'rememberMe' => 'Запомнить',
        ];
    }

	public function validatePassword($attribute, $params)
	{
		if(!$this->hasErrors())
		{
			$user = $this->getUser();

			if(!$user || !$user->validatePassword($this->password))
			{
				$this->addError($attribute, 'Пароль или логин введены неверно!');
			}
		}
	}

	public function login()
    {
        if ($this->validate()) {
            if($this->rememberMe){
                $u = $this->getUser();
                $u->generateAuthKey();
                $u->save();
            }
            return Yii::$app->user->login($this->getUser(), $this->rememberMe ? 3600*24*30 : 0);
        }
        return false;
    }

	public function getUser()
	{
		return User::findOne(['username' => $this->username]);
	}

}