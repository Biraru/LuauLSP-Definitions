-- Luarmor Runtime & Build-Time Globals Definition File (.d.luau)
declare script_key: string?
declare function LRM_SEND_WEBHOOK<T>(urlConstant: string, webhookData: T): boolean
declare function LRM_SANITIZE<T>(value: T, pattern: string): string
declare function LPH_NO_VIRTUALIZE<T>(functionToCall: T): T
declare function LRM_INIT_SCRIPT<T>(functionToCall: T): nil

return nil