<?php 

namespace app\models;
use yii\db\ActiveRecord;

class Blog extends ActiveRecord 
{
	public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

	public static function tableName() 
	{
		return 'blog';
	}

	public function getCategory() 
	{
		return $this->hasOne(Category::className(), ['id' => 'category_id']);
	}
}