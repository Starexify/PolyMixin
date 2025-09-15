import funkin.modding.module.ScriptedModule;

@:Mixin(Annotations)
class AnnotationsMixin extends ScriptedModule {
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