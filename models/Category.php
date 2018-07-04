<?php 

namespace app\models;
use yii\db\ActiveRecord;

class Category extends ActiveRecord 
{    
	public static function tableName() 
	{
		return 'category';
	}

	public function getBlog() 
	{
		return $this->hasMany(Blog::className(), ['category_id' => 'id']);
	}

	public function getArticle() 
	{
		return $this->hasMany(Article::className(), ['category_id' => 'id']);
	}

	public static function getAll()
    {
        return Category::find()->all();
    }
}