# PolyMixin

The runtime AST mixin **framework** for modifying scripted classes from other V-Slice mods.


## What is PolyMixin ?
PolyMixin is a runtime AST manipulation **framework and API** inspired by the mixin pattern used in projects like Sponge Mixin (Minecraft), that lets modders patch or extend scripted classes from other V-Slice mods without modifying their original scripts.
Using annotations or class names, modders can inject new behavior, override functions, or add fields dynamically — similar to Mixins in the Minecraft ecosystem.

Currently, PolyMixin supports mixing into the following scripted classes:
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
- Some transformations are applied later, because mixins may load before or after the base class (always check for PolyMixin and the original module’s availability before using it).
- lack of testing in actual mods use cases, so behavior may be unpredictable