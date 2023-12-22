# riverpod_hotreload bug

## Steps to Reproduce

1. Run flutter app.
2. Rename the `name` field for the User (e.g. rename to `name2`) [note: this parameter is explicitly
   used in the `MyHomePage` widget].

## Expected Results

The field is renamed both in the `User` class and in the `MyHomePage` widget.

## Observed Results

The field is renamed both in the `User` class and in the `MyHomePage` widget, but the app crashes with the following error (must hot restart to recover):

```

════════ Exception caught by widgets library ═══════════════════════════════════
The following _TypeError was thrown building MyHomePage(dirty, dependencies: [UncontrolledProviderScope, _InheritedTheme, _LocalizationsScope-[GlobalKey#a2a42]], state: _ConsumerState#5590b):
type 'Null' is not a subtype of type 'String' of 'function result'

The relevant error-causing widget was:
    MyHomePage MyHomePage:file:///Users/pattobrien/dev/exploring/riverpod_hotreload/lib/main.dart:26:19

When the exception was thrown, this was the stack:
#0      User.name (package:riverpod_hotreload/user.dart)
#1      MyHomePage.build.<anonymous closure> (package:riverpod_hotreload/main.dart:51:34)
main.dart:51
#2      MappedListIterable.elementAt (dart:_internal/iterable.dart:425:31)
iterable.dart:425
#3      ListIterable.join (dart:_internal/iterable.dart:159:25)
iterable.dart:159
#4      MyHomePage.build (package:riverpod_hotreload/main.dart:51:40)
main.dart:51
#5      _ConsumerState.build (package:flutter_riverpod/src/consumer.dart:479:19)
consumer.dart:479
#6      StatefulElement.build (package:flutter/src/widgets/framework.dart:5583:27)
framework.dart:5583
#7      ConsumerStatefulElement.build (package:flutter_riverpod/src/consumer.dart:542:20)
consumer.dart:542
#8      ComponentElement.performRebuild (package:flutter/src/widgets/framework.dart:5471:15)
framework.dart:5471
#9      StatefulElement.performRebuild (package:flutter/src/widgets/framework.dart:5634:11)
framework.dart:5634
#10     Element.rebuild (package:flutter/src/widgets/framework.dart:5187:7)
framework.dart:5187
#11     BuildOwner.buildScope (package:flutter/src/widgets/framework.dart:2895:19)
framework.dart:2895
#12     WidgetsBinding.drawFrame (package:flutter/src/widgets/binding.dart:984:21)
binding.dart:984
#13     RendererBinding._handlePersistentFrameCallback (package:flutter/src/rendering/binding.dart:457:5)
binding.dart:457
#14     SchedulerBinding._invokeFrameCallback (package:flutter/src/scheduler/binding.dart:1325:15)
binding.dart:1325
#15     SchedulerBinding.handleDrawFrame (package:flutter/src/scheduler/binding.dart:1255:9)
binding.dart:1255
#16     SchedulerBinding.scheduleWarmUpFrame.<anonymous closure> (package:flutter/src/scheduler/binding.dart:978:7)
binding.dart:978
#20     _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
(elided 3 frames from class _Timer and dart:async-patch)

════════════════════════════════════════════════════════════════════════════════
```
