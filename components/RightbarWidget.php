<?php
namespace app\components;

use yii\base\Widget;
use yii\helpers\Html;
use app\models\Blog;
use app\models\Category;

class RightbarWidget extends Widget 
{
    public function run()
    {
    	$parent_posts = Blog::find()->orderBy(['id' => SORT_DESC])->where(['status' => '1'])->limit(5)->all();
    	$categoryes = Category::find()->all();
        return $this->render('rightbar', compact('parent_posts', 'categoryes'));
    }
}

?>