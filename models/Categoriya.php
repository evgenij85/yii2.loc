<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "categoriya".
 *
 * @property int $id
 * @property string $name
 * @property int $id_sub
 */
class Categoriya extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'categoriya';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'id_sub'], 'required'],
            [['id_sub'], 'integer'],
            [['name'], 'string', 'max' => 65],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'id_sub' => 'Id Sub',
        ];
    }
}
