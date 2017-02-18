<?php

use yii\db\Migration;

class m170210_124850_products extends Migration
{
    public function up()
    {
        $this->createTable('products', [
            'id' => $this->primaryKey(),
            'title' => $this->string()->notNull(),
            'content' => $this->text(),
            'price' => $this->integer(),
            'rating' => $this->integer(),
            'timestamp' => $this->integer(),
            'categories' => $this->integer(),
            'photo_goods' => $this->string(),

        ]);
    }

    public function down()
    {
        echo "m170210_124850_products cannot be reverted.\n";

        return false;
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
