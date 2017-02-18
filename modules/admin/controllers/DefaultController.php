<?php

namespace app\modules\admin\controllers;

use Yii;
use yii\web\Controller;
use app\models\LoginForm;
use app\models\TestForm;
use app\components\Foo;
use yii\base\Event;
use yii\db\ActiveRecord;



/**
 * Default controller for the `admin` module
 */
class DefaultController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public $layout='main_admin.php';


    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionTest()
    {
     
       $model= new TestForm();
       if ($model->load(Yii::$app->request->post())){
             var_dump(Yii::$app->request->post());die;
       }

        return $this->render('test', compact('model'));
    }
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

}
