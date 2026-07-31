-- sUNC (Standardized Universal Naming Convention) Complete Type Definitions

-- ============================================================================
-- Environment & Globals
-- ============================================================================
declare function getgenv(): { [string]: any }
declare function getrenv(): { [string]: any }
declare function getreg(): { [string]: any }
declare function getgc(includeTables: boolean?): { any }
declare function getloadedmodules(): { ModuleScript }
declare function getconnections(signal: RBXScriptSignal): { [number]: any }
declare function gethiddenproperty(object: Instance, property: string): (any, boolean)
declare function sethiddenproperty(object: Instance, property: string, value: any): boolean
declare function setsimulationradius(radius: number, maxRadius: number?): ()

-- ============================================================================
-- Instances
-- ============================================================================
declare function fireproximityprompt(prompt: ProximityPrompt): ()
declare function gethui(): BasePlayerGui | Folder
declare function firetouchinterest(part1: BasePart, part2: BasePart, toggle: boolean | number): ()
declare function compareinstances(object1: Instance, object2: Instance): boolean
declare function cloneref<T>(object: T & Instance): T
declare function getcallbackvalue(object: Instance, property: string): any | nil
declare function getnilinstances(): { Instance }
declare function getinstances(): { Instance }
declare function fireclickdetector(detector: ClickDetector, distance: number?, event: string?): ()

-- ============================================================================
-- Filesystem
-- ============================================================================
declare function delfolder(path: string): ()
declare function readfile(path: string): string
declare function getcustomasset(path: string): string
declare function isfile(path: string): boolean
declare function delfile(path: string): ()
declare function makefolder(path: string): ()
declare function appendfile(path: string, contents: string): ()
declare function loadfile<A...>(path: string): ((A...) -> any | nil, string?)
declare function isfolder(path: string): boolean
declare function listfiles(path: string): { string }
declare function writefile(path: string, data: string): ()

-- ============================================================================
-- Closures
-- ============================================================================
declare function restorefunction(functionToRestore: (...any) -> (...any)): ()
declare function isexecutorclosure(func: (...any) -> (...any)): boolean
declare function checkclosure(func: (...any) -> (...any)): boolean
declare function getfunctionhash(functionToHash: (...any) -> (...any)): string
declare function hookfunction<A1..., R1..., A2..., R2...>(functionToHook: (A1...) -> R1..., hook: (A2...) -> R2...): (A1...) -> R1...
declare function iscclosure(func: (...any) -> (...any)): boolean
declare function checkcaller(): boolean
declare function islclosure(func: (...any) -> (...any)): boolean
declare function hookmetamethod(object: { [any]: any } | Instance | any, metamethodName: string, hook: (...any) -> (...any)): (...any) -> (...any)
declare function loadstring<A...>(source: string, chunkname: string?): (((A...) -> any) | nil, string?)
declare function newcclosure<A..., R...>(functionToWrap: (A...) -> R...): (A...) -> R...
declare function clonefunction<A..., R...>(functionToClone: (A...) -> R...): (A...) -> R...

-- ============================================================================
-- Metatable Library
-- ============================================================================
declare function isreadonly(table: { [any]: any }): boolean
declare function setreadonly(table: { [any]: any }, readonly: boolean): ()
declare function getrawmetatable(object: { [any]: any } | Instance | any): { [string]: any }?
declare function setrawmetatable(object: { [any]: any } | Instance | any, metatable: { [string]: any }): boolean
declare function setuntouched(table: { [any]: any }): ()
declare function isuntouched(table: { [any]: any }): boolean

-- ============================================================================
-- Debug Library Globals
-- ============================================================================
declare debug: {
	-- Standard Luau Debug Functions
	traceback: ((message: string?, level: number?) -> string) & ((thread: thread, message: string?, level: number?) -> string),
	profilebegin: (label: string) -> (),
	profileend: () -> (),
	info: ((func: ((...any) -> (...any)) | number, options: string) -> ...any),

	-- sUNC Extended Debug Functions
	getconstant: (func: ((...any) -> (...any)) | number, index: number) -> (number | string | boolean | nil),
	setupvalue: (func: ((...any) -> (...any)) | number, index: number, value: any) -> (),
	getstack: (level: number, index: number?) -> (any | { any }),
	setconstant: (func: ((...any) -> (...any)) | number, index: number, value: number | string | boolean | nil) -> (),
	getconstants: (func: ((...any) -> (...any)) | number) -> { number | string | boolean | nil },
	setstack: (level: number, index: number, value: any) -> (),
	getupvalues: (func: ((...any) -> (...any)) | number) -> { any },
	getprotos: (func: ((...any) -> (...any)) | number) -> { (...any) -> (...any) },
	getupvalue: (func: ((...any) -> (...any)) | number, index: number) -> any,
	getproto: (func: ((...any) -> (...any)) | number, index: number, activated: boolean?) -> (((...any) -> (...any)) | { (...any) -> (...any) }),
	getinfo: (func: ((...any) -> (...any)) | number) -> { [string]: any },
}

-- ============================================================================
-- Encoding & Cryptography
-- ============================================================================
declare function lz4decompress(data: string): string
declare function lz4compress(data: string): string
declare function base64decode(data: string): string
declare function base64encode(data: string): string

declare crypt: {
	base64encode: (data: string) -> string,
	base64decode: (data: string) -> string,
	encrypt: (data: string, key: string, iv: string?, mode: string?) -> (string, string),
	decrypt: (data: string, key: string, iv: string, mode: string?) -> string,
	generatebytes: (size: number) -> string,
	generatekey: () -> string,
	hash: (data: string, algorithm: string) -> string,
}

-- ============================================================================
-- Scripts
-- ============================================================================
declare function getscripthash(script: BaseScript | ModuleScript): string | nil
declare function getscriptfromthread(thread: thread): BaseScript | ModuleScript | nil
declare function getscriptclosure(script: BaseScript | ModuleScript): ((...any) -> (...any)) | nil
declare function getrunningscripts(): { BaseScript | ModuleScript }
declare function getscripts(): { BaseScript | ModuleScript }
declare function getsenv(script: BaseScript | ModuleScript): { [any]: any } | nil
declare function getscriptbytecode(script: BaseScript | ModuleScript): string | nil
declare function getcallingscript(): BaseScript | ModuleScript | nil

-- ============================================================================
-- Network & Miscellaneous Utilities
-- ============================================================================
declare function request(options: {
	Url: string,
	Method: string?,
	Headers: { [string]: string }?,
	Body: string?,
}): {
	Success: boolean,
	StatusCode: number,
	StatusMessage: string,
	Headers: { [string]: string },
	Body: string,
}

declare function http_request(options: { [string]: any }): { [string]: any }
declare function setclipboard(text: string): ()
declare function toclipboard(text: string): ()
declare function identifyexecutor(): (string, string)
declare function getexecutorname(): (string, string)
declare function queue_on_teleport(code: string): ()
declare function queueonteleport(code: string): ()
declare function clearconsole(): ()
declare function rconsoleprint(text: string): ()
declare function rconsoleinfo(text: string): ()
declare function rconsolewarn(text: string): ()
declare function rconsoleerr(text: string): ()
declare function rconsolename(title: string): ()
declare function iswindowactive(): boolean
declare function mouse1click(x: number?, y: number?): ()
declare function mouse1press(x: number?, y: number?): ()
declare function mouse1release(x: number?, y: number?): ()
declare function mouse2click(x: number?, y: number?): ()
declare function keypress(keycode: number): ()
declare function keyrelease(keycode: number): ()