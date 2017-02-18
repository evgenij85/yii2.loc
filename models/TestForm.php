<?php

namespace app\models;

use Yii;
use yii\base\Model;

/**
 * ContactForm is the model behind the contact form.
 */
class TestForm extends Model
{
    public $name;
    public $email ;
    public $text;
  
 public function rules()
    {
        return [
            // name, email, subject and body are required
            [[ 'email', 'text'], 'required'],
              ['name', 'integer']
           
        ];
    }

}
