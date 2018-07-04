<?php

namespace app\modules\admin\models;

use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;
use Yii;


/**
 * This is the model class for table "article".
 *
 * @property integer $id
 * @property string $title
 * @property string $content
 * @property integer $status
 * @property string $created_at
 * @property integer $category_id
 * @property double $price
 */
class Article extends \yii\db\ActiveRecord
{
    public $image;

    public function behaviors()
    {
        return [
            [
                'class' => TimestampBehavior::className(),
                'attributes' => [
                    ActiveRecord::EVENT_BEFORE_INSERT => ['created_at'],
                    ActiveRecord::EVENT_BEFORE_UPDATE => ['created_at'],
                ],
                // если вместо метки времени UNIX используется datetime:
                // 'value' => new Expression('NOW()'),
            ],
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ],
        ];
    }
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'article';
    }

    public function getCategory() 
    {
        return $this->hasOne(Category::className(), ['id' => 'category_id']);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'created_at'], 'required'],
            [['description', 'content'], 'string'],
            [['status', 'category_id'], 'integer'],
            [['created_at'], 'safe'],
            [['price'], 'number'],
            [['title'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Название',
            'description' => 'Описание',
            'content' => 'Текст и картинки',
            'status' => 'Статус',
            'created_at' => 'Дата создания',
            'category_id' => 'Категория',
            'price' => 'Цена',
        ];
    }

    public function upload()
    {
        if($this->validate())
        {
            $path = 'upload/store/' . $this->image->baseName . '.' . $this->image->extension;
            $this->image->saveAs($path);
            $this->attachImage($path, true);
            @unlink($path);
            return true;
        } else 
        {
            return false;
        }
    }
}
