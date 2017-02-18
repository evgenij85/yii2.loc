<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "products".
 *
 * @property int $id
 * @property string $title
 * @property string $content
 * @property int $price
 * @property int $rating
 * @property int $timestamp
 * @property int $categories
 * @property string $photo_goods
 */
class Products extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'products';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title'], 'required'],
            [['content'], 'string'],
            [['price', 'rating', 'timestamp', 'categories'], 'integer'],
            [['title', 'photo_goods'], 'string', 'max' => 255],
            [['photo_goods'],'file', 'extensions'=>'jpg,phg'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'content' => 'Content',
            'price' => 'Price',
            'rating' => 'Rating',
            'timestamp' => 'Timestamp',
            'categories' => 'Categories',
            'photo_goods' => 'Photo Goods',
        ];
    }
}
