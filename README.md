# PolyMixin

The AST manipulation library for modifying scripted classes from other V-Slice mods.

## What is PolyMixin ?
PolyMixin lets you manipulate the **AST** *(Abstract Syntax Tree)* of a scripted class at runtime without changing the original script of the class. 
This allows modders to patch or extend the functionality of other mods dynamically while keeping the base script intact.

Currently, modders can mixin into the following scripted classes via annotations or class name as a string:
- `ScriptedModules`
- `ScriptedSong`
- `ScriptedLevel`
- `ScriptedNoteStyle`
- `ScriptedPlayer`
- `ScriptedConversation`
- `ScriptedDialogueBox`
- `ScriptedSpeaker`
- `ScriptedAlbum`
- `ScriptedStage`
- `ScriptedSticker`
- `ScriptedFreeplayStyle`
- `ScriptedSongEvent`
- `ScriptedNoteKind`

> Note: As long as you have an instance of the scripted class, you can modify it at any time.

## How does it work ?
PolyMixin hooks into Polymod's scripting system by using the `PolymodScriptClass`(`_abs`) and modifying the `_cachedFunctionDecls` and `_cachedFieldDecls`. 
It replaces or transforms the function declarations (`FunctionDecl`) using the function declaration from another class, which is also a `PolymodScriptClass`.

Think of it as *"hot-swapping"* functions at the AST level.

## Limitations
Currently, there are some limitations:
- some transformations are applied later, because mixins may load before or after the base class (meaning you should always check for PolyMixin and the original module's availability before using it)
- lack of testing in actual mods use cases, so behavior may be unpredictable