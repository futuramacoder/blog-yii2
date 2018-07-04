<?php
namespace app\commands;

use Yii;
use yii\console\Controller;
use yii\base\InvalidParamException;

use app\models\User;
 
class RbacController extends Controller
{
	public function actionAssign($role, $username)
    {
        $user = User::find()->where(['username' => $username])->one();
        if (!$user) {
            throw new InvalidParamException("There is no user \"$username\".");
        }

        $auth = Yii::$app->authManager;
        $roleObject = $auth->getRole($role);
        if (!$roleObject) {
            throw new InvalidParamException("There is no role \"$role\".");
        }

        $auth->assign($roleObject, $user->id);
    }

	public function actionInit()
	{
		if (!$this->confirm("Are you sure? It will re-create permissions tree.")) {
            return self::EXIT_CODE_NORMAL;
        }

		$auth = Yii::$app->authManager;

		$auth->removeAll();

		$viewAdminPage = $auth->createPermission('viewAdminPage');
        $viewAdminPage->description = 'Просмотр админки';
        $auth->add($viewAdminPage);

		$managePosts = $auth->createPermission('managePosts');
        $managePosts->description = 'Менеджер постов';
        $auth->add($managePosts);

        $manageUsers = $auth->createPermission('manageUsers');
        $manageUsers->description = 'Менеджер пользователей';
        $auth->add($manageUsers);

        $moderator = $auth->createRole('moderator');
        $moderator->description = 'Модератор';
        $auth->add($moderator);
        $auth->addChild($moderator, $managePosts);
        $auth->addChild($moderator, $viewAdminPage);

        $admin = $auth->createRole('Admin');
        $admin->description = 'Admin';
        $auth->add($admin);
        $auth->addChild($admin, $moderator);
        $auth->addChild($admin, $manageUsers);
	}
}