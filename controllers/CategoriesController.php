<?php

namespace app\controllers;
use app\models\Products;
//use yii\data\Pagination;


class CategoriesController extends \yii\web\Controller
{
    public function actionIndex($id=0)
    {
        $categorytovar = Products::find()->where(['categories' => $id]);
        $pages= new \yii\data\Pagination(['totalCount'=>  $categorytovar->count(),'pageSize'=>3, 'pageSizeParam' => false, 'forcePageParam'=>false ]);
        $categorytovar=$categorytovar->offset($pages->offset)->limit($pages->limit)-> all();

        return $this->render('index',compact('categorytovar','pages'));


    }

}


