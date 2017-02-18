<?php

use yii\db\Migration;

class m170210_141943_orders extends Migration
{
    public function up()
    {
        $this->createTable('orders', [
            'id' => $this->primaryKey(),
            'name' => $this->string()->notNull(),
            'phone' => $this->integer(),
            'mail' => $this->string(),
            'product' => $this->integer(),
            'order_price' => $this->integer(),
            'data' => $this->integer(),

        ]);
    }

    public function down()
    {
        echo "m170210_141943_orders cannot be reverted.\n";

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
