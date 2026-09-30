--!strict

export type StackAlloc<T> = {
	[number]: T,

	__size: number,
	__base: number,
	__end: number,

	clear: (self: StackAlloc<T>, first: number?, last: number?) -> (),
	unpack: (self: StackAlloc<T>, first: number?, last: number?) -> T...,
	pack: (self: StackAlloc<T>, first: number?, last: number?) -> { n: number, T },
	__len: (self: StackAlloc<T>) -> number,
}

declare function LPH_ENCSTR<T>(value: T): T
declare function LPH_ENCNUM<T>(value: T): T

declare function LPH_STRENC<T>(value: T): T
declare function LPH_NUMENC<T>(value: T): T

declare function LPH_ENCBUF(value: string): buffer
declare function LPH_BUFENC(value: string): buffer

declare function LPH_CRASH(): ()

declare function LPH_STACKALLOC<T>(
	size: number,
	base: number?
): StackAlloc<T>

declare function LPH_PRECHECK(check: () -> ()): ()

declare function LPH_REWRITE<T>(value: T): T


-- Attributes

declare function LPH_ATTRIBUTES(...: any): ()
declare function ENCRYPT(...: any): ()

declare function VM(...: any): ()
declare function PRESET(...: any): ()
declare function OPTIMIZE(...: any): ()
declare function NO_UPVALUES(...: any): ()
declare function ERROR_HANDLING(...: any): ()

declare function UNROLL(...: any): ()
declare function INLINE(...: any): ()

declare function TRANSFORM(...: any): ()


-- VM Options

declare function NONE(...: any): ()
declare function OPAL(...: any): ()
declare function ONYX(...: any): ()


-- PRESET Options

declare function FAST(...: any): ()
declare function BALANCED(...: any): ()
declare function SECURE(...: any): ()


-- TRANSFORM Options

declare function EXTRACT(...: any): ()
declare function CONTROL_FLOW(...: any): ()
declare function REWRITE_NAMECALLS(...: any): ()


-- EXTRACT Options

declare function GLOBALS(...: any): ()
declare function CONSTANTS(...: any): ()
