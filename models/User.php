<?php

namespace app\models;
use yii\web\IdentityInterface;
use yii\db\ActiveRecord;

class User extends ActiveRecord implements IdentityInterface
{
   public static function tableName() 
   {
        return 'user';
   }   

   public static function findIdentity($id)
   {
        return self::findOne($id);
   }

   public static function findIdentityByAccessToken($token, $type = null)
   {

   }

   public function getId() 
   {
        return $this->id;
   }

   public function getAuthKey() 
   {
      return $this->auth_key;
   }

   public function validateAuthKey($authKey)
   {
      return $this->auth_key === $authKey;
   }

   public function generateAuthKey()
   {
        $this->auth_key = \Yii::$app->security->generateRandomString();
    }

   // Валидация пароля
   public function setPassword($password)
   {
        $this->password = sha1($password);
   }

   public function validatePassword($password)
   {
        return $this->password === sha1($password);
   }
}
