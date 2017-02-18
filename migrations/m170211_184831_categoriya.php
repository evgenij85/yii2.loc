<?php

use yii\db\Migration;

class m170211_184831_categoriya extends Migration
{
    public function up()
    {
        $this->createTable('categoriya', [
            'id' => $this->primaryKey(),
            'name' => $this->string()->notNull(),
            'id_sub' => $this->integer(),


        ]);
    }

    public function down()
    {
        echo "m170211_184831_categoriya cannot be reverted.\n";

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
