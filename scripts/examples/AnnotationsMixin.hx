import funkin.modding.events.ScriptEvent;
import funkin.modding.module.ScriptedModule;

class AnnotationsMixin extends ScriptedModule {
    var injected:Bool = false;

    override public function onStateChangeBegin(event:StateChangeScriptEvent) {
        Annotations.instance.test();
        Annotations.instance.testTwo();
        Annotations.instance.testThree();
        Annotations.instance.newTest();
    }

    override public function onUpdate(event:UpdateScriptEvent) {
        if (injected) return;
        injected = MixinAnnotationProcessor.applyMixins(this, Annotations.instance);
    }

    @:Overwrite(method = "test")
    function testOverwrite() {
        trace("Overwrote test()");
    }


    @:Inject(method = "testTwo", at = "INVOKE", target = "doSmth", ordinal = 2)
    function testInject() {
        trace("Injected into testTwo()");
    }


    @:ModifyReturn(method = "testThree", call = "testReturnCall")
    function testReturn(original:Int) {
        return trace(original + 10);
    }

    function testReturnCall(original:Int) {
        testReturn(original);
    }


    @:InjectFunction
    function newTest() {
        trace("New Test injected into class");
    }
}