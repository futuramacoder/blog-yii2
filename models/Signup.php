<?php

namespace app\models;

use yii\base\Model;

class Signup extends Model
{
	public $name;
	public $famale;
	public $username;
	public $email;
	public $password;

	public function rules()
	{
		return [
			[['name', 'famale', 'username', 'password'], 'required'],
			['email', 'email'],
			['email', 'unique', 'targetClass' => 'app\models\User'],
			['username', 'unique', 'targetClass' => 'app\models\User'],
			['password', 'string', 'min' => 2, 'max' => 10]
		];
	}

	public function attributeLabels(){
        return [
        	'name' => 'Имя*',
        	'famale' => 'Фамилия*',
            'username' => 'Логин*',
            'email' => 'E-mail',
            'password' => 'Пароль*',
        ];
    }

	public function signup()
	{
		$user = new User();
		$user->name = $this->name;
		$user->famale = $this->famale;
		$user->username = $this->username;
		$user->email = $this->email;
		$user->setPassword($this->password);
		return $user->save();
	}
}