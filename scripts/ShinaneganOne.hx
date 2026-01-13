import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;

class ShinaneganOne extends ScriptedModule {
    /**
     * Calling a setter and static function crashes the game
     *
     * If `value` is changed to a diff name for the variable or argument it will work again
     */
    static var _instance:ShinaneganOne;
    public static var instance(get, set):ShinaneganOne;
    static function set_instance(value:ShinaneganOne):ShinaneganOne { return _instance = value; }
    static function get_instance():ShinaneganOne { return _instance; }

    public static function testFunc() {
        var value;
    }

    override public function onCreate(event:ScriptEvent) {
        testFunc();
        ShinaneganOne.instance = this;
    }
}