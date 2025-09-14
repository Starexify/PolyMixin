import funkin.modding.module.ScriptedModule;

class InjectFuncTest extends ScriptedModule {
    private static var _instance:InjectFuncTest;
    public static var instance(get, set):InjectFuncTest;
    static function set_instance(value:InjectFuncTest):InjectFuncTest { return _instance = value; }
    static function get_instance():InjectFuncTest { return _instance; }

    public function new() {
        super("InjectFuncTest");
        InjectFuncTest.instance = this;
    }
}