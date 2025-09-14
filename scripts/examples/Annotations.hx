import funkin.modding.module.ScriptedModule;

class Annotations extends ScriptedModule {
    private static var _instance:Annotations;
    public static var instance(get, set):Annotations;
    static function set_instance(value:Annotations):Annotations { return _instance = value; }
    static function get_instance():Annotations { return _instance; }

    public function new() {
        super("Annotations");
        Annotations.instance = this;
    }

    public function test() {
        trace("test() called");
    }

    public function testTwo() {
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

    public function testThree() {
        return 20;
    }
}