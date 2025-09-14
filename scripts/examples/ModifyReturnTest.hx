import funkin.modding.module.ScriptedModule;

class ModifyReturnTest extends ScriptedModule {
    private static var _instance:ModifyReturnTest;
    public static var instance(get, set):ModifyReturnTest;
    static function set_instance(value:ModifyReturnTest):ModifyReturnTest { return _instance = value; }
    static function get_instance():ModifyReturnTest { return _instance; }

    public function new() {
        super("ModifyReturnTest");
        ModifyReturnTest.instance = this;
    }

    public function test() {
        return 20;
    }
}