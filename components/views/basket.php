<a href="/basket">
    В корзине
    <? if (\Yii::$app->session->has('basket'))
    {
        echo count(\Yii::$app->session->get('basket'));
    }
    else
    {
         echo "0";
    }
    ?> товар (а)</a>