import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;

class ShenaniganOne extends ScriptedModule {
    /**
     * Calling a setter and static function crashes the game
     *
     * If `value` is changed to a diff name for the variable or argument it will work again
     */
    static var _instance:ShenaniganOne;
    public static var instance(get, set):ShenaniganOne;
    static function set_instance(value:ShenaniganOne):ShenaniganOne { return _instance = value; }
    static function get_instance():ShenaniganOne { return _instance; }

    public static function testFunc() {
        var value;
    }

    override public function onCreate(event:ScriptEvent) {
        testFunc();
        ShenaniganOne.instance = this;
    }
}