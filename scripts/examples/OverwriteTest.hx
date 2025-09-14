import funkin.modding.module.ScriptedModule;

class OverwriteTest extends ScriptedModule {
    public static var _instance:OverwriteTest;
    public static var instance(get, set):OverwriteTest;
    static function set_instance(value:OverwriteTest):OverwriteTest { return _instance = value; }
    static function get_instance():OverwriteTest { return _instance; }

    public function new() {
        super("OverwriteTest");
        OverwriteTest.instance = this;
    }

    public function test() {
        trace("test() function called");
    }
}