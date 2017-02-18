<?php

use yii\db\Migration;

class m170212_141104_user extends Migration
{
    public function up()
    {
        $this->createTable('user', [
            'id' => $this->primaryKey(),
            'last_name' => $this->string(),
            'first_name' => $this->string(),
            'username' => $this->string(),
            'password' => $this->string()->Null(),
            'authKey' => $this->string()->Null(),
            'accessToken' => $this->string()->Null(),

        ]);
    }


    public function down()
    {
        echo "m170212_141104_user cannot be reverted.\n";

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
