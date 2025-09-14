import funkin.modding.module.ScriptedModule;

class InjectionTest extends ScriptedModule {
    private static var _instance:InjectionTest;
    public static var instance(get, set):InjectionTest;
    static function set_instance(value:InjectionTest):InjectionTest { return _instance = value; }
    static function get_instance():InjectionTest { return _instance; }

    public function new() {
        super("InjectionTest");
        InjectionTest.instance = this;
    }

    public function test() {
        trace("test() called");
        doSmth();
        doSmth();
        doSmth();
        trace("test() called x2");
        return trace("Test Return");
    }
    function doSmth() {
        trace("doSmth() called");
    }
}