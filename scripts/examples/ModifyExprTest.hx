import funkin.modding.module.ScriptedModule;
import funkin.modding.events.ScriptEvent.StateChangeScriptEvent;

class ModifyExprTest extends ScriptedModule {
    private static var _instance:ModifyExprTest;
    public static var instance(get, set):ModifyExprTest;
    static function set_instance(value:ModifyExprTest) { return _instance = value; }
    static function get_instance() { return _instance; }

    public function new() {
        super("ModifyReturnTest");
        ModifyExprTest.instance = this;
    }

    override public function onStateChangeEnd(event:StateChangeScriptEvent) {
        test();
    }

    public function test() {
        if (true) trace(true);
        if (false) trace(false);
        if (true) trace("true x2");
        if (true) trace("true x3");
    }
}