<?php

namespace app\controllers;

use Yii;
use app\models\Article;
use app\models\Category;
use yii\data\Pagination;

class ArticleController extends AppController 
{
	public function actionIndex()
	{
		$articles = Article::find()->orderBy(['created_at' => SORT_DESC])->where(['status' => '1']);
		$categories = Category::getAll();
		$pagination = new Pagination([
			'defaultPageSize' => 12,
			'totalCount' => $articles->count()
		]);
		$articles = $articles->offset($pagination->offset)->limit($pagination->limit)->all();
		$this->setMeta('SiteName | Статьи');
		return $this->render('index', compact('articles', 'categories', 'pagination'));
	}

	public function actionView($id)
	{
		$articles = Article::findOne($id);
		$this->setMeta(' SiteName | ' . $article->title);
		return $this->render('view', compact('articles'));
	}
}