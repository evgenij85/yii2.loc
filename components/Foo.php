<?php 
namespace app\components;

use yii\base\Component;
use yii\base\Event;

class Foo extends Component
{
    const EVENT_HELLO = 'hello';

    public function bar()
    {
        $this->trigger(self::EVENT_HELLO);
    }
    
    public function test(){
    	echo "ffff";
    	//Event::trigger(Foo::className(), Foo::EVENT_HELLO);
    }
}

