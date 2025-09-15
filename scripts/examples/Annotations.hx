import funkin.modding.module.ScriptedModule;
import funkin.modding.events.ScriptEvent;

class Annotations extends ScriptedModule {
    override public function onStateChangeBegin(event:StateChangeScriptEvent) {
        test();
        testTwo();
        testThree();
        //newTest();
    }

    public function new() {
        super("Annotations");
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