<?php

namespace app\controllers;

use Yii;
use app\models\Blog;
use app\models\Category;
use yii\data\Pagination;

class BlogController extends AppController 
{
	public function actionIndex()
	{
		$posts = Blog::find()->orderBy(['created_at' => SORT_DESC])->where(['status' => '1']);
		$categories = Category::getAll();
		$pagination = new Pagination([
			'defaultPageSize' => 12,
			'totalCount' => $posts->count()
		]);
		$posts = $posts->offset($pagination->offset)->limit($pagination->limit)->all();
		$this->setMeta('SiteName | Блог');
		return $this->render('index', compact('posts', 'categories', 'pagination'));
	}

	public function actionView($id)
	{
		$posts = Blog::findOne($id);
		$this->setMeta(' SiteName | ' . $posts->title);
		return $this->render('view', compact('posts', 'categories'));
	}

	public function actionCategory($id)
	{
		$posts = Blog::find()->where(['category_id' => $id])->orderBy(['id' => SORT_DESC])->all();
		$categories = Category::findOne($id);
		$this->setMeta('SiteName | '. $categories->title);
		return $this->render('category', compact('posts', 'categories'));
	}

	public function actionSearch()
	{
		$q = trim(Yii::$app->request->get('q'));
		$this->setMeta('SiteName | '. $q);
		if(!$q)
		{
			return $this->render('search');
		}
		$posts = Blog::find()->where(['like', 'title', $q])->orderBy(['id' => SORT_DESC]);
		$pagination = new Pagination([
			'defaultPageSize' => 12,
			'totalCount' => $posts->count()
		]);
		$posts = $posts->offset($pagination->offset)->limit($pagination->limit)->all();
		return $this->render('search', compact('pagination', 'posts', 'q'));
	}
}